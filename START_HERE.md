# 🎯 COMMENCEZ ICI - DIMEXOI Website

Bienvenue! Ce fichier vous guide pour démarrer rapidement avec le site DIMEXOI.

## ✅ Étapes Rapides (10 minutes)

### 1️⃣ Installation Locale
```bash
cd dimexoi-site
npm install
npm run dev
```

Ouvrez [http://localhost:3000](http://localhost:3000) - C'est tout!

### 2️⃣ Explorer le Site
- 📄 **Accueil**: http://localhost:3000
- 📦 **Catalogue**: http://localhost:3000/catalogue
- 🎁 **Collections**: http://localhost:3000/collections
- 📝 **Devis**: http://localhost:3000/devis
- 📧 **Contact**: http://localhost:3000/contact
- ℹ️ **À Propos**: http://localhost:3000/a-propos

### 3️⃣ Éditer le Contenu
Modifiez `src/data/products.json` pour ajouter/modifier des produits.

### 4️⃣ Déployer sur Vercel
Suivez [DEPLOYMENT.md](./DEPLOYMENT.md) (30 minutes).

## 📚 Documentation

| Fichier | Objectif | Durée |
|---------|----------|-------|
| **[QUICKSTART.md](./QUICKSTART.md)** | Guide rapide pour développeurs | 5 min |
| **[README.md](./README.md)** | Documentation complète | 15 min |
| **[DEPLOYMENT.md](./DEPLOYMENT.md)** | Déployer sur Vercel | 30 min |
| **[PROJECT_SUMMARY.md](./PROJECT_SUMMARY.md)** | Vue d'ensemble du projet | 10 min |
| **[ROUTES.md](./ROUTES.md)** | Toutes les routes API et pages | 5 min |
| **[FILES.md](./FILES.md)** | Liste détaillée de tous les fichiers | 10 min |

## 🏗️ Structure du Projet

```
dimexoi-site/
├── src/app/              ← Pages (7 pages)
├── src/components/       ← Composants (8 composants)
├── src/api/             ← API routes (3 endpoints)
├── src/data/            ← products.json (168 KB)
├── src/lib/             ← Utilitaires
├── public/              ← Assets statiques
└── [config files]       ← next.config, tailwind, tsconfig, etc.
```

## 🚀 Prochaines Étapes

### Pour Développer Localement
1. Lire [QUICKSTART.md](./QUICKSTART.md)
2. Lancer `npm run dev`
3. Explorer et modifier le code
4. Tester les formulaires

### Pour Déployer sur Vercel
1. Lire [DEPLOYMENT.md](./DEPLOYMENT.md)
2. Créer un repository GitHub
3. Créer un compte Vercel
4. Configurer le domaine

### Pour Comprendre le Projet
1. Lire [PROJECT_SUMMARY.md](./PROJECT_SUMMARY.md)
2. Consulter [README.md](./README.md)
3. Explorer les fichiers source dans `src/`

### Pour Maintenir le Site
1. Modifier `src/data/products.json` pour ajouter des produits
2. Modifier les pages dans `src/app/` pour le contenu
3. Git push → Vercel redéploie automatiquement

## 💡 Tips

### Ajouter un Produit
```json
// Dans src/data/products.json
{
  "id": 101,
  "name": "Nouveau Produit",
  "slug": "nouveau-produit",
  "category": "Salon",
  "subcategory": "Table",
  "dimensions": "100 x 50 x 75 cm",
  "images": ["https://drive.google.com/uc?export=view&id=FILE_ID"],
  "description": "✓ Détails du produit",
  "collection": "Collection Name"
}
```

### Modifier les Horaires
Éditer 4 endroits:
1. `src/components/Footer.tsx` (2 showrooms)
2. `src/app/page.tsx` (section CTA)
3. `src/app/contact/page.tsx` (cartes)
4. `src/app/a-propos/page.tsx` (team)

### Ajouter une Page
```bash
mkdir src/app/nouvelle-page
echo "export default function Page() { return <h1>Hello</h1> }" > src/app/nouvelle-page/page.tsx
```

Puis ajouter le lien dans `src/components/Header.tsx`.

### Tester les Formulaires
1. Aller à http://localhost:3000/devis ou http://localhost:3000/contact
2. Remplir le formulaire
3. Cliquer "Envoyer"
4. Vérifier la réponse (si CRM accessible)

## ⚙️ Configuration

### Variables d'Environnement
```env
NEXT_PUBLIC_CRM_URL=https://kokpit-kappa.vercel.app/
```

### Couleurs
- 🟫 Beige chaud: `#F5F0EB`
- 🟢 Olive: `#4A5D23`
- 🟡 Teak: `#8B6914`
- ⚪ Off-white: `#FDFBF7`
- ⬛ Charcoal: `#2C2C2C`

### Fonts
- **Headings**: Playfair Display (serif)
- **Body**: Inter (sans-serif)

## 🐛 Dépannage

### Build échoue
```bash
npm run build  # Test localement
```

### Images ne s'affichent pas
- Vérifier les URLs Google Drive
- Vérifier que `next.config.js` accepte `drive.google.com`

### Formulaires ne fonctionnent pas
- Vérifier `NEXT_PUBLIC_CRM_URL` dans `.env.local`
- Vérifier que le CRM est accessible

## 📞 Contacts

### DIMEXOI
- **SUD**: 0262 35 06 79 | contact@dimexoi.fr
- **NORD**: 0262 20 30 30 | bernard.runasia@gmail.com

### Support Tech
- [Next.js Docs](https://nextjs.org/docs)
- [Tailwind Docs](https://tailwindcss.com/docs)
- [Vercel Docs](https://vercel.com/docs)

## ✨ Fonctionnalités

### Incluses
✅ 7 pages principales (Accueil, Catalogue, Collections, Devis, Contact, À propos)
✅ Catalogue dynamique avec 100+ produits
✅ Filtrage et recherche en temps réel
✅ Formulaires avec intégration CRM
✅ Galerie d'images responsive
✅ SEO complet (sitemap, robots.txt, métadonnées)
✅ Optimisation images
✅ Mobile-friendly
✅ Prêt pour Vercel
✅ Documentation complète

### À Venir (Optionnel)
- Google Analytics
- Blog/Actualités
- Newsletter complète
- Panier panier (si e-commerce)
- Multi-langue

## 📊 Project Stats

- **Pages**: 7 (statiques et dynamiques)
- **Composants**: 8 réutilisables
- **API Endpoints**: 3 (devis, contact, newsletter)
- **Produits**: 100+
- **Fichiers**: 37 (sans node_modules)
- **Taille**: ~300 KB (sans node_modules)
- **Tech**: Next.js 14, TypeScript, Tailwind CSS
- **Deployment**: Vercel (gratuit pour starter)

## 🎯 Checklist Lancement

- [ ] Code sur GitHub
- [ ] Vercel projet créé
- [ ] Domaine configuré
- [ ] Variables d'environnement définies
- [ ] Tous les produits importés
- [ ] Formulaires testés
- [ ] PageSpeed 90+
- [ ] SEO vérifié
- [ ] Équipe formée
- [ ] Site en ligne! 🎉

## 📖 Prochaine Lecture

**Nouveau par ici?**
→ Lisez [QUICKSTART.md](./QUICKSTART.md) (5 minutes)

**Prêt à déployer?**
→ Lisez [DEPLOYMENT.md](./DEPLOYMENT.md) (30 minutes)

**Besoin de comprendre le projet?**
→ Lisez [PROJECT_SUMMARY.md](./PROJECT_SUMMARY.md) (10 minutes)

---

**Bienvenue dans le projet DIMEXOI!** 🎊

Le site est prêt à être développé et déployé. Commencez par exécuter `npm install && npm run dev` et explorez le site sur http://localhost:3000.

Bonne chance! 🚀
