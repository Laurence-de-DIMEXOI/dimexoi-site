# Liste Complète des Fichiers - DIMEXOI Website

**Total: 37 fichiers | Taille: ~250 KB (sans node_modules)**

## Configuration & Setup (8 fichiers)

### Root Level Configuration
```
├── package.json (552 B)
│   └── Dépendances npm, scripts build/dev/start/lint
│       ├── next: 14.2.0
│       ├── react: ^18
│       ├── tailwindcss: ^3.4
│       └── typescript: ^5
│
├── tsconfig.json (878 B)
│   └── Configuration TypeScript
│       ├── Strict mode activé
│       ├── Module resolution: bundler
│       └── Paths aliases: @/*
│
├── next.config.js (427 B)
│   └── Configuration Next.js
│       ├── Remote image patterns (Google Drive, Unsplash)
│       ├── SWC minify
│       └── Optimisations production
│
├── tailwind.config.ts (1.1 KB)
│   └── Configuration Tailwind CSS
│       ├── Colors custom (warm-beige, dark-olive, teak-brown)
│       ├── FontFamily (Playfair Display, Inter)
│       └── Thème personnalisé
│
├── postcss.config.js (82 B)
│   └── Configuration PostCSS
│       ├── Tailwind CSS plugin
│       └── Autoprefixer plugin
│
├── .env.example (53 B)
│   └── Template variables d'environnement
│       └── NEXT_PUBLIC_CRM_URL=https://kokpit-kappa.vercel.app/
│
├── .env.local (53 B)
│   └── Variables d'environnement local
│       └── (Même contenu que .env.example)
│
└── .gitignore (322 B)
    └── Fichiers ignorés par Git
        ├── node_modules/
        ├── .next/
        ├── .env*
        └── IDE files
```

## Documentation (4 fichiers)

### Guides Complets
```
├── README.md (9.0 KB)
│   ├── Vue d'ensemble du projet
│   ├── Installation et setup
│   ├── Structure du projet
│   ├── Pages et composants
│   ├── API routes
│   ├── SEO et performance
│   ├── Déploiement Vercel
│   ├── Maintenance
│   └── Checklist de lancement
│
├── QUICKSTART.md (5.1 KB)
│   ├── Installation rapide (5 min)
│   ├── Structure des pages
│   ├── Comment éditer le contenu
│   ├── Commandes utiles
│   ├── FAQ
│   └── Ressources
│
├── DEPLOYMENT.md (6.7 KB)
│   ├── Préparer le code (GitHub)
│   ├── Déployer sur Vercel
│   ├── Configurer le domaine
│   ├── Tests post-déploiement
│   ├── Configuration avancée
│   ├── Maintenance continue
│   ├── Dépannage
│   └── Checklist final
│
└── PROJECT_SUMMARY.md (10.7 KB)
    ├── Vue d'ensemble
    ├── Tech stack
    ├── Fichiers créés
    ├── Fonctionnalités
    ├── Structure de données
    ├── Variables d'environnement
    ├── API endpoints
    ├── Palette de couleurs
    ├── Performance
    ├── Déploiement
    ├── Maintenance
    ├── Checklist de lancement
    ├── Support
    ├── Prochaines étapes
    └── Ce fichier (FILES.md)
```

## Application - Pages (7 fichiers)

### Fichiers Pages Next.js
```
src/app/
├── page.tsx (8.2 KB)
│   └── Accueil (/)
│       ├── Hero section full-width
│       ├── Trust bar
│       ├── Category grid (6 catégories)
│       ├── Featured products (8 produits)
│       ├── About section
│       ├── Showroom CTA
│       └── Newsletter signup
│
├── layout.tsx (1.3 KB)
│   └── Layout principal
│       ├── Métadonnées globales
│       ├── Fonts Google
│       ├── Header et Footer
│       └── Wrapper principal
│
├── globals.css (5.8 KB)
│   └── Styles globaux
│       ├── Imports fonts
│       ├── Tailwind directives
│       ├── Utility classes custom
│       ├── Animations
│       ├── Composants globaux (.btn-*, .form-*)
│       └── États hover/active
│
├── sitemap.ts (1.2 KB)
│   └── Sitemap XML auto-généré
│       ├── Routes statiques
│       ├── Produits dynamiques
│       └── Métadonnées SEO
│
├── robots.ts (0.3 KB)
│   └── Robots.txt auto-généré
│       ├── Allow all (/)
│       ├── Disallow API
│       └── Sitemap reference
│
├── catalogue/page.tsx (5.5 KB)
│   └── Catalogue avec filtres (/catalogue)
│       ├── Sidebar filtres
│       ├── Recherche en temps réel
│       ├── Grille produits responsive
│       └── Affichage compteur résultats
│
├── catalogue/[slug]/page.tsx (7.8 KB)
│   └── Détail produit (/catalogue/[slug])
│       ├── Galerie d'images
│       ├── Breadcrumb
│       ├── Informations complètes
│       ├── Formulaire devis
│       ├── Showroom info
│       ├── Produits connexes
│       ├── Schema.org Product
│       └── Métadonnées dynamiques
│
├── collections/page.tsx (4.2 KB)
│   └── Collections (/collections)
│       ├── Vue d'ensemble collections
│       ├── Grille avec compteurs
│       ├── Info section
│       └── CTA vers devis
│
├── contact/page.tsx (5.7 KB)
│   └── Contact (/contact)
│       ├── Formulaire de contact
│       ├── Infos 2 showrooms
│       ├── Google Maps embeds
│       ├── Horaires
│       └── Section infos supplémentaires
│
├── devis/page.tsx (3.4 KB)
│   └── Demande de devis (/devis)
│       ├── Breadcrumb
│       ├── Formulaire de devis
│       ├── Produit pré-rempli (optionnel)
│       └── Contact direct showrooms
│
└── a-propos/page.tsx (8.1 KB)
    └── À propos (/a-propos)
        ├── Histoire DIMEXOI
        ├── Valeurs (3 sections)
        ├── Chiffres clés
        ├── Team showrooms
        ├── Engagements
        ├── Certifications
        └── CTA
```

