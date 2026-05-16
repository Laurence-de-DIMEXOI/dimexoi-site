import type { Metadata } from 'next';
import StockMai2026Page from './StockMai2026Page';

export const metadata: Metadata = {
  title: "Stock Mai 2026 — Mobilier teck −30 % disponible · DIMEXOI La Réunion",
  description:
    "7 meubles en teck disponibles en showroom à La Réunion avec −30 % jusqu'au 31 mai 2026. Choisissez votre meuble et recevez un rappel sous 24h.",
  robots: { index: false, follow: false },
  openGraph: {
    title: "Stock disponible — −30 % sur le teck · DIMEXOI",
    description: "7 meubles en stock à La Réunion. Offre Teck Days prolongée jusqu'au 31 mai 2026.",
    images: ['/teck-days/assets/og-teck-days.jpg'],
    type: 'website',
  },
};

export default function Page() {
  return <StockMai2026Page />;
}
