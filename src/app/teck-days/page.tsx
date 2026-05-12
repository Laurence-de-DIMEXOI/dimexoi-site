import type { Metadata } from 'next';
import './teck-days.css';

import Hero from './components/Hero';
import Avantages from './components/Avantages';
import Galerie from './components/Galerie';
import OpeningHours from './components/OpeningHours';
import Showrooms from './components/Showrooms';
import TroisFacons from './components/TroisFacons';
import Faq from './components/Faq';
import FooterTD from './components/FooterTD';

export const metadata: Metadata = {
  title: 'Teck Days DIMEXOI — -30% sur tout le teck · Prolongé jusqu\'au 31 mai 2026',
  description:
    "PROLONGÉ ! -30% sur tout le mobilier en teck jusqu'au 31 mai 2026. 2 showrooms à La Réunion (600 m²). Stock disponible. Sur-mesure avec dessinateur 3D sur RDV.",
  openGraph: {
    title: 'Teck Days DIMEXOI · -30% prolongé jusqu\'au 31 mai 2026',
    description: 'Offre prolongée jusqu\'au 31 mai 2026. 2 showrooms. Stock dispo. Sur-mesure 3D.',
    images: ['/teck-days/assets/og-teck-days.jpg'],
    type: 'website',
  },
  robots: { index: true, follow: true },
};

export default function TeckDaysPage() {
  return (
    <div className="teck-days">
      <Hero />
      <Avantages />
      <Galerie />
      <OpeningHours />
      <Showrooms />
      <TroisFacons />
      <Faq />
      <FooterTD />
    </div>
  );
}
