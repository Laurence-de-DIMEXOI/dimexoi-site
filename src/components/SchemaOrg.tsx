export function LocalBusinessSchema() {
  const schema = {
    '@context': 'https://schema.org',
    '@type': 'FurnitureStore',
    name: 'DIMEXOI',
    alternateName: "BOIS d'Orient by DIMEXOI",
    description: 'Mobilier en teck haut de gamme depuis 1995 \u00e0 La R\u00e9union. Meubles artisanaux en teck massif Tectona Grandis.',
    url: 'https://dimexoi.re',
    telephone: '+262262350679',
    email: 'contact@dimexoi.fr',
    foundingDate: '1995',
    numberOfEmployees: '8',
    priceRange: '\u20ac\u20ac\u20ac',
    currenciesAccepted: 'EUR',
    paymentAccepted: 'Cash, Credit Card, Bank Transfer',
    areaServed: {
      '@type': 'Place',
      name: '\u00cele de La R\u00e9union',
      address: {
        '@type': 'PostalAddress',
        addressRegion: 'La R\u00e9union',
        addressCountry: 'FR',
      },
    },
    aggregateRating: {
      '@type': 'AggregateRating',
      ratingValue: '4.9',
      bestRating: '5',
      ratingCount: '150',
      reviewCount: '120',
    },
    location: [
      {
        '@type': 'Place',
        name: 'DIMEXOI Showroom SUD',
        address: {
          '@type': 'PostalAddress',
          streetAddress: '8 rue Benjamin Hoareau, ZI n\u00b03',
          addressLocality: 'Saint-Pierre',
          postalCode: '97410',
          addressRegion: 'La R\u00e9union',
          addressCountry: 'FR',
        },
        telephone: '+262262350679',
        openingHoursSpecification: [
          {
            '@type': 'OpeningHoursSpecification',
            dayOfWeek: ['Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
            opens: '09:00',
            closes: '17:00',
          },
        ],
        geo: {
          '@type': 'GeoCoordinates',
          latitude: -21.3392,
          longitude: 55.4751,
        },
      },
      {
        '@type': 'Place',
        name: 'DIMEXOI Showroom NORD',
        address: {
          '@type': 'PostalAddress',
          streetAddress: '43 rue Tourette',
          addressLocality: 'Saint-Denis',
          postalCode: '97400',
          addressRegion: 'La R\u00e9union',
          addressCountry: 'FR',
        },
        telephone: '+262262203030',
        openingHoursSpecification: [
          {
            '@type': 'OpeningHoursSpecification',
            dayOfWeek: ['Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
            opens: '10:00',
            closes: '18:00',
          },
        ],
        geo: {
          '@type': 'GeoCoordinates',
          latitude: -20.8789,
          longitude: 55.4481,
        },
      },
    ],
    sameAs: [
      'https://www.facebook.com/dimexoi',
      'https://www.instagram.com/dimexoi',
    ],
  };

  return (
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{ __html: JSON.stringify(schema) }}
    />
  );
}

export function ProductSchema({
  name,
  description,
  image,
  category,
  slug,
}: {
  name: string;
  description: string;
  image: string;
  category: string;
  slug: string;
}) {
  const schema = {
    '@context': 'https://schema.org',
    '@type': 'Product',
    name,
    description,
    image,
    category,
    url: `https://dimexoi.re/catalogue/${slug}`,
    brand: {
      '@type': 'Brand',
      name: 'DIMEXOI',
    },
    manufacturer: {
      '@type': 'Organization',
      name: 'DIMEXOI',
    },
    material: 'Teck massif Tectona Grandis',
    offers: {
      '@type': 'Offer',
      availability: 'https://schema.org/InStock',
      priceCurrency: 'EUR',
      seller: {
        '@type': 'Organization',
        name: 'DIMEXOI',
      },
      url: `https://dimexoi.re/devis?product=${slug}`,
    },
  };

  return (
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{ __html: JSON.stringify(schema) }}
    />
  );
}

export function BreadcrumbSchema({ items }: { items: { name: string; url?: string }[] }) {
  const schema = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: items.map((item, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      name: item.name,
      ...(item.url ? { item: item.url } : {}),
    })),
  };

  return (
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{ __html: JSON.stringify(schema) }}
    />
  );
}
