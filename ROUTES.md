# Routes Disponibles - DIMEXOI Website

## Routes Publiques (Pages)

### Pages Principales
| Route | Description | Status |
|-------|-------------|--------|
| `/` | Accueil - Homepage avec hero, catégories, produits en vedette | ✅ Actif |
| `/catalogue` | Catalogue complet avec filtres et recherche | ✅ Actif |
| `/catalogue/[slug]` | Détail d'un produit spécifique | ✅ Dynamique |
| `/collections` | Vue d'ensemble de toutes les collections | ✅ Actif |
| `/devis` | Formulaire de demande de devis | ✅ Actif |
| `/contact` | Formulaire de contact avec maps | ✅ Actif |
| `/a-propos` | Page à propos de l'entreprise | ✅ Actif |

### Pages Techniques SEO
| Route | Description | Format |
|-------|-------------|--------|
| `/sitemap.xml` | Sitemap XML pour SEO | XML auto-généré |
| `/robots.txt` | Robots.txt pour crawlers | TXT auto-généré |

## Routes API (Endpoints)

### Formulaires
| Méthode | Route | Description | Returns |
|---------|-------|-------------|---------|
| POST | `/api/devis` | Soumet une demande de devis au CRM | JSON |
| POST | `/api/contact` | Soumet un message de contact au CRM | JSON |
| POST | `/api/newsletter` | Abonne un email à la newsletter | JSON |

### Format des Requêtes

#### POST /api/devis
```json
{
  "name": "Jean Dupont",
  "email": "jean@example.com",
  "phone": "0262123456",
  "product": "bureau-eddy",
  "projectType": "renovation",
  "message": "Je suis intéressé par ce produit",
  "showroom": "sud"
}
```

Response:
```json
{
  "success": true,
  "message": "Devis submitted successfully"
}
```

#### POST /api/contact
```json
{
  "name": "Jean Dupont",
  "email": "jean@example.com",
  "phone": "0262123456",
  "subject": "Question sur les produits",
  "message": "Votre message ici"
}
```

Response:
```json
{
  "success": true,
  "message": "Contact form submitted successfully"
}
```

#### POST /api/newsletter
```json
{
  "email": "jean@example.com"
}
```

Response:
```json
{
  "success": true,
  "message": "Subscribed successfully"
}
```

## Filtrage Catalogue

### Query Parameters
| Parameter | Values | Exemple |
|-----------|--------|---------|
| `category` | Chambre, Entrée, Extérieur, Salle de bains, Salle à manger, Salon, Sur-mesure | `/catalogue?category=Salon` |
| `subcategory` | Dépend de la catégorie | `/catalogue?category=Salon&subcategory=Meuble+TV` |
| `collection` | Noms de collections | `/catalogue?collection=Collection+Name` |
| `search` | Texte libre | `/catalogue?search=bureau` |

### Exemples d'URLs
```
/catalogue
/catalogue?category=Salon
/catalogue?category=Chambre&subcategory=Bureau
/catalogue?search=teck
/catalogue/bureau-eddy
/collections
/collections?filter=2024
/devis
/devis?product=bureau-eddy
/contact
/a-propos
```

## Redirection de Produits

### Pré-remplir le formulaire de Devis
Vous pouvez pré-remplir le formulaire de devis avec un produit spécifique en utilisant le query parameter:
```
/devis?product=bureau-eddy
```

Le formulaire affichera automatiquement le produit sélectionné.

## Catégories de Produits

### Catégories Disponibles (7)
1. **Chambre** - Lits, bureaux, commodes, armoires
2. **Entrée** - Porte-manteaux, consoles, miroirs
3. **Extérieur** - Salons de jardin, tables, chaises
4. **Salle de bains** - Meubles salle de bain, accessoires
5. **Salle à manger** - Tables, chaises, buffets, vaisselliers
6. **Salon** - Canapés, tables basses, étagères, meubles TV
7. **Sur-mesure** - Créations sur demande, adaptations personnalisées

### Slugs de Catégories
Les URLs utilisent les noms exacts:
```
/catalogue?category=Chambre
/catalogue?category=Salon
/catalogue?category=Salle+à+manger
/catalogue?category=Salle+de+bains
/catalogue?category=Extérieur
/catalogue?category=Entrée
/catalogue?category=Sur-mesure
```

## Exemples d'URLs Complètes

### Navigation
```
https://dimexoi.re/
https://dimexoi.re/catalogue
https://dimexoi.re/collections
https://dimexoi.re/devis
https://dimexoi.re/contact
https://dimexoi.re/a-propos
```

### Produits Spécifiques
```
https://dimexoi.re/catalogue/bureau-eddy
https://dimexoi.re/catalogue/lit-stockholm
https://dimexoi.re/catalogue/table-salon
```

### Avec Filtres
```
https://dimexoi.re/catalogue?category=Chambre
https://dimexoi.re/catalogue?category=Salon&subcategory=Meuble+TV
https://dimexoi.re/catalogue?search=bureau
```

### Avec Produit Pré-rempli
```
https://dimexoi.re/devis?product=bureau-eddy
```

### SEO Techniques
```
https://dimexoi.re/sitemap.xml
https://dimexoi.re/robots.txt
```

## Hiérarchie des Pages

```
/
├── /catalogue
│   ├── /catalogue?category=Chambre
│   ├── /catalogue?category=Salon
│   ├── /catalogue?category=Entrée
│   ├── /catalogue?category=Extérieur
│   ├── /catalogue?category=Salle+à+manger
│   ├── /catalogue?category=Salle+de+bains
│   ├── /catalogue?category=Sur-mesure
│   ├── /catalogue/bureau-eddy
│   ├── /catalogue/bureau-informatique
│   └── ... (tous les 100+ produits)
├── /collections
├── /devis
├── /devis?product=bureau-eddy
├── /contact
└── /a-propos

/api/
├── /api/devis (POST)
├── /api/contact (POST)
└── /api/newsletter (POST)

Techniques SEO:
├── /sitemap.xml
└── /robots.txt
```

## Génération de Links Dynamiques

### Catalogue par Catégorie
```tsx
/catalogue?category=${encodeURIComponent(categoryName)}
```

### Détail Produit
```tsx
/catalogue/${productSlug}
```

### Devis Produit Spécifique
```tsx
/devis?product=${productSlug}
```

## Gestion des Erreurs

### Pages 404
Si un produit n'existe pas:
```
/catalogue/produit-inexistant → 404 page
```

### Pages Non-Trouvées
Une page 404 par défaut Next.js est affichée.

## Performance & Caching

### Static Pages (buildtime)
```
/
/collections
/a-propos
```

### Dynamic Pages (avec ISR)
```
/catalogue/[slug] - Regénéré toutes les heures
```

### API Routes (realtime)
```
/api/devis - POST en temps réel
/api/contact - POST en temps réel
/api/newsletter - POST en temps réel
```

## Résumé

- **7 pages principales** accessibles au public
- **100+ pages de détail produit** générées dynamiquement
- **3 endpoints API** pour les formulaires
- **Sitemap XML** auto-généré
- **Robots.txt** auto-généré
- **Filtrage & recherche** en temps réel
- **URL-based filtering** pour le partage
- **Pré-remplissage de formulaires** supporté

---

**Note**: Toutes les URLs sont relatives à votre domaine.
Par exemple: `https://dimexoi.re/catalogue` (remplacer dimexoi.re par votre domaine)