## Composants Réutilisables (8 fichiers)

### Components React
```
src/components/
├── Header.tsx (2.3 KB)
│   └── Navigation sticky header
│       ├── Logo DIMEXOI
│       ├── Nav desktop (Catalogue, Collections, À propos, Contact)
│       ├── Nav mobile hamburger
│       ├── CTA button "Demander un devis"
│       └── Sticky avec shadow
│
├── Footer.tsx (3.8 KB)
│   └── Pied de page complet
│       ├── Infos brand
│       ├── Showroom SUD (adresse, téléphone, email, horaires)
│       ├── Showroom NORD (adresse, téléphone, email, horaires)
│       ├── Quick links navigation
│       ├── Newsletter signup form
│       └── Copyright & legal links
│
├── ProductCard.tsx (1.8 KB)
│   └── Carte produit
│       ├── Image responsive
│       ├── Nom produit
│       ├── Sous-catégorie
│       ├── Dimensions
│       ├── Hover effect
│       └── Link vers détail
│
├── CategoryCard.tsx (1.6 KB)
│   └── Carte catégorie avec overlay
│       ├── Image full-width
│       ├── Overlay semi-transparent
│       ├── Nom catégorie
│       ├── Compteur produits
│       ├── Hover effect
│       └── Link vers catalogue filtrée
│
├── Breadcrumb.tsx (1.1 KB)
│   └── Navigation fil d'Ariane
│       ├── Liens contextuels
│       ├── Séparateurs
│       ├── Styling
│       └── Réutilisable
│
├── ImageGallery.tsx (2.4 KB)
│   └── Galerie d'images
│       ├── Image principale interactive
│       ├── Thumbnails sélectionnables
│       ├── Next/Image optimisée
│       ├── Lazy loading
│       └── Responsive
│
├── QuoteForm.tsx (4.5 KB)
│   └── Formulaire de demande de devis
│       ├── Champs: Name, Email, Phone
│       ├── Sélection produit
│       ├── Type de projet (renovation/demenagement/autre)
│       ├── Showroom préféré
│       ├── Message libre
│       ├── Validation client-side
│       ├── Intégration API /api/devis
│       ├── Gestion erreurs/succès
│       └── Pré-remplissage produit (URL param)
│
└── ContactForm.tsx (3.6 KB)
    └── Formulaire de contact
        ├── Champs: Name, Email, Phone
        ├── Subject
        ├── Message
        ├── Validation client-side
        ├── Intégration API /api/contact
        ├── Gestion erreurs/succès
        └── Messages feedback
```

## API Routes (3 fichiers)

### Server-Side API Endpoints
```
src/app/api/
├── devis/route.ts (1.2 KB)
│   └── POST /api/devis
│       ├── Récupère form data
│       ├── Forward vers CRM
│       ├── Ajout timestamp
│       ├── Gestion erreurs
│       └── JSON response
│
├── contact/route.ts (1.1 KB)
│   └── POST /api/contact
│       ├── Récupère form data
│       ├── Forward vers CRM
│       ├── Ajout timestamp
│       ├── Gestion erreurs
│       └── JSON response
│
└── newsletter/route.ts (1.1 KB)
    └── POST /api/newsletter
        ├── Récupère email
        ├── Forward vers CRM
        ├── Ajout timestamp
        ├── Gestion erreurs
        └── JSON response
```

## Logique & Données (2 fichiers)

### Utilitaires et Données
```
src/lib/
├── products.ts (1.6 KB)
│   └── Utilitaires produits
│       ├── Import products.json
│       ├── Fonction getProductBySlug()
│       ├── Fonction getProductsByCategory()
│       ├── Fonction getProductsBySubcategory()
│       ├── Fonction getCategories()
│       ├── Fonction getSubcategories()
│       ├── Fonction getCollections()
│       ├── Fonction searchProducts()
│       └── Types TypeScript
│
└── data/
    └── products.json (168 KB)
        └── Catalogue complet
            ├── 100+ produits
            ├── Structure: id, name, slug, category, subcategory
            ├── Dimensions, descriptions, images
            ├── Collections
            └── Images Google Drive URLs
```

