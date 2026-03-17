# Brief Claude Code — Chat IA Conseiller Meuble + Visualisation IA

## Contexte du Projet

**Client :** Dimexoi — Meubles en bois exotique à La Réunion
**Site existant :** Next.js 14 (App Router), TypeScript, Tailwind CSS, hébergé sur Vercel
**CRM :** Kokpit (https://kokpit-kappa.vercel.app/)
**Catalogue :** ~200 produits en JSON statique (`src/data/products.json`)

---

## Objectif

Développer un **chatbot IA intégré au site** qui :
1. Conseille les visiteurs pour trouver le meuble idéal à travers une conversation naturelle
2. Collecte les coordonnées du visiteur au bon moment (lead qualification)
3. Propose de **visualiser le meuble choisi dans leur intérieur** : l'utilisateur prend une photo de sa pièce, et l'IA génère une nouvelle image avec le meuble intégré dans la photo

---

## Fonctionnalité 1 : Chat IA Conseiller Meuble

### Description
Un widget de chat flottant (coin bas droit, remplace ou cohabite avec le bouton WhatsApp) qui s'ouvre en panneau latéral. L'IA connaît tout le catalogue Dimexoi et guide l'utilisateur vers les produits adaptés à ses besoins.

### Parcours Utilisateur

```
1. L'utilisateur arrive sur le site
2. Après 10s ou au scroll 30%, le chat affiche un message d'accroche :
   "Bonjour ! Je suis l'assistant Dimexoi. Je peux vous aider à trouver
    le meuble parfait en bois exotique. Quelle pièce souhaitez-vous meubler ?"
3. L'utilisateur répond (ex: "ma salle de bain")
4. L'IA pose des questions progressives :
   - Type de meuble recherché (vasque, colonne, miroir...)
   - Style préféré (moderne, rustique, épuré...)
   - Dimensions souhaitées ou contraintes d'espace
   - Budget indicatif (optionnel)
   - Finition préférée (Miel, Brut, Cérusé blanc, Cérusé noir, Antique)
5. L'IA propose 2-3 produits du catalogue avec images et liens
6. L'utilisateur peut affiner ("plus petit", "autre style"...)
7. COLLECTE LEADS : Quand l'utilisateur semble intéressé par un produit :
   "Ce meuble vous plaît ? Je peux vous envoyer une fiche détaillée
    et un devis personnalisé. Quel est votre prénom et votre email ?"
8. Collecte : prénom, email, téléphone (optionnel), showroom le plus proche
9. Envoi au CRM Kokpit via /api/contact ou /api/devis
10. TRANSITION VERS VISUALISATION :
    "Voulez-vous voir à quoi ce meuble ressemblerait chez vous ?
     Prenez une photo de votre pièce et je l'intègre dedans !"
```

### Spécifications Techniques

#### Architecture
```
Frontend (Next.js)
├── components/
│   ├── ChatWidget.tsx          # Widget flottant + panneau de chat
│   ├── ChatMessage.tsx         # Bulle de message (user/bot)
│   ├── ChatProductCard.tsx     # Carte produit inline dans le chat
│   ├── ChatLeadForm.tsx        # Mini-formulaire de capture de leads
│   └── ChatPhotoUpload.tsx     # Upload photo pour visualisation
├── app/api/
│   ├── chat/route.ts           # API route pour le chat IA
│   └── visualize/route.ts      # API route pour la génération d'image
└── lib/
    └── chatContext.ts           # Contexte produit pour le prompt IA
```

#### Stack Recommandée
- **LLM :** API Claude (Anthropic) via `@anthropic-ai/sdk` ou Vercel AI SDK (`ai` package)
- **Streaming :** Server-Sent Events pour le streaming des réponses
- **État :** React Context ou Zustand pour l'état du chat
- **Persistance :** localStorage pour garder l'historique de conversation
- **UI :** Tailwind CSS (cohérent avec le design system existant)

#### Prompt Système du Chat

```
Tu es l'assistant virtuel de Dimexoi, spécialiste des meubles en bois
exotique à La Réunion. Tu es chaleureux, expert et concis.

RÈGLES :
- Tu ne parles QUE de meubles et décoration intérieure
- Tu recommandes UNIQUEMENT des produits du catalogue Dimexoi
- Tu poses maximum 2 questions à la fois
- Tu proposes des produits dès que tu as assez d'informations
- Après avoir proposé des produits, tu demandes les coordonnées
  naturellement (pour envoyer un devis, une fiche détaillée, etc.)
- Tu tutoies le client (style réunionnais, chaleureux)
- Tu connais les 2 showrooms (Saint-Pierre SUD et Sainte-Suzanne NORD)
- Si le client demande un prix, tu expliques que les prix sont
  sur devis personnalisé et proposes de l'aider à en demander un

CATALOGUE DISPONIBLE :
{catalogue_json_injecté_ici}

FORMAT DES RECOMMANDATIONS :
Quand tu proposes des produits, retourne-les dans ce format JSON
entre balises <products> :
<products>[{"slug": "...", "reason": "..."}]</products>
Le frontend parsera ce JSON pour afficher les cartes produits.
```

#### API Route `/api/chat`

```typescript
// Pseudo-code
import { Anthropic } from '@anthropic-ai/sdk';
import products from '@/src/data/products.json';

export async function POST(request: Request) {
  const { messages, conversationId } = await request.json();

  // Rate limiting (5 messages/minute par IP)
  // Validation des messages

  const systemPrompt = buildSystemPrompt(products);

  const stream = await anthropic.messages.stream({
    model: 'claude-sonnet-4-20250514',
    max_tokens: 1024,
    system: systemPrompt,
    messages: messages,
  });

  // Retourner en streaming (SSE)
  return new Response(stream.toReadableStream(), {
    headers: { 'Content-Type': 'text/event-stream' }
  });
}
```

#### Capture de Leads

Quand l'IA détecte un intérêt (l'utilisateur dit "j'aime bien", "combien ça coûte", "c'est disponible"...), elle propose naturellement de collecter les coordonnées. Le frontend affiche un mini-formulaire inline :

