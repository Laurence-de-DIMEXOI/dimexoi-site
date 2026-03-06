import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Demande de Devis Gratuit | DIMEXOI La Réunion',
  description: 'Demandez votre devis gratuit pour du mobilier en teck massif. Réponse rapide, conseils personnalisés. 2 showrooms à Saint-Pierre et Saint-Denis, La Réunion.',
  alternates: {
    canonical: 'https://dimexoi.fr/devis',
  },
  openGraph: {
    title: 'Demande de Devis Gratuit | DIMEXOI',
    description: 'Devis gratuit pour vos meubles en teck massif à La Réunion. Réponse rapide.',
    type: 'website',
    url: 'https://dimexoi.fr/devis',
  },
};

export default function DevisLayout({ children }: { children: React.ReactNode }) {
  return <>{children}</>;
}