## Résumé par Type

### TypeScript/TSX Files
- **3** fichiers de pages (`page.tsx`)
- **3** fichiers de routes API (`route.ts`)
- **8** composants React (`.tsx`)
- **1** fichier utilitaires (`products.ts`)
- **1** fichier layout (`layout.tsx`)
- **1** fichier config (`tailwind.config.ts`)
- **2** fichiers générateurs SEO (`.ts`)
**Total: 19 fichiers TS/TSX**

### CSS Files
- **1** fichier CSS global (`globals.css`)
**Total: 1 fichier CSS**

### JSON Files
- **1** configuration package (`package.json`)
- **1** configuration TypeScript (`tsconfig.json`)
- **1** données produits (`products.json`)
- **2** fichiers environnement (`.env.example`, `.env.local`)
**Total: 5 fichiers JSON/Config**

### JavaScript Files
- **1** configuration Next.js (`next.config.js`)
- **1** configuration PostCSS (`postcss.config.js`)
**Total: 2 fichiers JS**

### Documentation Files
- **4** fichiers markdown principaux
- **1** fichier liste fichiers (celui-ci)
- **1** fichier routes
**Total: 6+ fichiers MD**

### Autres
- **1** `.gitignore`
**Total: 1 fichier**

## Taille Totale

```
Configuration:        5 KB  (package.json, tsconfig, config files)
Documentation:       50 KB  (README, DEPLOYMENT, etc.)
Styles:              6 KB   (globals.css)
Composants:         30 KB   (8 components)
Pages:              40 KB   (7 pages)
API:                 4 KB   (3 routes)
Logique:           2 KB   (products.ts)
Données:          168 KB   (products.json)
─────────────────────────
TOTAL SANS NODE_MODULES: ~305 KB
```

## Hiérarchie des Fichiers

```
dimexoi-site/
├── Configuration
│   ├── package.json
│   ├── tsconfig.json
│   ├── next.config.js
│   ├── tailwind.config.ts
│   ├── postcss.config.js
│   ├── .env.example
│   ├── .env.local
│   └── .gitignore
│
├── Documentation
│   ├── README.md
│   ├── QUICKSTART.md
│   ├── DEPLOYMENT.md
│   ├── PROJECT_SUMMARY.md
│   ├── ROUTES.md
│   └── FILES.md (ce fichier)
│
└── src/
    ├── app/
    │   ├── (Pages - 7 fichiers)
    │   ├── (API Routes - 3 fichiers)
    │   ├── layout.tsx
    │   ├── globals.css
    │   ├── sitemap.ts
    │   └── robots.ts
    │
    ├── components/
    │   ├── (8 Composants réutilisables)
    │   └── ...
    │
    ├── lib/
    │   └── products.ts
    │
    └── data/
        └── products.json
```

## Dépendances de Fichiers

### Pages dépendent de:
- `Header.tsx` et `Footer.tsx` (via layout)
- `Breadcrumb.tsx` (pour navigation)
- `ProductCard.tsx` (pour lister les produits)
- `CategoryCard.tsx` (pour catégories)
- `ImageGallery.tsx` (pour galerie produit)
- `QuoteForm.tsx` et `ContactForm.tsx` (pour formulaires)
- `products.ts` (pour données)
- `globals.css` (pour styles)

### Composants dépendent de:
- `products.ts` (ProductCard, CategoryCard)
- `globals.css` (tous)
- `Image` de next/image (ProductCard, CategoryCard, ImageGallery)
- `Link` de next/link (Header, Footer, ProductCard, CategoryCard)

### API Routes dépendent de:
- Variables d'environnement `NEXT_PUBLIC_CRM_URL`
- Aucune autre dépendance locale

## Conventions de Nommage

### Pages
- `page.tsx` - Composant page Next.js
- `layout.tsx` - Layout wrapper
- `[slug]` - Route dynamique

### Composants
- PascalCase: `Header.tsx`, `ProductCard.tsx`

### Utilitaires
- camelCase: `products.ts`

### Styles
- `globals.css` - Styles globaux
- Classes Tailwind inline - Styles composants

### Configuration
- `*.config.js` ou `*.config.ts` - Fichiers config
- `.env*` - Variables d'environnement

## Maintenance et Mises à Jour

### Fichiers à modifier fréquemment
1. `src/data/products.json` - Ajouter/modifier des produits
2. `src/components/Footer.tsx` - Horaires, contact
3. `src/app/page.tsx` - Contenu homepage

### Fichiers rarement modifiés
1. Configuration (package.json, tsconfig, next.config, etc.)
2. Composants (sauf contenu)
3. Structure des routes

### Fichiers à laisser intacts
1. `globals.css` - À moins de redesign
2. `tailwind.config.ts` - À moins de changement palette
3. Structure `src/app/` - À moins d'ajouter des pages

---

**Mise à jour**: 2024-03-03
**Fichiers créés par**: Claude Code
**Pour**: DIMEXOI - Mobilier en Teck
