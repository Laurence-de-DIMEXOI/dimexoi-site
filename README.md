# DIMEXOI - Site Web Officiel

Site web premium pour DIMEXOI, fabricant de meubles en teck haut de gamme à La Réunion depuis 1995.

## Caractéristiques

- ✅ Next.js 14 avec App Router
- ✅ TypeScript pour une meilleure maintenabilité
- ✅ Tailwind CSS pour un design réactif et moderne
- ✅ Images optimisées avec next/image
- ✅ SEO optimisé avec métadonnées dynamiques
- ✅ Intégration CRM pour les formulaires
- ✅ Responsive design mobile-first
- ✅ Sitemap et robots.txt automatiques
- ✅ Déployable sur Vercel sans configuration

## Structure du Projet

```
dimexoi-site/
├── src/
│   ├── app/
│   │   ├── api/                 # API routes pour les formulaires
│   │   ├── catalogue/           # Pages de catalogue
│   │   ├── collections/         # Page des collections
│   │   ├── contact/             # Page de contact
│   │   ├── devis/              # Page de demande de devis
│   │   ├── a-propos/           # Page à propos
│   │   ├── globals.css         # Styles globaux
│   │   ├── layout.tsx          # Layout principal
│   │   ├── page.tsx            # Accueil
│   │   ├── robots.ts           # Robots.txt
│   │   └── sitemap.ts          # Sitemap XML
│   ├── components/
│   │   ├── Breadcrumb.tsx      # Composant de navigation
│   │   ├── CategoryCard.tsx    # Carte de catégorie
│   │   ├── ContactForm.tsx     # Formulaire de contact
│   │   ├── Footer.tsx          # Pied de page
│   │   ├── Header.tsx          # En-tête
│   │   ├── ImageGallery.tsx    # Galerie d'images
│   │   ├── ProductCard.tsx     # Carte produit
│   │   └── QuoteForm.tsx       # Formulaire de devis
│   ├── data/
│   │   └── products.json       # Données des produits
│   └── lib/
│       └── products.ts         # Utilitaires pour les produits
├── public/                      # Fichiers statiques
├── .env.example                 # Variables d'environnement (exemple)
├── .env.local                   # Variables d'environnement (local)
├── next.config.js              # Configuration Next.js
├── tailwind.config.ts          # Configuration Tailwind
├── tsconfig.json               # Configuration TypeScript
├── postcss.config.js           # Configuration PostCSS
└── package.json                # Dépendances

```

## Installation

### Prérequis
- Node.js 18+ et npm/yarn/pnpm

### Étapes

1. **Cloner le repository** (si applicable)
```bash
cd dimexoi-site
```

2. **Installer les dépendances**
```bash
npm install
# ou
yarn install
# ou
pnpm install
```

3. **Configurer les variables d'environnement**
```bash
cp .env.example .env.local
```

Éditez `.env.local` et configurez:
```
NEXT_PUBLIC_CRM_URL=https://kokpit-kappa.vercel.app/
```

4. **Lancer le serveur de développement**
```bash
npm run dev
# ou
yarn dev
# ou
pnpm dev
```

