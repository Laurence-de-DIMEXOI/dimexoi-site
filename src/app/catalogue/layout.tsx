import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Catalogue Mobilier Teck Massif | DIMEXOI La Réunion',
  description: 'Découvrez notre catalogue complet de meubles en teck massif : tables, lits, salons, salles de bain, rangements et mobilier extérieur. Livraison à La Réunion. Devis gratuit.',
  alternates: {
    canonical: 'https://dimexoi.fr/catalogue',
  },
  openGraph: {
    title: 'Catalogue Mobilier Teck Massif | DIMEXOI',
    description: 'Large choix de meubles en teck massif artisanaux. 2 showrooms à La Réunion.',
    type: 'website',
    url: 'https://dimexoi.fr/catalogue',
  },
};

export default function CatalogueLayout({ children }: { children: React.ReactNode }) {
  return <>{children}</>;
}
