# Spécifications Techniques — dimexoi-site

**Date :** 13 mars 2026
**Version du site :** 1.0
**URL de production :** dimexoi.fr (hébergé sur Vercel)

---

## 1. Vue d'Ensemble

Dimexoi est un site vitrine/catalogue pour une entreprise de meubles en bois exotique basée à La Réunion (974). Le site permet de consulter un catalogue de ~200 produits, de constituer un panier de devis, et de soumettre des demandes via des formulaires connectés à un CRM externe.

---

## 2. Stack Technique

| Composant | Technologie | Version |
|-----------|-------------|---------|
| **Framework** | Next.js (App Router) | 14.2.0 |
| **UI Library** | React | 18.x |
| **Langage** | TypeScript | 5.x |
| **Styling** | Tailwind CSS | 3.4.x |
| **CSS Processing** | PostCSS + Autoprefixer | 8.x / 10.x |
| **Hébergement** | Vercel | — |
| **CRM** | Kokpit | Instance Vercel |
| **Analytics** | Google Tag Manager | GTM-MZ7DQBL |
| **Ads Tracking** | Meta Pixel | 34647261824865095 |
| **Images** | Google Drive + Unsplash | — |
| **Maps** | Google Maps Embed | iframe |
| **Fonts** | Google Fonts | Playfair Display, Inter |

---

## 3. Architecture du Projet

```
dimexoi-site/
├── src/
│   ├── app/                    # Next.js App Router (pages + API)
│   │   ├── page.tsx            # Homepage
│   │   ├── layout.tsx          # Layout racine (providers, analytics)
│   │   ├── globals.css         # Styles globaux + animations
│   │   ├── robots.ts           # Génération robots.txt
│   │   ├── sitemap.ts          # Génération sitemap.xml
│   │   ├── not-found.tsx       # Page 404
│   │   ├── api/                # Routes API serverless
│   │   ├── catalogue/          # Catalogue + fiches produits
│   │   ├── collections/        # Page collections
│   │   ├── blog/               # Blog + articles
│   │   ├── contact/            # Page contact
│   │   ├── devis/              # Demande de devis
│   │   ├── a-propos/           # À propos
│   │   ├── mentions-legales/   # Mentions légales
│   │   ├── confidentialite/    # Politique de confidentialité
│   │   └── cgu/                # CGU
│   ├── components/             # 15 composants React
│   ├── lib/                    # Fonctions utilitaires
│   └── data/                   # Données statiques JSON
├── public/                     # Assets statiques
├── next.config.js              # Configuration Next.js
├── tailwind.config.ts          # Configuration Tailwind
├── tsconfig.json               # Configuration TypeScript
└── .env.local                  # Variables d'environnement
```

---

## 4. Routes & Pages

### 4.1 Pages Publiques

| Route | Fichier | Type | Description |
|-------|---------|------|-------------|
| `/` | `app/page.tsx` | SSG | Homepage avec hero, catégories, produits vedettes, confiance |
| `/catalogue` | `app/catalogue/page.tsx` | SSG | Catalogue avec filtres (catégorie, sous-catégorie, collection, recherche) |
| `/catalogue/[slug]` | `app/catalogue/[slug]/page.tsx` | SSG dynamique | Fiche produit détaillée avec galerie, dimensions, devis |
| `/collections` | `app/collections/page.tsx` | SSG | Liste des collections de meubles |
| `/blog` | `app/blog/page.tsx` | SSG | Liste des articles de blog |
| `/blog/[slug]` | `app/blog/[slug]/page.tsx` | SSG dynamique | Article complet avec table des matières |
| `/contact` | `app/contact/page.tsx` | SSG | Formulaire de contact + infos showrooms + maps |
| `/devis` | `app/devis/page.tsx` | SSG | Formulaire de demande de devis avec panier |
| `/a-propos` | `app/a-propos/page.tsx` | SSG | Histoire, valeurs, équipe, chiffres |
| `/mentions-legales` | `app/mentions-legales/page.tsx` | SSG | Mentions légales |
| `/confidentialite` | `app/confidentialite/page.tsx` | SSG | Politique de confidentialité RGPD |
| `/cgu` | `app/cgu/page.tsx` | SSG | Conditions générales d'utilisation |