Ouvrez [http://localhost:3000](http://localhost:3000) dans votre navigateur.

## Scripts Disponibles

```bash
# Développement
npm run dev

# Build pour production
npm run build

# Lancer le serveur de production
npm start

# Vérification avec ESLint
npm run lint
```

## Pages

### Accueil (/)
- Section héro avec appel à l'action
- Barre de confiance (31 ans, 100% teck, sur-mesure, 2 showrooms)
- Grille des catégories
- Produits en vedette
- Section à propos
- CTA showroom
- Newsletter

### Catalogue (/catalogue)
- Filtres par catégorie et sous-catégorie
- Recherche en temps réel
- Grille de produits responsive
- Pagination/chargement infini (optionnel)

### Détail Produit (/catalogue/[slug])
- Galerie d'images avec thumbnails
- Informations complètes du produit
- Dimensions
- Formulaire de devis pré-rempli
- Produits connexes
- Schema.org Product markup

### Collections (/collections)
- Vue d'ensemble de toutes les collections
- Nombre de produits par collection
- Liens vers les produits associés

### Devis (/devis)
- Formulaire de demande de devis
- Sélection de produit (pré-remplissable via URL)
- Informations de contact
- Type de projet
- Showroom préféré
- Message personnalisé

### Contact (/contact)
- Formulaire de contact complet
- Informations des 2 showrooms
- Cartes intégrées Google Maps
- Horaires d'ouverture

### À Propos (/a-propos)
- Histoire de DIMEXOI
- Valeurs de l'entreprise
- Chiffres clés
- Équipe et showrooms
- Engagements

## API Routes

### POST /api/devis
Soumet une demande de devis au CRM.

**Body:**
```json
{
  "name": "Jean Dupont",
  "email": "jean@example.com",
  "phone": "0262123456",
  "product": "bureau-eddy",
  "projectType": "renovation",
  "message": "Intéressé par ce bureau",
  "showroom": "sud"
}
```

### POST /api/contact
Soumet un message de contact au CRM.

**Body:**
```json
{
  "name": "Jean Dupont",
  "email": "jean@example.com",
  "phone": "0262123456",
  "subject": "Question sur un produit",
  "message": "Votre message..."
}
```

### POST /api/newsletter
Abonne un email à la newsletter.

**Body:**
```json
{
  "email": "jean@example.com"
}
```

## Intégration CRM

Les formulaires envoient les données à votre CRM via la variable `NEXT_PUBLIC_CRM_URL`.

**Exemple avec Kokpit:**
```
NEXT_PUBLIC_CRM_URL=https://kokpit-kappa.vercel.app/
```

Le système POST vers `{CRM_URL}api/submissions` avec le format:
```json
{
  "type": "devis|contact|newsletter",
  ...formData,
  "createdAt": "2024-01-01T12:00:00Z"
}
```

## SEO

### Optimisations incluses
- ✅ Métadonnées dynamiques pour chaque page
- ✅ Open Graph tags pour les réseaux sociaux
- ✅ Schema.org LocalBusiness pour l'accueil
- ✅ Schema.org Product pour les fiches produits
- ✅ Sitemap XML automatique (/sitemap.xml)
- ✅ Robots.txt (/robots.txt)
- ✅ Canonical URLs
- ✅ Slugs en français pour les URLs

### Mots-clés ciblés
- Mobilier teck La Réunion
- Meubles haut de gamme
- Teck massif
- Sur-mesure
- Showrooms Saint-Pierre Saint-Denis
- Furniture design artisanal

## Design

### Palette de couleurs
- Beige chaud: `#F5F0EB` (backgrounds)
- Olive foncé: `#4A5D23` (headings/CTA)
- Teak brun: `#8B6914` (accents)
- Off-white: `#FDFBF7` (off-white)
- Charcoal: `#2C2C2C` (text)

### Typographie
- **Headings**: Playfair Display (serif)
- **Body**: Inter (sans-serif)
- Importés depuis Google Fonts

### Responsive Design
- Mobile-first approach
- Breakpoints: md (768px), lg (1024px)
- Images optimisées pour tous les appareils
- Menu hamburger sur mobile

## Performance

### Optimisations
- ✅ Images optimisées avec next/image
- ✅ Code splitting automatique
- ✅ Static generation où possible
- ✅ Dynamic imports pour les gros composants
- ✅ CSS Tailwind optimisé et purgé

### Lighthouse Score
Target: 90+ en tous les domaines

## Déploiement

### Sur Vercel (recommandé)

1. **Pousser le code vers GitHub**
```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/username/dimexoi-site.git
git push -u origin main
```

2. **Déployer sur Vercel**
- Aller à [vercel.com](https://vercel.com)
- Cliquer "New Project"
- Sélectionner le repository GitHub
- Configurer les variables d'environnement:
  - `NEXT_PUBLIC_CRM_URL`: votre URL du CRM
- Cliquer "Deploy"

3. **Configuration du domaine**
- Dans les settings Vercel, ajouter votre domaine personnalisé
- Mettre à jour les enregistrements DNS

### Variables d'environnement Vercel
```
NEXT_PUBLIC_CRM_URL=https://kokpit-kappa.vercel.app/
```

## Maintenance

### Mise à jour des produits
Modifiez `/src/data/products.json` avec le nouveau catalogue JSON.

### Ajouter une nouvelle page
1. Créer un dossier dans `/src/app/`
2. Ajouter un fichier `page.tsx`
3. Ajouter le lien dans le Header

### Modifier le design
- Couleurs: `tailwind.config.ts`
- Fonts: `globals.css`
- Styles globaux: `globals.css`

## Support et Contact

**DIMEXOI**
- Showroom SUD: 0262 35 06 79 | contact@dimexoi.fr
- Showroom NORD: 0262 20 30 30 | bernard.runasia@gmail.com

## Licence

Tous droits réservés © 2024 DIMEXOI. Mobilier en teck.

## Checklist de déploiement

- [ ] Vérifier l'URLs du CRM en `.env.local`
- [ ] Tester tous les formulaires localement
- [ ] Vérifier les liens internes
- [ ] Tester la version mobile
- [ ] Vérifier les images depuis Google Drive
- [ ] Tester le sitemap.xml
- [ ] Vérifier le robots.txt
- [ ] Lancer `npm run build` sans erreurs
- [ ] Tester sur Vercel preview
- [ ] Configurer le domaine personnalisé
- [ ] Mettre à jour les DNS
- [ ] Vérifier les analytics (si applicable)
- [ ] Lancer PageSpeed Insights
- [ ] Vérifier la version mobile sur AppSpot

## Ressources

- [Next.js 14 Docs](https://nextjs.org/docs)
- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [TypeScript Docs](https://www.typescriptlang.org/docs)
- [Vercel Docs](https://vercel.com/docs)

---

Made with ❤️ for DIMEXOI | Last updated: 2024
