# Propositions d'Améliorations — dimexoi-site

**Date :** 13 mars 2026
**Site :** Dimexoi — Meubles en Bois Exotique (La Réunion)

---

## 1. Performance

### 1.1 Migrer les images vers un vrai CDN
**Problème actuel :** Toutes les images produits sont hébergées sur Google Drive. Les URLs `lh3.googleusercontent.com` ne sont pas optimisées pour le web (pas de format WebP/AVIF automatique, pas de redimensionnement à la volée, latence variable).

**Solution :** Migrer vers Cloudinary ou Vercel Blob Storage.
- Conversion automatique WebP/AVIF
- Redimensionnement à la demande (responsive images)
- CDN global avec cache edge
- Transformations d'image (crop, blur placeholder, etc.)
- Estimation : gain de 30-50% sur le poids des images

### 1.2 Implémenter le Lazy Loading Avancé
**État actuel :** `next/image` avec `loading="lazy"` basique.

**Améliorations :**
- Ajouter des `placeholder="blur"` avec `blurDataURL` (générer des placeholders base64 de 10px)
- Utiliser `priority` sur les images above-the-fold (hero, premier produit visible)
- Implémenter un skeleton loader pour les grilles de produits
- Ajouter `sizes` correctement pour éviter de charger des images trop grandes sur mobile

### 1.3 Optimiser le Bundle JavaScript
**État actuel :** Dependencies minimales (seulement Next.js + React), ce qui est excellent.