### 4.2 Routes API (Serverless Functions)

| Route | Méthode | Description | Destination |
|-------|---------|-------------|-------------|
| `/api/devis` | POST | Soumet une demande de devis | Kokpit `/api/submissions` (type: devis) |
| `/api/contact` | POST | Soumet un message de contact | Kokpit `/api/submissions` (type: contact) |
| `/api/newsletter` | POST | Inscrit à la newsletter | Kokpit `/api/submissions` (type: newsletter) |
| `/api/webhooks/demande` | POST | Reçoit un webhook de Kokpit (devis) | Traitement interne |
| `/api/webhooks/newsletter` | POST | Reçoit un webhook de Kokpit (newsletter) | Traitement interne |

### 4.3 Fichiers SEO Générés

| URL | Fichier | Description |
|-----|---------|-------------|
| `/robots.txt` | `app/robots.ts` | Règles d'indexation moteurs de recherche |
| `/sitemap.xml` | `app/sitemap.ts` | Plan du site pour Google/Bing |

---

## 5. Composants

### 5.1 Layout & Navigation

| Composant | Type | Description |
|-----------|------|-------------|
| `Header.tsx` | Client | Navigation sticky, menu burger mobile, barre de recherche, panier devis |
| `Footer.tsx` | Client | Infos showrooms, newsletter, réseaux sociaux, liens légaux |
| `Breadcrumb.tsx` | Server | Fil d'Ariane pour la navigation |
| `WhatsAppButton.tsx` | Client | Bouton flottant WhatsApp (coin bas droit) |

### 5.2 Produits & Catalogue

| Composant | Type | Description |
|-----------|------|-------------|
| `ProductCard.tsx` | Server | Carte produit pour les grilles (image, nom, catégorie, CTA) |
| `CategoryCard.tsx` | Server | Carte catégorie avec image et compteur |
| `ImageGallery.tsx` | Client | Galerie d'images produit avec vignettes et zoom |
| `AddToDevisButton.tsx` | Client | Bouton "Ajouter au devis" avec sélection de finition |

### 5.3 Devis

| Composant | Type | Description |
|-----------|------|-------------|
| `DevisCartProvider.tsx` | Client | Context React pour l'état global du panier devis (localStorage) |
| `DevisCartDrawer.tsx` | Client | Panneau latéral glissant avec le récapitulatif du panier |
| `QuoteForm.tsx` | Client | Formulaire de demande de devis complet |

### 5.4 Formulaires

| Composant | Type | Description |
|-----------|------|-------------|
| `ContactForm.tsx` | Client | Formulaire de contact avec validation et consent RGPD |

### 5.5 Analytics & RGPD

| Composant | Type | Description |
|-----------|------|-------------|
| `GoogleTagManager.tsx` | Client | GTM avec Consent Mode v2 |
| `MetaPixel.tsx` | Client | Facebook Pixel pour le suivi publicitaire |
| `GoogleAnalytics.tsx` | Client | GA4 (via GTM) |
| `CookieConsent.tsx` | Client | Bannière RGPD accepter/refuser cookies |
| `UtmCapture.tsx` | Client | Capture des paramètres UTM (sessionStorage) |

### 5.6 SEO & Blog

| Composant | Type | Description |
|-----------|------|-------------|
| `SchemaOrg.tsx` | Server | Données structurées JSON-LD (FurnitureStore, LocalBusiness) |
| `TableOfContents.tsx` | Client | Table des matières automatique pour les articles de blog |

---

## 6. Modèles de Données

### 6.1 Product

