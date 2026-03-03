# Guide de Déploiement - DIMEXOI

Ce document vous guide à travers le déploiement du site DIMEXOI sur Vercel.

## Étape 1: Préparer le Code

### 1.1 Initialiser Git (si ce n'est pas déjà fait)
```bash
cd dimexoi-site
git init
git add .
git commit -m "feat: Initial DIMEXOI website commit"
```

### 1.2 Créer un Repository GitHub
1. Aller sur [github.com/new](https://github.com/new)
2. Créer un repository `dimexoi-site`
3. Ne pas initialiser avec README/gitignore (nous les avons déjà)
4. Cliquer "Create repository"

### 1.3 Pousser le code vers GitHub
```bash
git remote add origin https://github.com/YOUR_USERNAME/dimexoi-site.git
git branch -M main
git push -u origin main
```

## Étape 2: Déployer sur Vercel

### 2.1 Créer un compte Vercel (si ce n'est pas fait)
1. Aller sur [vercel.com](https://vercel.com)
2. Cliquer "Sign Up"
3. Choisir "Continue with GitHub"
4. Autoriser Vercel à accéder à votre GitHub

### 2.2 Créer un nouveau projet
1. Dans le dashboard Vercel, cliquer "Add New..." > "Project"
2. Sélectionner le repository `dimexoi-site`
3. Cliquer "Import"

### 2.3 Configurer les variables d'environnement
1. Dans la section "Environment Variables", ajouter:
   - **Key**: `NEXT_PUBLIC_CRM_URL`
   - **Value**: `https://kokpit-kappa.vercel.app/` (ou votre CRM)
2. Cliquer "Add"

### 2.4 Déployer
1. Vercel va automatiquement détecter `package.json` et configurer le projet
2. Cliquer "Deploy"
3. Attendre que le déploiement se termine (2-5 minutes)

## Étape 3: Configurer le Domaine

### 3.1 Si vous avez un domaine personnalisé

#### Option A: Domaine chez Vercel
1. Dans les settings du projet Vercel > "Domains"
2. Ajouter le domaine (ex: `dimexoi.re`)
3. Cliquer "Add"
4. Suivre les instructions pour ajouter les enregistrements DNS

#### Option B: Domaine chez un autre registraire
1. Dans les settings Vercel, cliquer "Add Domain"
2. Entrer votre domaine
3. Récupérer les nameservers Vercel:
   - `ns1.vercel.com`
   - `ns2.vercel.com`
4. Aller chez votre registraire (GoDaddy, Namecheap, etc.)
5. Remplacer les nameservers par ceux de Vercel
6. Attendre 24-48h pour la propagation DNS

### 3.2 Configurer SSL
- Vercel ajoute automatiquement les certificats SSL Let's Encrypt
- Vos domaines seront accessibles en HTTPS

## Étape 4: Tests Post-Déploiement

### 4.1 Tester les pages principales
- [ ] Page d'accueil : https://votre-domaine.com
- [ ] Catalogue : https://votre-domaine.com/catalogue
- [ ] Détail produit : https://votre-domaine.com/catalogue/bureau-eddy
- [ ] Collections : https://votre-domaine.com/collections
- [ ] À propos : https://votre-domaine.com/a-propos
- [ ] Devis : https://votre-domaine.com/devis
- [ ] Contact : https://votre-domaine.com/contact

### 4.2 Tester les formulaires
- [ ] Formulaire de devis envoie les données (vérifier dans le CRM)
- [ ] Formulaire de contact fonctionne
- [ ] Messages d'erreur s'affichent correctement

### 4.3 Vérifier les images
- [ ] Images des produits depuis Google Drive s'affichent
- [ ] Images Unsplash se chargent correctement
- [ ] Images responsive sur mobile/tablette/desktop

### 4.4 Vérifier le SEO
- [ ] Vérifier le sitemap: https://votre-domaine.com/sitemap.xml
- [ ] Vérifier robots.txt: https://votre-domaine.com/robots.txt
- [ ] Vérifier les métadonnées (F12 > Elements > head)

### 4.5 Tests Mobile
- [ ] Header responsive (menu hamburger)
- [ ] Grille de produits responsive
- [ ] Formulaires accessibles
- [ ] Images redimensionnées

### 4.6 PageSpeed Insights
1. Aller sur [pagespeed.web.dev](https://pagespeed.web.dev)
2. Entrer votre URL
3. Cliquer "Analyze"
4. Target: 90+ pour tous les domaines

## Étape 5: Configuration Avancée (Optionnel)

### 5.1 Analytics
1. Dans Vercel > Settings > Analytics
2. Cliquer "Enable Web Analytics"

### 5.2 Monitoring
1. Dans Vercel > Settings > Monitoring
2. Configurer les alertes pour les erreurs

### 5.3 Certificat personnalisé
Si vous voulez utiliser un certificat SSL personnalisé plutôt que Let's Encrypt:
1. Vercel > Settings > Domains
2. Cliquer sur votre domaine > Edit
3. Télécharger votre certificat

### 5.4 Redirections personnalisées
Ajouter un `vercel.json` à la racine du projet:
```json
{
  "redirects": [
    {
      "source": "/old-page",
      "destination": "/new-page",
      "permanent": true
    }
  ]
}
```

## Étape 6: Maintenance Continue

### 6.1 Mettre à jour le catalogue
1. Modifier `src/data/products.json`
2. Committer et pousser vers GitHub
```bash
git add src/data/products.json
git commit -m "update: Update product catalog"
git push
```
3. Vercel redéploiera automatiquement

### 6.2 Mettre à jour le contenu
1. Modifier les pages concernées dans `src/app/`
2. Committer et pousser
3. Vercel redéploiera automatiquement

### 6.3 Mettre à jour les variables d'environnement
1. Vercel > Settings > Environment Variables
2. Modifier ou ajouter des variables
3. Redéployer depuis Git ou depuis le dashboard Vercel

## Dépannage

### Les images Google Drive ne s'affichent pas
- Vérifier que les images sont partagées publiquement
- Vérifier que les URLs commencent par `https://drive.google.com/uc?export=view&id=...`
- Vérifier que `next.config.js` permet le domaine `drive.google.com`

### Les formulaires ne fonctionnent pas
- Vérifier que `NEXT_PUBLIC_CRM_URL` est correcte
- Vérifier que le CRM est accessible
- Vérifier les logs Vercel: Vercel > Deployments > [Dernier déploiement] > Logs

### Build échoue
- Vérifier que `npm run build` fonctionne localement
- Vérifier les logs Vercel pour les erreurs
- Vérifier que toutes les variables d'environnement sont configurées

### Site blanc après déploiement
- Attendre 5-10 minutes pour que Vercel termine la construction
- Vérifier l'onglet Network (F12) pour les erreurs 404/500
- Vérifier les logs serveur Vercel

## Contacts Support

- **Vercel Support**: [vercel.com/support](https://vercel.com/support)
- **Next.js Docs**: [nextjs.org/docs](https://nextjs.org/docs)
- **DIMEXOI**: contact@dimexoi.fr | 0262 35 06 79

## Checklist Final

- [ ] Repository GitHub créé
- [ ] Code poussé vers GitHub
- [ ] Projet Vercel créé
- [ ] Variables d'environnement configurées
- [ ] Domaine configuré
- [ ] SSL/HTTPS activé
- [ ] Toutes les pages testées
- [ ] Formulaires testés
- [ ] Images vérifiées
- [ ] PageSpeed Insights: 90+
- [ ] SEO vérifié
- [ ] Analytics activé (optionnel)

---

**Noté**: Après le déploiement initial, les mises à jour futures seront automatiques. Il suffit de pousser vos changements vers GitHub et Vercel redéploiera automatiquement.

**Temps estimé**: 30-60 minutes pour la configuration initiale + 24-48h pour la propagation DNS si vous changez les nameservers.