**Améliorations :**
- Auditer avec `next build --analyze` pour identifier les gros chunks
- Mettre les composants de tracking (GTM, Meta Pixel) en `dynamic import` avec `ssr: false`
- Lazy-load le `DevisCartDrawer` (il n'est utile que quand on clique)
- Lazy-load le `CookieConsent` après le premier rendu

### 1.4 Ajouter le Pre-fetching Intelligent
- Utiliser `<Link prefetch={true}>` sur les liens de navigation principaux
- Pre-fetch les catégories de produits les plus visitées
- Utiliser l'Intersection Observer pour pre-fetch les produits visibles dans la grille

---

## 2. SEO & Référencement

### 2.1 Enrichir le Schema.org
**État actuel :** Schema FurnitureStore et LocalBusiness basiques.

**Améliorations :**
- Ajouter `Product` schema sur chaque fiche produit avec `offers`, `brand`, `material`
- Ajouter `BreadcrumbList` schema sur toutes les pages
- Ajouter `FAQ` schema sur la page À Propos et les fiches produits
- Ajouter `Article` schema sur les articles de blog
- Ajouter `Organization` schema avec logo, sameAs (réseaux sociaux)
- Ajouter `WebSite` schema avec `SearchAction` pour le sitelinks searchbox Google

### 2.2 Améliorer les Meta Tags
**Améliorations :**
- Ajouter des `meta description` uniques et optimisées par page (actuellement certaines sont génériques)
- Ajouter `og:image` spécifique par produit et article
- Ajouter les meta Twitter Card (`twitter:card`, `twitter:site`)
- Ajouter `alternate` hreflang si le site sera bilingue à terme
- Optimiser les title tags avec le format : `Mot-clé principal | Dimexoi`

### 2.3 Créer un Blog Actif
**État actuel :** 1 seul article de blog.

**Stratégie recommandée :**
- Publier 2-4 articles/mois ciblant des requêtes longue traîne
- Sujets : "comment choisir un meuble de salle de bain en teck", "entretien bois exotique", "tendances déco tropicale 2026"
- Chaque article doit cibler un mot-clé avec volume de recherche
- Maillage interne vers les produits du catalogue
- Ajouter un auteur avec photo et bio (E-E-A-T Google)

### 2.4 Ajouter une Page FAQ
- Créer `/faq` avec les questions fréquentes
- Utiliser le schema FAQ pour les rich snippets Google
- Questions types : délais de livraison, bois utilisés, sur-mesure, garantie, entretien

---

## 3. UX / Design

### 3.1 Améliorer le Catalogue
**Améliorations :**
- Ajouter des filtres visuels par matériau/finition avec des vignettes couleur
- Implémenter la pagination ou le scroll infini (actuellement tous les produits chargent d'un coup)
- Ajouter un compteur de résultats ("42 produits trouvés")
- Ajouter un tri par nouveauté, popularité
- Garder les filtres en état dans l'URL (pour le partage de liens filtrés)
- Ajouter une vue "liste" en plus de la vue "grille"

### 3.2 Améliorer les Fiches Produits
- Ajouter un zoom au survol/clic sur les images
- Ajouter un carrousel d'images plus fluide (swipe mobile)
- Afficher les produits similaires en bas de page ("Vous aimerez aussi")
- Ajouter des avis/témoignages clients (même simulés au début)
- Intégrer un bouton "Partager" (WhatsApp, email, copier le lien)
- Afficher la disponibilité du produit en showroom
- Ajouter les options de finition avec des pastilles visuelles

### 3.3 Améliorer la Navigation Mobile
- Le menu burger actuel est fonctionnel mais basique
- Ajouter des sous-menus par catégorie avec icônes
- Ajouter une barre de recherche sticky en mobile
- Ajouter un bottom navigation bar fixe (Accueil, Catalogue, Devis, Contact)
- Améliorer la taille des zones de tap (minimum 44x44px)

### 3.4 Ajouter des Micro-Interactions
- Animation d'ajout au panier devis (fly-to-cart)
- Feedback visuel sur les boutons CTA (ripple, scale)
- Transitions de page plus fluides
- Skeleton screens pendant le chargement
- Toast notifications pour les actions (ajout devis, envoi formulaire)

---

## 4. Conversion & Marketing

### 4.1 Optimiser le Tunnel de Devis
**État actuel :** Ajout au panier → Formulaire de devis.

**Améliorations :**
- Ajouter une barre de progression sur le formulaire de devis
- Proposer un récapitulatif visuel des produits dans le formulaire
- Ajouter un CTA flottant "Demander un devis" visible partout
- Implémenter une relance abandon de formulaire (si l'utilisateur ferme le drawer avec des articles)
- Envoyer un email de confirmation automatique après soumission

### 4.2 Ajouter un Chat en Ligne
- Intégrer un chatbot ou live chat (Crisp, Tawk.to, ou solution IA custom)
- Permet de qualifier les leads avant le formulaire de devis
- Disponibilité : heures d'ouverture showroom + bot hors horaires
- *(Voir le brief Claude Code pour la solution IA complète)*

### 4.3 Ajouter des Preuves Sociales
- Section témoignages clients sur la homepage et les fiches produits
- Badge "Meilleur choix" ou "Populaire" sur certains produits
- Compteur "X personnes ont demandé un devis pour ce produit"
- Logos partenaires/certifications
- Intégrer les avis Google My Business

### 4.4 Pop-up Newsletter Intelligent
- Déclencher un pop-up newsletter après 30s ou au scroll 50%
- Offrir un avantage (guide d'entretien PDF, -5% premier devis)
- Ne pas re-afficher si déjà inscrit (vérifier localStorage)
- Format non-intrusif (slide-in depuis le bas plutôt que modal plein écran)

### 4.5 Ajouter un Configurateur Visuel
- Permettre de choisir la finition (Miel, Brut, Cérusé...) et voir l'image changer en temps réel
- Configurateur de dimensions pour le sur-mesure
- Estimation de prix indicatif

---

## 5. Technique / Architecture

### 5.1 Migrer vers une Base de Données
**État actuel :** Données produits en JSON statique (168 KB).

**Pourquoi migrer :**
- Le JSON va devenir difficile à maintenir au-delà de 300 produits
- Pas de recherche full-text performante
- Pas de gestion de stock/disponibilité en temps réel
- Impossible de mettre à jour le catalogue sans redéployer

**Solution recommandée :** Supabase (PostgreSQL)
- Gratuit jusqu'à 500 MB
- API REST et realtime intégrés
- Dashboard admin pour gérer les produits
- Full-text search en PostgreSQL
- S'intègre nativement avec Next.js et Vercel

### 5.2 Créer un Back-Office Admin
- Interface pour ajouter/modifier/supprimer des produits
- Upload d'images directement
- Gestion du blog (éditeur WYSIWYG)
- Dashboard des demandes de devis
- Stats de consultation des produits

### 5.3 Ajouter des Tests
**État actuel :** Aucun test.

**Recommandation :**
- Tests unitaires avec Jest sur les fonctions utilitaires (`products.ts`, `blog.ts`, `utm.ts`)
- Tests d'intégration avec Testing Library sur les formulaires
- Tests E2E avec Playwright sur les parcours critiques (devis, contact)
- Couverture cible : 70% minimum

### 5.4 Ajouter un Monitoring
- Vercel Analytics (déjà disponible gratuitement)
- Sentry pour le suivi des erreurs frontend/API
- Uptime monitoring (UptimeRobot ou Better Uptime)
- Web Vitals monitoring (CLS, LCP, FID)

### 5.5 Implémenter l'ISR (Incremental Static Regeneration)
- Permet de mettre à jour les pages statiques sans redéployer
- Utile quand la base de données sera en place
- `revalidate: 3600` pour les pages catalogue (1h de cache)
- `revalidate: 86400` pour les pages statiques (24h)

---

## 6. Accessibilité (a11y)

### 6.1 Améliorations Nécessaires
- Ajouter des `aria-label` sur tous les boutons icônes (menu burger, fermer, panier)
- Vérifier les contrastes de couleurs (teak-brown sur fond clair peut être insuffisant)
- Ajouter des `alt` descriptifs sur toutes les images (pas seulement le nom du produit)
- S'assurer que la navigation au clavier fonctionne (focus trap dans le menu mobile et le drawer devis)
- Ajouter des `skip-to-content` links
- Tester avec un lecteur d'écran (VoiceOver, NVDA)

---

## 7. Prioritisation Recommandée

### Phase 1 — Quick Wins (1-2 semaines)
1. Headers de sécurité (middleware.ts)
2. Validation Zod sur les API
3. Rate limiting
4. Renommer NEXT_PUBLIC_CRM_URL
5. Améliorer les meta tags
6. Lazy-load des composants de tracking

### Phase 2 — UX & Conversion (2-4 semaines)
1. Améliorer le catalogue (pagination, compteur, filtres URL)
2. Améliorer les fiches produits (zoom, produits similaires)
3. Bottom nav mobile
4. Preuves sociales (témoignages)
5. Pop-up newsletter

### Phase 3 — Infrastructure (1-2 mois)
1. Migration Supabase
2. Back-office admin
3. Migration images CDN
4. Tests automatisés
5. Monitoring

### Phase 4 — Innovation (2-3 mois)
1. Chat IA conseiller meuble
2. Visualisation IA du meuble chez le client
3. Configurateur visuel de finitions
4. Blog actif avec stratégie SEO