```typescript
interface ChatLead {
  firstName: string;        // Obligatoire
  email: string;            // Obligatoire
  phone?: string;           // Optionnel
  preferredShowroom?: 'sud' | 'nord';
  interestedProducts: string[];  // slugs des produits discutés
  conversationSummary: string;   // Résumé IA de la conversation
  source: 'chat-ia';
  consentRGPD: boolean;     // Obligatoire
}
```

Ce lead est envoyé au CRM Kokpit via `/api/devis` avec les produits discutés.

---

## Fonctionnalité 2 : Visualisation IA du Meuble dans l'Intérieur

### Description
L'utilisateur prend une photo de sa pièce (salle de bain, salon, chambre...). L'IA génère une nouvelle image réaliste montrant le meuble Dimexoi intégré dans cette pièce, à l'endroit le plus logique.

**Ce n'est PAS de la réalité augmentée.** C'est de la **génération d'image par IA** (inpainting / image compositing via un modèle de diffusion).

### Parcours Utilisateur

```
1. L'utilisateur a choisi un meuble dans le chat (ex: "Meuble vasque ASMARA")
2. L'IA propose : "Voulez-vous voir ce meuble dans votre salle de bain ?"
3. L'utilisateur clique sur "Oui, visualiser"
4. Interface d'upload s'ouvre :
   - Prise de photo directe (caméra mobile) ou upload depuis la galerie
   - Consignes affichées : "Prenez une photo de face de votre pièce,
     avec un bon éclairage et l'espace où vous imaginez le meuble"
5. L'utilisateur envoie sa photo
6. Écran de chargement : "Je place votre meuble... (15-30 secondes)"
   avec une animation de progression
7. L'image générée s'affiche avec le meuble intégré dans la pièce
8. Options :
   - "Essayer un autre meuble" → retour au chat
   - "Essayer une autre photo" → nouvel upload
   - "Demander un devis pour ce meuble" → formulaire pré-rempli
   - "Télécharger l'image" → sauvegarde de la visualisation
   - "Partager" → lien ou envoi par email
```

### Spécifications Techniques

#### Solution Recommandée : API de Génération d'Image

**Option A — Replicate (recommandé pour commencer)**
- Modèle : `stability-ai/sdxl` ou un modèle de inpainting/outpainting
- Technique : Image-to-image avec prompt décrivant le meuble dans la scène
- Coût : ~0.01-0.05$ par génération
- Avantage : Simple à intégrer, pay-per-use, pas d'infrastructure à gérer

