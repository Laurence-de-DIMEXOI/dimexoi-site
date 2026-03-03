import type { Metadata } from 'next';
import Header from '@/src/components/Header';
import Footer from '@/src/components/Footer';
import './globals.css';

export const metadata: Metadata = {
  title: 'DIMEXOI - Mobilier en Teck Haut de Gamme | La Réunion',
  description: 'Découvrez la collection premium de meubles en teck massif DIMEXOI. 31 ans de savoir-faire artisanal à La Réunion. Visitez nos 2 showrooms à Saint-Pierre et Saint-Denis.',
  keywords: 'teak furniture, mobilier teck, Réunion, furniture design, premium furniture',
  openGraph: {
    title: 'DIMEXOI - Mobilier en Teck Haut de Gamme',
    description: 'Meubles en teck d\'exception depuis 1995',
    type: 'website',
    locale: 'fr_FR',
  },
  robots: {
    index: true,
    follow: true,
  },
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="fr">
      <head>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
      </head>
      <body className="bg-off-white text-dark-charcoal">
        <Header />
        <main>{children}</main>
        <Footer />
      </body>
    </html>
  );
}
