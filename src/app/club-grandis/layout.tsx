import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Club Tectona  - Programme de fidélité Dimexoi',
  description: 'Rejoignez le Club Tectona, le programme de fidélité exclusif de Dimexoi. Cinq niveaux de récompenses, jusqu\'à 25 % de remise à vie sur tout le catalogue de meubles en teck.',
  openGraph: {
    title: 'Club Tectona · Dimexoi',
    description: 'Le programme de fidélité exclusif pour les clients Dimexoi. Jusqu\'à −25 % à vie.',
  },
};

export default function ClubGrandisLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <>{children}</>;
}
