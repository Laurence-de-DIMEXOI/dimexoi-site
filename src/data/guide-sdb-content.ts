export interface ConseilEncart {
  type: 'conseil' | 'info';
  text: string;
}

export interface ConseilSection {
  id: string;
  number: number;
  title: string;
  intro?: string;
  paragraphs: string[];
  encart?: ConseilEncart;
  subsections?: {
    title: string;
    description: string;
    items?: string[];
  }[];
  steps?: {
    number: number;
    title: string;
    description: string;
  }[];
  list?: string[];
  columns?: {
    title: string;
    items: string[];
  }[];
}

export const guideSdbConseils: ConseilSection[] = [
  {
    id: 'conseil-1',
    number: 1,
    title: 'Le teck résiste naturellement à l\'eau',
    paragraphs: [
      'Le teck (Tectona Grandis) contient une huile naturelle appelée oléorésine. C\'est cette huile qui le rend naturellement imperméable, résistant aux moisissures et aux insectes. Aucun autre bois n\'offre cette combinaison.',
      'C\'est pour ça qu\'on l\'utilise depuis des siècles dans la construction navale. Si le teck tient sur un pont de bateau en pleine mer, il tiendra dans votre salle de bain.',
    ],
    encart: {
      type: 'conseil',
      text: 'Pas besoin de traitement chimique. Pas besoin de vernis. Le bois travaille pour vous.',
    },
  },
  {
    id: 'conseil-2',
    number: 2,
    title: 'Choisissez la finition qui vous ressemble',
    paragraphs: [
      'Il existe trois grandes finitions pour le teck en salle de bain. Chacune donne un caractère différent à la pièce.',
    ],
    subsections: [
      {
        title: 'Teck miel (huilé)',
        description: 'La finition la plus chaleureuse. Le bois garde sa couleur dorée naturelle, avec un toucher satiné. Idéal pour une salle de bain lumineuse et accueillante.',
      },
      {
        title: 'Teck cérusé blanc',
        description: 'Le bois est brossé puis patiné en blanc. Les veines ressortent, l\'effet est plus contemporain. Parfait pour une ambiance bord de mer ou scandinave.',
      },
      {
        title: 'Teck brut (naturel)',
        description: 'Le bois est laissé tel quel. Il va griser légèrement avec le temps, ce qui lui donne un charme authentique. Pour ceux qui aiment le caractère du bois vivant.',
      },
    ],
    encart: {
      type: 'conseil',
      text: 'Venez voir et toucher les trois finitions en showroom. La photo ne rend pas justice à la différence de texture entre le miel et le cérusé.',
    },
  },
  {
    id: 'conseil-3',
    number: 3,
    title: 'Vasque simple ou double : la vraie question',
    paragraphs: [
      'Ce n\'est pas une question de taille de salle de bain. C\'est une question de mode de vie.',
    ],
    columns: [
      {
        title: 'Vasque simple si :',
        items: [
          'Vous vivez seul(e) ou en couple sans enfants',
          'Vous aimez l\'espace dégagé',
          'Votre salle de bain fait moins de 6 m²',
        ],
      },
      {
        title: 'Vasque double si :',
        items: [
          'Vous êtes deux à vous préparer en même temps le matin',
          'Vous avez des enfants qui grandissent',
          'Vous avez la place (comptez minimum 120 cm de largeur)',
        ],
      },
    ],
    encart: {
      type: 'conseil',
      text: 'Un meuble vasque simple avec un grand plan de travail en teck donne une impression d\'espace tout en gardant le rangement. C\'est souvent le meilleur compromis.',
    },
  },
  {
    id: 'conseil-4',
    number: 4,
    title: 'Les dimensions à connaître avant de mesurer',
    paragraphs: [
      'Avant d\'aller en showroom, prenez 3 mesures chez vous.',
    ],
    steps: [
      {
        number: 1,
        title: 'La largeur disponible',
        description: 'Mesurez le mur ou ira le meuble, d\'angle à angle ou entre les obstacles (WC, douche, porte). Notez la mesure en centimètres.',
      },
      {
        number: 2,
        title: 'La profondeur disponible',
        description: 'Un meuble vasque standard fait entre 45 et 55 cm de profondeur. Vérifiez que vous pouvez encore ouvrir la porte et circuler.',
      },
      {
        number: 3,
        title: 'La hauteur de l\'évacuation',
        description: 'Repérez où sort le tuyau d\'évacuation du mur. C\'est ce qui détermine si vous pouvez poser un meuble sur pieds ou s\'il faudra un meuble suspendu.',
      },
    ],
    encart: {
      type: 'conseil',
      text: 'Prenez une photo de votre salle de bain actuelle et apportez vos mesures en showroom. Notre équipe pourra vous orienter directement vers les bonnes dimensions - ou vous proposer du sur mesure.',
    },
  },
  {
    id: 'conseil-5',
    number: 5,
    title: 'Le sur-mesure n\'est pas un luxe',
    paragraphs: [
      'Beaucoup de clients pensent que le sur mesure est réservé aux gros budgets. En réalité, chez DIMEXOI, le sur mesure est une option accessible qui permet :',
    ],
    list: [
      'Adapter les dimensions exactes à votre espace (à 1 cm près)',
      'Choisir la finition, la teinte et le type de poignées',
      'Intégrer des rangements spécifiques (niche ouverte, tiroir intérieur, étagère)',
      'Créer un ensemble cohérent avec le reste de votre salle de bain',
    ],
    encart: {
      type: 'conseil',
      text: 'Notre dessinateur est disponible sur rendez-vous pour concevoir votre projet avec vous, plan en main.',
    },
  },
  {
    id: 'conseil-6',
    number: 6,
    title: 'Ne négligez pas la colonne et le miroir',
    paragraphs: [
      'Le meuble vasque attire toute l\'attention, mais une salle de bain bien pensée, c\'est un ensemble. Deux éléments font toute la différence.',
    ],
    subsections: [
      {
        title: 'La colonne de rangement',
        description: 'Elle libère le plan du travail du désordre. Serviettes, produits, linge - tout disparaît. En teck, elle s\'intègre naturellement au meuble vasque et donne une cohérence visuelle à l\'ensemble.',
      },
      {
        title: 'Le miroir en teck',
        description: 'C\'est le détail que vos invités remarqueront en premier. Un miroir avec un cadre en teck massif apporte de la chaleur et du caractère. Il transforme une salle de bain fonctionnelle en une pièce de vie.',
      },
    ],
    encart: {
      type: 'conseil',
      text: 'Pensez "ensemble" plutôt que "pièce par pièce". Le rendu est incomparable.',
    },
  },
  {
    id: 'conseil-7',
    number: 7,
    title: 'L\'entretien est plus simple que vous ne croyez',
    paragraphs: [
      'C\'est LA question que tout le monde pose. Et la réponse va vous rassurer.',
    ],
    subsections: [
      {
        title: 'Au quotidien',
        description: 'Un coup d\'éponge humide. C\'est tout. Comme n\'importe quel meuble.',
      },
      {
        title: 'Tous les 6 à 12 mois',
        description: 'Une couche d\'huile de teck avec un chiffon doux. 15 minutes maximum. L\'huile nourrit le bois et ravive sa couleur. Vous pouvez le faire un dimanche matin en prenant votre café. (selon finition)',
      },
      {
        title: 'Ce qu\'il ne faut PAS faire',
        description: '',
        items: [
          'Pas de produits abrasifs (Javel, détartrant, vinaigre pur)',
          'Pas de jet d\'eau haute pression',
          'Pas d\'éponge grattante',
        ],
      },
    ],
    encart: {
      type: 'conseil',
      text: 'Un meuble en teck bien entretenu dure des décennies. On a des clients qui ont leurs meubles depuis plus de 15 ans et qui sont comme neufs.',
    },
  },
  {
    id: 'conseil-8',
    number: 8,
    title: 'Les 5 erreurs à éviter absolument',
    paragraphs: [],
    steps: [
      {
        number: 1,
        title: 'Acheter sur photo uniquement',
        description: 'Le teck a une texture, une couleur et une chaleur que la photo ne restitue pas. Venez toucher avant de décider.',
      },
      {
        number: 2,
        title: 'Oublier l\'aération',
        description: 'Le teck résiste à l\'eau, mais une salle de bain a besoin d\'aération pour le confort et la longévité de tous les matériaux. Ouvrez la fenêtre ou allumez la VMC après la douche.',
      },
      {
        number: 3,
        title: 'Choisir la finition sur écran',
        description: 'Le teck miel et le teck cérusé sont très différents en vrai. Ne choisissez jamais votre finition sur un écran de téléphone.',
      },
      {
        number: 4,
        title: 'Négliger les pieds du meuble',
        description: 'Vérifiez que les pieds ne baignent pas dans l\'eau stagnante. Un meuble sur pieds surélevés ou suspendu élimine ce problème.',
      },
      {
        number: 5,
        title: 'Attendre trop longtemps pour huiler',
        description: 'Le premier huilage est le plus important. Faites-le dans le mois qui suit l\'installation.',
      },
    ],
  },
  {
    id: 'conseil-9',
    number: 9,
    title: 'Le teck et La Réunion : un mariage naturel',
    paragraphs: [
      'Le climat réunionnais est humide et chaud - exactement les conditions dans lesquelles le teck prospère dans son milieu naturel.',
      'Là où d\'autres bois gonflent, se déforment ou moisissent, le teck reste stable. Sa densité naturelle et son oléorésine en font le bois idéal pour les intérieurs péi.',
      'D\'ailleurs, si vous avez un espace extérieur (terrasse, varangue, jardin), le teck y est aussi chez lui. Tables, chaises, bancs - le même bois dedans et dehors, pour une cohérence totale.',
    ],
  },
  {
    id: 'conseil-10',
    number: 10,
    title: 'Préparez votre visite en showroom',
    paragraphs: [
      'Pour gagner du temps et repartir avec un vrai projet, voici ce qu\'il faut apporter :',
    ],
    list: [
      'Vos 3 mesures (largeur, profondeur, hauteur d\'évacuation - voir conseil 4)',
      'Votre budget approximatif (même une fourchette aide votre conseiller à cibler)',
      'Une photo de votre salle de bain actuelle',
      'Vos envies : finition, vasque simple ou double, avec ou sans colonne',
    ],
    encart: {
      type: 'info',
      text: 'En showroom, vous pourrez voir et toucher chaque finition, comparer les dimensions, et repartir avec un devis gratuit personnalisé. Pas d\'engagement, pas de pression - juste du conseil.',
    },
  },
  {
    id: 'conseil-11',
    number: 11,
    title: 'Le bon moment pour aménager sa salle de bain',
    paragraphs: [
      'Il n\'y a pas de mauvais moment, mais il y a des moments plus malins :',
    ],
    subsections: [
      {
        title: 'Quand vous rénovez votre carrelage ou votre plomberie',
        description: 'Profitez-en pour intégrer le meuble dans le projet global. Le plombier pourra adapter l\'évacuation si besoin.',
      },
      {
        title: 'Quand vous emménagez',
        description: 'La salle de bain est la première pièce qu\'on utilise le matin et la dernière le soir. Autant qu\'elle soit agréable dès le départ.',
      },
      {
        title: 'Quand vous en avez assez de votre meuble actuel',
        description: 'Pas besoin de gros travaux. Un meuble vasque en teck se pose et se raccorde en quelques heures. Le changement est immédiat et spectaculaire.',
      },
    ],
  },
  {
    id: 'conseil-12',
    number: 12,
    title: 'Faites-vous accompagner (c\'est gratuit)',
    paragraphs: [
      'Le dernier conseil est le plus important : ne restez pas seul(e) avec votre projet.',
      'Chez DIMEXOI et Bois d\'Orient, le conseil est gratuit. Le devis est gratuit. La visite est sans engagement. Notre équipe connaît chaque meuble, chaque finition, chaque astuce d\'installation.',
      'Et si votre projet nécessite du sur mesure, notre dessinateur peut concevoir votre salle de bain idéale sur rendez-vous : avec vos mesures, vos envies et votre budget.',
    ],
  },
];

export const guideSdbMeta = {
  title: 'Aménager sa salle de bain en teck',
  subtitle: '12 conseils pour un résultat durable et élégant',
  author: 'DIMEXOI x Bois d\'Orient',
  pdfUrl: '/guides/amenager-salle-de-bain-en-teck.pdf',
  coverImage: '/images/blog/guide-sdb-cover.png',
};
