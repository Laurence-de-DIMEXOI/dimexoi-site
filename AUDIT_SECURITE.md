# Audit de Sécurité — dimexoi-site

**Date :** 13 mars 2026
**Périmètre :** Site Next.js 14 (App Router), hébergé sur Vercel
**Auditeur :** Claude (audit automatisé du code source)

---

## 1. Résumé exécutif

Le site Dimexoi est un site vitrine/catalogue sans authentification utilisateur ni paiement en ligne, ce qui réduit considérablement la surface d'attaque. Cependant, plusieurs vulnérabilités et manques de bonnes pratiques ont été identifiés, principalement autour des API routes, des en-têtes HTTP et de la validation des données.

**Score global : 6.5/10** — Bon pour un site vitrine, mais des améliorations importantes sont nécessaires.

| Niveau | Nombre | Détails |
|--------|--------|---------|
| Critique | 1 | Absence de rate limiting sur les API |
| Élevé | 3 | Pas de headers de sécurité, pas de validation serveur, CRM URL exposée |
| Moyen | 4 | Pas de CSP, pas de CSRF, dépendances potentiellement obsolètes, webhook sans auth |
| Faible | 3 | Source maps en dev, console logs, meta pixel ID en dur |

---

## 2. Vulnérabilités identifiées

### 2.1 CRITIQUE — Absence de Rate Limiting sur les API

**Fichiers concernés :** `src/app/api/devis/route.ts`, `src/app/api/contact/route.ts`, `src/app/api/newsletter/route.ts`

**Problème :** Les 3 routes API POST n'ont aucune protection contre les abus. Un attaquant peut envoyer des milliers de requêtes pour :
- Spammer le CRM Kokpit avec de faux leads
- Saturer la base de données CRM
- Consommer les quotas Vercel (serverless function invocations)

**Impact :** Spam massif, coûts Vercel, pollution des données CRM.

**Recommandation :**
```typescript
// Installer: npm install @upstash/ratelimit @upstash/redis
import { Ratelimit } from "@upstash/ratelimit";
import { Redis } from "@upstash/redis";

const ratelimit = new Ratelimit({
  redis: Redis.fromEnv(),
  limiter: Ratelimit.slidingWindow(5, "60 s"), // 5 requêtes par minute
});

// Dans chaque route API :
const ip = request.headers.get("x-forwarded-for") ?? "unknown";
const { success } = await ratelimit.limit(ip);
if (!success) {
  return NextResponse.json({ error: "Trop de requêtes" }, { status: 429 });
}
```

---

### 2.2 ÉLEVÉ — Absence de Headers de Sécurité HTTP

**Fichier concerné :** Aucun `middleware.ts` ni configuration de headers dans `next.config.js`

**Problème :** Le site ne définit aucun header de sécurité HTTP. Il manque :
- `Strict-Transport-Security` (HSTS) — Force HTTPS
- `X-Content-Type-Options` — Empêche le MIME sniffing
- `X-Frame-Options` — Protège contre le clickjacking
- `X-XSS-Protection` — Protection XSS basique
- `Referrer-Policy` — Contrôle les infos envoyées au referrer
- `Permissions-Policy` — Restreint l'accès aux APIs du navigateur

**Impact :** Vulnérable au clickjacking, MIME sniffing, et manque de best practices.

**Recommandation :** Créer `src/middleware.ts` :
```typescript
import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

export function middleware(request: NextRequest) {
  const response = NextResponse.next();

  response.headers.set('X-Content-Type-Options', 'nosniff');
  response.headers.set('X-Frame-Options', 'DENY');
  response.headers.set('X-XSS-Protection', '1; mode=block');
  response.headers.set('Referrer-Policy', 'strict-origin-when-cross-origin');
  response.headers.set('Permissions-Policy', 'camera=(), microphone=(), geolocation=()');
  response.headers.set(
    'Strict-Transport-Security',
    'max-age=31536000; includeSubDomains; preload'
  );

  return response;
}
```

---

### 2.3 ÉLEVÉ — Absence de Validation Serveur sur les Formulaires

**Fichiers concernés :** `src/app/api/devis/route.ts`, `src/app/api/contact/route.ts`, `src/app/api/newsletter/route.ts`

**Problème :** Les routes API font un simple `request.json()` et transmettent les données au CRM sans validation. Aucune vérification de :
- Format email valide
- Longueur des champs (nom, message)
- Types de données attendus
- Champs obligatoires côté serveur
- Sanitization des entrées (protection XSS stocké dans le CRM)

**Impact :** Injection de données malveillantes dans le CRM, XSS stocké potentiel.

**Recommandation :**
```typescript
// Installer: npm install zod
import { z } from 'zod';

const contactSchema = z.object({
  name: z.string().min(2).max(100).trim(),
  email: z.string().email().max(255),
  phone: z.string().regex(/^[\d\s+()-]{6,20}$/).optional(),
  message: z.string().min(10).max(5000).trim(),
  consentRGPD: z.boolean().refine(v => v === true),
});

// Dans la route :
const parsed = contactSchema.safeParse(body);
if (!parsed.success) {
  return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
}
```

---

### 2.4 ÉLEVÉ — URL du CRM Exposée Publiquement

**Fichier concerné :** `.env.local`
```
NEXT_PUBLIC_CRM_URL=https://kokpit-kappa.vercel.app/
```