**Option B — OpenAI gpt-image-1 (DALL-E)**
- API Images Edit (inpainting)
- Coût : ~0.04-0.08$ par image
- Avantage : Qualité élevée, bonne compréhension des prompts

**Option C — Fal.ai**
- Modèles de inpainting spécialisés (Flux, SDXL)
- Coût : très compétitif
- Avantage : Fast, scalable, bonne API

#### Architecture

```
┌──────────────────┐     ┌──────────────────┐     ┌──────────────────┐
│   Frontend       │     │   API Route      │     │   Service IA     │
│   (Next.js)      │────▶│   /api/visualize  │────▶│   (Replicate/    │
│                  │     │                  │     │    OpenAI/Fal)   │
│ - Upload photo   │     │ - Valide image   │     │                  │
│ - Preview        │     │ - Construit      │     │ - Reçoit photo   │
│ - Affiche résult │◀────│   le prompt      │◀────│ - Génère image   │
│                  │     │ - Stocke résult  │     │ - Retourne URL   │
└──────────────────┘     └──────────────────┘     └──────────────────┘
```

#### API Route `/api/visualize`

```typescript
// Pseudo-code
export async function POST(request: Request) {
  const formData = await request.formData();
  const photo = formData.get('photo') as File;        // Photo de la pièce
  const productSlug = formData.get('product') as string;

  // 1. Valider l'image (taille max 10MB, formats jpg/png/webp)
  // 2. Récupérer les infos du produit
  const product = products.find(p => p.slug === productSlug);

  // 3. Upload la photo utilisateur vers un stockage temporaire
  //    (Vercel Blob ou Cloudinary)
  const photoUrl = await uploadToStorage(photo);

  // 4. Récupérer l'image de référence du meuble
  const furnitureImageUrl = product.images[0];

  // 5. Construire le prompt de génération
  const prompt = buildVisualizationPrompt(product, photo);

  // 6. Appeler l'API de génération d'image
  const result = await generateVisualization({
    roomPhoto: photoUrl,
    furnitureImage: furnitureImageUrl,
    prompt: prompt,
    product: product,
  });

  // 7. Retourner l'URL de l'image générée
  return NextResponse.json({
    imageUrl: result.url,
    product: product,
  });
}
```

#### Prompt de Génération d'Image

```
Place a [product.name] ([product.attributes]) in this room photograph.
The furniture should be:
- Positioned naturally in the most logical location for a [product.subcategory]
- Scaled correctly based on the room dimensions visible in the photo
- Matching the lighting and perspective of the room
- The style is [product.collection], made of [product.attributes]
- Dimensions: [product.dimensions]
The result should look like a professional interior design photograph,
photorealistic, with the furniture seamlessly integrated into the scene.
Do not modify the rest of the room.
```

#### Stockage des Images
- **Photos uploadées :** Vercel Blob Storage (temporaire, supprimées après 24h)
- **Images générées :** Vercel Blob Storage (conservées 7 jours)
- **Nettoyage automatique :** Cron job Vercel pour supprimer les images expirées

#### Limites & Protection
- Maximum 3 visualisations gratuites par session (puis demander les coordonnées)
- Taille max de l'image uploadée : 10 MB
- Formats acceptés : JPEG, PNG, WebP
- Rate limiting : 1 génération toutes les 30 secondes par IP
- Modération : vérifier que la photo uploadée est bien un intérieur (pas de contenu inapproprié)
- Budget alerte : notification si les coûts API dépassent un seuil

---

## Fonctionnalité 3 : Tracking & Analytics

### Events à Tracker

| Event | Déclencheur | Données |
|-------|-------------|---------|
| `chat_opened` | L'utilisateur ouvre le chat | page, source |
| `chat_message_sent` | L'utilisateur envoie un message | message_count |
| `chat_product_viewed` | Un produit est affiché dans le chat | product_slug, category |
| `chat_lead_captured` | Coordonnées collectées | has_email, has_phone |
| `chat_visualization_started` | Upload de photo lancé | product_slug |
| `chat_visualization_completed` | Image générée avec succès | product_slug, duration |
| `chat_visualization_devis` | Devis demandé depuis la visualisation | product_slug |