```typescript
interface Product {
  id: number;
  name: string;              // "Meuble vasque ASMARA"
  slug: string;              // "meuble-vasque-asmara"
  category: Category;        // Enum : Chambre, Salon, Salle à manger, etc.
  subcategory: string;       // "Meuble vasque", "Table basse", etc.
  attributes: string;        // "Teck massif recyclé"
  dimensions: string;        // "L140 x P55 x H80 cm"
  images: string[];          // URLs Google Drive
  description: string;       // Description HTML du produit
  collection: string;        // "Collection Asmara", "Collection Bali"
}

type Category =
  | "Chambre"
  | "Salon"
  | "Salle à manger"
  | "Entrée"
  | "Salle de bains"
  | "Extérieur"
  | "Sur-mesure";
```

**Finitions disponibles** (hardcodé dans DevisCartProvider) :
- Miel
- Brut
- Cérusé blanc
- Cérusé noir
- Antique

### 6.2 Blog Article

```typescript
interface BlogArticle {
  slug: string;
  title: string;
  excerpt: string;
  content: string;          // HTML
  image: string;            // URL image principale
  category: string;
  tags: string[];
  author: string;
  publishedAt: string;      // ISO date
  updatedAt?: string;
  readingTime: number;      // minutes
  metaTitle: string;
  metaDescription: string;
}
```

### 6.3 Devis Cart Item

```typescript
interface DevisCartItem {
  slug: string;
  name: string;
  category: string;
  subcategory: string;
  image: string;
  finish: string;           // Finition choisie
  quantity: number;
}
```

### 6.4 Form Submission (envoyé au CRM)

```typescript
interface DevisSubmission {
  type: "devis";
  name: string;
  email: string;
  phone: string;
  address?: string;
  message?: string;
  products: DevisCartItem[];
  source: string;           // UTM source
  utm: UTMParams;
  consentRGPD: boolean;
  newsletter: boolean;
  createdAt: string;        // ISO date
}

interface ContactSubmission {
  type: "contact";
  name: string;
  email: string;
  phone?: string;
  subject: string;
  message: string;
  consentRGPD: boolean;
  createdAt: string;
}

interface NewsletterSubmission {
  type: "newsletter";
  email: string;
  createdAt: string;
}
```

---

## 7. Intégrations Externes

### 7.1 Kokpit CRM

**URL :** `https://kokpit-kappa.vercel.app/`
**Endpoints utilisés :**
- `POST /api/submissions` — Réception des formulaires (devis, contact, newsletter)
- `POST /api/webhooks/demande` — Webhook reverse (site ← CRM)
- `POST /api/webhooks/newsletter` — Webhook reverse (site ← CRM)

**Flux de données :**
1. Utilisateur remplit un formulaire
2. Le frontend appelle l'API route Next.js locale (`/api/devis`, `/api/contact`, `/api/newsletter`)
3. L'API route forwarder les données vers Kokpit avec `type` et `createdAt`
4. Kokpit traite et stocke le lead

### 7.2 Google Tag Manager (GTM)

**Container :** GTM-MZ7DQBL
**Consent Mode v2 :** Oui (defaults à "denied" pour tous les types)
**Events personnalisés :**
- `demande_devis` — Soumission de devis
- `view_product` — Consultation d'une fiche produit
- `add_to_devis` — Ajout d'un produit au panier devis
- `phone_call` — Clic sur un numéro de téléphone

### 7.3 Meta Pixel

