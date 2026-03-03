# Guide de Démarrage Rapide - DIMEXOI

## Installation Locale (5 minutes)

### 1. Installer les dépendances
```bash
npm install
```

### 2. Configurer l'environnement
```bash
# Vérifier que .env.local existe
cat .env.local
```

Doit contenir:
```
NEXT_PUBLIC_CRM_URL=https://kokpit-kappa.vercel.app/
```

### 3. Lancer le serveur local
```bash
npm run dev
```

Ouvrir [http://localhost:3000](http://localhost:3000) dans le navigateur.

## Structure des Pages

### Pages Publiques
- `/` - Accueil (homepage)
- `/catalogue` - Listing de tous les produits avec filtres
- `/catalogue/[slug]` - Détail d'un produit spécifique
- `/collections` - Vue d'ensemble des collections
- `/devis` - Formulaire de demande de devis
- `/contact` - Formulaire de contact avec maps
- `/a-propos` - Page à propos de l'entreprise

### Composants Réutilisables
```
src/components/
├── Header.tsx          # En-tête sticky avec nav
├── Footer.tsx          # Pied de page avec infos
├── ProductCard.tsx     # Carte produit (image, nom, prix)
├── CategoryCard.tsx    # Carte catégorie avec overlay
├── Breadcrumb.tsx      # Navigation fil d'Ariane
├── ImageGallery.tsx    # Galerie d'images avec thumbnails
├── QuoteForm.tsx       # Formulaire de devis
└── ContactForm.tsx     # Formulaire de contact
```

### API Routes
```
src/app/api/
├── devis/route.ts      # POST /api/devis
├── contact/route.ts    # POST /api/contact
└── newsletter/route.ts # POST /api/newsletter
```

## Éditer le Contenu

### Ajouter/Modifier des Produits
Éditer `src/data/products.json`:
```json
{
  "id": 1,
  "name": "Bureau Eddy",
  "slug": "bureau-eddy",
  "category": "Chambre",
  "subcategory": "Bureau",
  "dimensions": "140 CM ou 160 CM",
  "images": ["https://drive.google.com/uc?export=view&id=..."],
  "description": "✓ Bureau en teck\n✓ Adaptez...",
  "collection": "Collection Name"
}
```

### Modifier le Design
- **Couleurs**: `tailwind.config.ts`
- **Fonts**: Modifiées dans `globals.css`
- **Styles globaux**: `src/app/globals.css`

### Ajouter une Nouvelle Page
```bash
# 1. Créer le dossier
mkdir -p src/app/nouvelle-page

# 2. Créer page.tsx
touch src/app/nouvelle-page/page.tsx
```

Ajouter le contenu:
```tsx
export default function NouvellePagePage() {
  return (
    <main>
      <h1>Nouvelle Page</h1>
    </main>
  );
}
```

3. Ajouter le lien dans `src/components/Header.tsx`

## Tester les Formulaires Localement

### Formulaire de Devis
1. Aller à `http://localhost:3000/devis`
2. Remplir le formulaire
3. Cliquer "Envoyer ma demande"
4. Vérifier la réponse (si le CRM est accessible)

### Formulaire de Contact
1. Aller à `http://localhost:3000/contact`
2. Remplir le formulaire
3. Cliquer "Envoyer le message"

## Commandes Utiles

```bash
# Développement
npm run dev

# Build (comme Vercel)
npm run build

# Lancer la version produit localement
npm start

# Linting
npm run lint

# Nettoyer les fichiers
rm -rf .next
```

## Vérifier la Build

Avant de déployer, assurez-vous que la build fonctionne:
```bash
npm run build
```

Doit completer sans erreurs.

## Variables d'Environnement

### Locale (.env.local)
```env
NEXT_PUBLIC_CRM_URL=https://kokpit-kappa.vercel.app/
```

### Vercel (à configurer dans le dashboard)
Les mêmes variables sont nécessaires dans Vercel > Settings > Environment Variables.

## Images

### Images Produits (Google Drive)
Doivent être au format:
```
https://drive.google.com/uc?export=view&id=FILE_ID
```

### Images Hero/Catégories (Unsplash)
Utilisent des URLs publiques Unsplash (gratuit).

## Performance

### PageSpeed Insights
```bash
# Après npm run build
npm start
# Puis aller à https://pagespeed.web.dev
# Entrer http://localhost:3000
```

## Déploiement

Voir [DEPLOYMENT.md](./DEPLOYMENT.md) pour les instructions complètes.

### Résumé:
1. `git push` vers GitHub
2. Vercel se déploie automatiquement
3. C'est tout!

## FAQ

### Q: Comment ajouter un nouveau produit?
R: Éditer `src/data/products.json` et ajouter un objet produit. Vercel se redéploiera automatiquement.

### Q: Comment modifier les horaires du showroom?
R: Éditer `src/components/Footer.tsx` et les autres pages qui affichent les horaires.

### Q: Comment changer le CRM?
R: Modifier `NEXT_PUBLIC_CRM_URL` dans `.env.local` (local) et dans Vercel (production).

### Q: Comment ajouter des pages supplémentaires?
R: Créer un dossier dans `src/app/` avec `page.tsx`.

### Q: Où sont les erreurs de build?
R: Terminal lors du `npm run dev` ou `npm run build`.

### Q: Où sont les logs serveur?
R: Vercel > Deployments > [Dernier déploiement] > Logs

### Q: Comment réinitialiser le cache?
R: Vercel > Settings > Git > Deployments > Redeploy (et sélectionner une build précédente)

## Ressources

- [Next.js 14 Docs](https://nextjs.org/docs)
- [Tailwind CSS](https://tailwindcss.com)
- [Vercel Docs](https://vercel.com/docs)

---

**Besoin d'aide?**
- Consultez [DEPLOYMENT.md](./DEPLOYMENT.md) pour le déploiement
- Consultez [README.md](./README.md) pour la documentation complète