Ces events doivent être envoyés au GTM dataLayer et au Meta Pixel (comme les events existants dans `src/lib/tracking.ts`).

---

## Design & UX

### Widget de Chat

```
┌─ Chat fermé ──────────────────────┐
│                                    │
│   [Bouton flottant rond]           │
│   Icône bulle de chat              │
│   Badge notification "1"           │
│   Position : bas droite            │
│   Couleur : teak-brown (#C4661F)   │
│                                    │
└────────────────────────────────────┘

┌─ Chat ouvert (panneau droit) ─────┐
│ ┌────────────────────────────────┐ │
│ │  🪑 Assistant Dimexoi     [X] │ │  ← Header
│ ├────────────────────────────────┤ │
│ │                                │ │
│ │  [Bot] Bonjour ! Quelle       │ │  ← Messages
│ │  pièce souhaitez-vous         │ │
│ │  meubler ?                    │ │
│ │                                │ │
│ │         [User] Ma salle       │ │
│ │         de bain               │ │
│ │                                │ │
│ │  [Bot] Super ! Voici ce que   │ │
│ │  je recommande :              │ │
│ │                                │ │
│ │  ┌──────────┐ ┌──────────┐   │ │  ← Cartes produit
│ │  │ [Image]  │ │ [Image]  │   │ │
│ │  │ ASMARA   │ │ BALI     │   │ │
│ │  │ Vasque   │ │ Vasque   │   │ │
│ │  │ [Voir]   │ │ [Voir]   │   │ │
│ │  └──────────┘ └──────────┘   │ │
│ │                                │ │
│ │  [Bot] Lequel vous plaît ?    │ │
│ │  Vous pouvez aussi le         │ │
│ │  visualiser chez vous !       │ │
│ │                                │ │
│ ├────────────────────────────────┤ │
│ │  [Tapez votre message...]  [➤]│ │  ← Input
│ └────────────────────────────────┘ │
└────────────────────────────────────┘
```

### Écran de Visualisation

```
┌─ Visualisation ──────────────────┐
│ ┌────────────────────────────────┐│
│ │  Visualisez chez vous    [←]  ││  ← Retour au chat
│ ├────────────────────────────────┤│
│ │                                ││
│ │  ┌──────────────────────────┐  ││
│ │  │                          │  ││
│ │  │   [Photo de la pièce    │  ││
│ │  │    avec le meuble        │  ││
│ │  │    intégré par l'IA]     │  ││
│ │  │                          │  ││
│ │  └──────────────────────────┘  ││
│ │                                ││
│ │  Meuble vasque ASMARA          ││
│ │  L140 x P55 x H80 cm          ││
│ │  Teck massif recyclé           ││
│ │                                ││
│ │  [📷 Autre photo]              ││
│ │  [🔄 Autre meuble]             ││
│ │  [📋 Demander un devis]        ││
│ │  [⬇️ Télécharger l'image]      ││
│ │                                ││
│ └────────────────────────────────┘│
└──────────────────────────────────┘
```

### Charte Graphique à Respecter

- **Couleurs :** Utiliser le design system existant (dark-olive, teak-brown, warm-beige, cream)
- **Typographie :** Playfair Display pour les titres, Inter pour le texte
- **Style :** Premium, chaleureux, évoquant le bois exotique
- **Animations :** Utiliser les animations existantes (fadeIn, slideInRight)
- **Responsive :** Le chat doit fonctionner parfaitement sur mobile
  - Mobile : panneau plein écran
  - Desktop : panneau latéral 400px max

---

## Variables d'Environnement à Ajouter

```env
# API Claude pour le chat IA
ANTHROPIC_API_KEY=sk-ant-...

# Service de génération d'images (choisir un)
REPLICATE_API_TOKEN=r8_...
# OU
OPENAI_API_KEY=sk-...
# OU
FAL_KEY=...

# Stockage temporaire des images
BLOB_READ_WRITE_TOKEN=vercel_blob_...

# Webhook secret pour sécuriser les appels
WEBHOOK_SECRET=...

# Limites
MAX_FREE_VISUALIZATIONS=3
VISUALIZATION_COST_ALERT_THRESHOLD=50
```

**Important :** Aucune de ces variables ne doit avoir le préfixe `NEXT_PUBLIC_`. Elles sont toutes utilisées côté serveur uniquement.

---