**Problème :** Le préfixe `NEXT_PUBLIC_` expose cette variable dans le bundle JavaScript côté client. N'importe qui peut voir l'URL du CRM et potentiellement :
- Envoyer des requêtes directement au CRM
- Tenter des attaques sur l'API Kokpit

**Recommandation :** Renommer en `CRM_URL` (sans le préfixe `NEXT_PUBLIC_`) car cette variable n'est utilisée que dans les API routes côté serveur.

---

### 2.5 MOYEN — Absence de Content Security Policy (CSP)

**Problème :** Pas de header CSP défini. Le site charge des scripts externes (GTM, Meta Pixel) sans restriction, ce qui le rend vulnérable aux injections de scripts tiers.

**Recommandation :** Ajouter dans le middleware :
```typescript
response.headers.set(
  'Content-Security-Policy',
  "default-src 'self'; " +
  "script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.googletagmanager.com https://connect.facebook.net; " +
  "style-src 'self' 'unsafe-inline' https://fonts.googleapis.com; " +
  "img-src 'self' data: https://images.unsplash.com https://lh3.googleusercontent.com https://www.facebook.com; " +
  "font-src 'self' https://fonts.gstatic.com; " +
  "connect-src 'self' https://www.google-analytics.com https://www.facebook.com; " +
  "frame-src https://www.google.com/maps;"
);
```

---

### 2.6 MOYEN — Webhooks Sans Authentification

**Fichiers concernés :** `src/app/api/webhooks/demande/route.ts`, `src/app/api/webhooks/newsletter/route.ts`

**Problème :** Les endpoints webhook n'ont aucune vérification d'identité de l'appelant. N'importe qui connaissant l'URL peut envoyer des données.

**Recommandation :** Implémenter une vérification par signature HMAC :
```typescript
const signature = request.headers.get('x-webhook-signature');
const expectedSignature = crypto
  .createHmac('sha256', process.env.WEBHOOK_SECRET!)
  .update(JSON.stringify(body))
  .digest('hex');

if (signature !== expectedSignature) {
  return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
}
```

---

### 2.7 MOYEN — Pas de Protection CSRF

**Problème :** Les formulaires POST ne sont pas protégés contre les attaques CSRF (Cross-Site Request Forgery). Un site malveillant pourrait soumettre des formulaires au nom d'un visiteur.

**Recommandation :** Bien que le risque soit faible (pas de session utilisateur), ajouter une vérification de l'origin :
```typescript
const origin = request.headers.get('origin');
const allowedOrigins = ['https://www.dimexoi.fr', 'https://dimexoi.fr'];
if (!origin || !allowedOrigins.includes(origin)) {
  return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
}
```

---

### 2.8 MOYEN — Next.js 14.2.0 Potentiellement Obsolète

**Fichier :** `package.json` → `"next": "14.2.0"`

**Problème :** Next.js 14.2.0 date de début 2024. Des correctifs de sécurité ont été publiés depuis. La version actuelle est 15.x.

**Recommandation :** Mettre à jour vers la dernière version 14.x stable ou migrer vers 15.x :
```bash
npm update next@latest
```

---

### 2.9 FAIBLE — IDs de Tracking en Dur dans le Code

**Fichiers :** `GoogleTagManager.tsx`, `MetaPixel.tsx`

**Problème :** Les IDs GTM (`GTM-MZ7DQBL`) et Meta Pixel (`34647261824865095`) sont codés en dur dans les composants au lieu d'être dans des variables d'environnement.

**Recommandation :** Déplacer vers `.env.local` :
```
NEXT_PUBLIC_GTM_ID=GTM-MZ7DQBL
NEXT_PUBLIC_META_PIXEL_ID=34647261824865095
```

---

### 2.10 FAIBLE — Images Hébergées sur Google Drive

**Problème :** Les images produits utilisent des liens Google Drive (`lh3.googleusercontent.com`). Google peut à tout moment modifier les politiques d'accès, changer les URLs, ou limiter la bande passante, ce qui casserait toutes les images du catalogue.

**Recommandation :** Migrer les images vers un CDN dédié (Cloudinary, Vercel Blob, ou le dossier `public/` de Next.js).

---

## 3. Points Positifs

- Aucune donnée sensible (mots de passe, clés API privées) dans le code source
- Consentement RGPD correctement implémenté (GTM Consent Mode v2)
- Aucune authentification utilisateur = surface d'attaque réduite
- Pas de base de données directe = pas de risque d'injection SQL
- HTTPS forcé par Vercel
- Données statiques en JSON = pas de fuite de données possible
- TypeScript strict mode activé

---

## 4. Plan d'Action Recommandé

| Priorité | Action | Effort | Impact |
|----------|--------|--------|--------|
| 1 | Ajouter rate limiting (Upstash) | 2h | Critique |
| 2 | Créer middleware.ts avec headers de sécurité | 1h | Élevé |
| 3 | Ajouter validation Zod sur les API routes | 3h | Élevé |
| 4 | Renommer NEXT_PUBLIC_CRM_URL → CRM_URL | 15min | Élevé |
| 5 | Ajouter CSP header | 2h | Moyen |
| 6 | Sécuriser les webhooks (HMAC) | 2h | Moyen |
| 7 | Ajouter vérification d'origin (CSRF) | 1h | Moyen |
| 8 | Mettre à jour Next.js | 1h | Moyen |
| 9 | Externaliser IDs tracking en env vars | 30min | Faible |
| 10 | Migrer images hors de Google Drive | 4h+ | Faible |

**Temps total estimé : ~16h de développement**