**ID :** 34647261824865095
**Events :**
- `PageView` — Chaque page
- `Lead` — Soumission de devis (avec nombre d'articles)
- `ViewContent` — Consultation produit (avec catégorie, sous-catégorie)
- `AddToCart` — Ajout au devis (avec nom, catégorie)

### 7.4 UTM Tracking

**Stockage :** sessionStorage (`dimexoi-utm`)
**Paramètres capturés :** utm_source, utm_medium, utm_campaign, utm_term, utm_content
**Détection automatique :** fbclid → source "facebook", gclid → source "google", referer → domain

---

## 8. Design System

### 8.1 Palette de Couleurs

| Nom | Hex | Usage |
|-----|-----|-------|
| `dark-olive` | #111111 | Titres, boutons principaux, header |
| `dark-charcoal` | #0D0D0D | Texte body |
| `teak-brown` | #C4661F | CTA, liens, accents principaux |
| `teak-light` | #B99470 | Accents secondaires |
| `warm-beige` | #F9EBC7 | Sections alternées, backgrounds |
| `cream` | #FEFAE0 | Backgrounds clairs |
| `russet` | #783D19 | Accents foncés |
| `off-white` | #FFFFFF | Backgrounds, texte sur fond sombre |

### 8.2 Typographie

| Police | Usage | Source |
|--------|-------|--------|
| Playfair Display | Titres (serif, premium) | Google Fonts |
| Inter | Corps de texte (sans-serif, lisible) | Google Fonts |

### 8.3 Animations CSS

| Nom | Durée | Usage |
|-----|-------|-------|
| `fadeIn` | 0.6s ease-out | Apparition d'éléments |
| `slideUp` | 0.6s ease-out | Montée d'éléments |
| `slideInRight` | 0.3s ease-out | Menu mobile, drawer devis |
| `scaleIn` | 0.3s ease-out | Apparition de cartes |

### 8.4 Breakpoints Responsive

| Nom | Taille | Usage |
|-----|--------|-------|
| `sm` | 640px | Mobile large |
| `md` | 768px | Tablette |
| `lg` | 1024px | Desktop |
| `xl` | 1280px | Grand écran |

---

## 9. Données du Catalogue

### 9.1 Statistiques

| Métrique | Valeur |
|----------|--------|
| Nombre total de produits | ~200 |
| Taille du fichier JSON | 168 KB (3 429 lignes) |
| Catégories | 7 (Chambre, Salon, Salle à manger, Entrée, Salle de bains, Extérieur, Sur-mesure) |
| Collections | ~15-20 |
| Images par produit | 1-5 |

### 9.2 Catégories

1. **Chambre** — Lits, commodes, chevets, armoires
2. **Salon** — Tables basses, meubles TV, étagères
3. **Salle à manger** — Tables, chaises, buffets
4. **Entrée** — Consoles, porte-manteaux, miroirs
5. **Salle de bains** — Meubles vasque, colonnes, miroirs
6. **Extérieur** — Mobilier de jardin, terrasse
7. **Sur-mesure** — Créations personnalisées

---

## 10. Informations Business

### 10.1 Showrooms

**Showroom SUD**
- Adresse : 1 Chemin de la Baleine, 97410 Saint-Pierre
- Téléphone : 0692 71 71 05
- Horaires : Lun-Sam 9h-12h / 14h-18h

**Showroom NORD**
- Adresse : 90 Route de la Balance, Quartier Français, 97441 Sainte-Suzanne
- Téléphone : 0692 02 40 44
- Horaires : Lun-Sam 9h-12h / 14h-18h

### 10.2 Réseaux Sociaux
- Facebook : lien dans le footer
- Instagram : lien dans le footer

### 10.3 Contact Principal
- WhatsApp : bouton flottant sur toutes les pages

---

## 11. Variables d'Environnement

| Variable | Préfixe | Usage | Valeur actuelle |
|----------|---------|-------|-----------------|
| `NEXT_PUBLIC_CRM_URL` | Public (exposée client) | URL du CRM Kokpit | `https://kokpit-kappa.vercel.app/` |

**Note :** C'est la seule variable d'environnement. Les IDs de tracking (GTM, Meta Pixel) sont hardcodés dans les composants.

---

## 12. Build & Déploiement

### 12.1 Configuration Build

```javascript
// next.config.js
{
  images: {
    remotePatterns: [
      { hostname: 'images.unsplash.com' },
      { hostname: 'lh3.googleusercontent.com' }
    ]
  },
  swcMinify: true,
  compress: true,
  productionBrowserSourceMaps: false
}
```

### 12.2 Scripts

```json
{
  "dev": "next dev",
  "build": "next build",
  "start": "next start",
  "lint": "next lint"
}
```

### 12.3 Déploiement
- **Plateforme :** Vercel
- **Méthode :** Git-based (push → deploy automatique)
- **Build :** `next build` avec compilation SWC
- **Output :** Static + Serverless Functions (API routes)