## Dépendances à Installer

```bash
# Chat IA
npm install @anthropic-ai/sdk
# OU
npm install ai @ai-sdk/anthropic

# Validation
npm install zod

# Génération d'images (selon le choix)
npm install replicate
# OU utiliser fetch directement vers l'API OpenAI/Fal

# Stockage images
npm install @vercel/blob

# Rate limiting
npm install @upstash/ratelimit @upstash/redis

# État du chat (optionnel, React Context peut suffire)
npm install zustand
```

---

## Estimation de Coûts

### Chat IA (API Claude)
- ~200 conversations/jour × 10 messages × ~500 tokens = ~1M tokens/jour
- Claude Sonnet : ~3$/million tokens input, ~15$/million tokens output
- **Estimation : 20-50€/mois**

### Génération d'Images
- ~50 visualisations/jour × 0.03$/image
- **Estimation : 45-90€/mois**

### Stockage (Vercel Blob)
- Images temporaires, supprimées après 7 jours
- **Estimation : 5-10€/mois**

### Total Estimé : **70-150€/mois**

---

## Plan d'Implémentation Recommandé

### Phase 1 — Chat IA (1-2 semaines)
1. Installer les dépendances (Anthropic SDK, Zod, Upstash)
2. Créer le composant `ChatWidget.tsx` avec UI basique
3. Créer l'API route `/api/chat` avec streaming
4. Injecter le catalogue produits dans le prompt système
5. Implémenter l'affichage des cartes produits dans le chat
6. Ajouter le rate limiting
7. Tests manuels et ajustements du prompt

### Phase 2 — Capture de Leads (3-5 jours)
1. Créer le mini-formulaire `ChatLeadForm.tsx`
2. Connecter au CRM Kokpit via `/api/devis`
3. Ajouter le tracking des events (GTM + Meta Pixel)
4. Logique de déclenchement de la capture (après intérêt détecté)

### Phase 3 — Visualisation IA (1-2 semaines)
1. Choisir et configurer le service de génération (Replicate recommandé)
2. Configurer Vercel Blob pour le stockage temporaire
3. Créer le composant `ChatPhotoUpload.tsx`
4. Créer l'API route `/api/visualize`
5. Construire et itérer sur les prompts de génération d'image
6. Implémenter la limite de 3 visualisations gratuites
7. Ajouter le téléchargement et partage d'image
8. Tests approfondis avec différents types de pièces et meubles

### Phase 4 — Polish & Optimisation (1 semaine)
1. Responsive mobile (chat plein écran)
2. Animations et transitions fluides
3. Gestion des erreurs gracieuse
4. Messages de fallback si l'IA ne comprend pas
5. A/B testing du message d'accroche
6. Monitoring des coûts API
7. Documentation

---

## Notes Importantes pour le Développeur

1. **Le catalogue est en JSON statique** (`src/data/products.json`). Il faut l'injecter dans le prompt système du chat. Attention à la taille : ~168 KB. Envisager d'envoyer seulement les champs essentiels (slug, name, category, subcategory, dimensions, collection) pour réduire les tokens.

2. **Le design system est dans `tailwind.config.ts`**. Utiliser les couleurs custom (dark-olive, teak-brown, warm-beige, cream) et les fonts (Playfair Display, Inter).

3. **Le système de devis existe déjà** (`DevisCartProvider.tsx`). Le chat doit pouvoir ajouter des produits au panier devis existant.

4. **Le tracking existe déjà** (`src/lib/tracking.ts`). Suivre le même pattern pour les nouveaux events.

5. **L'URL du CRM est dans `.env.local`** (`NEXT_PUBLIC_CRM_URL`). Les API routes existantes montrent comment envoyer des données au CRM.

6. **Pas de base de données.** L'historique de conversation est en localStorage côté client. Si nécessaire à terme, migrer vers Supabase.

7. **RGPD :** Le chat doit respecter le consentement cookies. Ne pas envoyer de données analytics si l'utilisateur a refusé les cookies. Le formulaire de leads doit inclure le consentement RGPD.

8. **La qualité de la visualisation dépend énormément du prompt.** Prévoir du temps pour itérer sur les prompts de génération d'image. Tester avec différents types de pièces (petite salle de bain, grand salon, terrasse extérieure) et différents styles de meubles.
