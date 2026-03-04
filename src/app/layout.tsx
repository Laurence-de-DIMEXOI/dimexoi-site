import type { Metadata } from 'next';
import Header from '@/src/components/Header';
import Footer from '@/src/components/Footer';
import { LocalBusinessSchema } from '@/src/components/SchemaOrg';
import GoogleAnalytics from '@/src/components/GoogleAnalytics';
import CookieConsent from '@/src/components/CookieConsent';
import WhatsAppButton from '@/src/components/WhatsAppButton';
import { DevisCartProvider } from '@/src/components/DevisCartProvider';
import DevisCartDrawer from '@/src/components/DevisCartDrawer';
import './globals.css';

export const metadata: Metadata = {
  title: {
    default: 'DIMEXOI - Mobilier en Teck Haut de Gamme | La R\u00e9union (974)',
    template: '%s | DIMEXOI',
  },
  description: 'DIMEXOI, sp\u00e9cialiste du mobilier en teck massif \u00e0 La R\u00e9union depuis 1995. 207 meubles artisanaux, 2 showrooms \u00e0 Saint-Pierre et Saint-Denis. Devis gratuit.',
  keywords: [
    'mobilier teck La R\u00e9union',
    'meuble teck 974',
    'meuble teck Saint-Pierre',
    'meuble teck Saint-Denis',
    'mobilier bois massif R\u00e9union',
    'meuble artisanal ile de la Reunion',
    'teck massif haut de gamme',
    'showroom meuble R\u00e9union',
    'DIMEXOI',
    'meuble sur mesure La R\u00e9union',
    'table teck R\u00e9union',
    'lit teck R\u00e9union',
    'salon teck R\u00e9union',
    'meuble salle de bain teck',
    'meuble ext\u00e9rieur teck',
  ],
  openGraph: {
    title: 'DIMEXOI - Mobilier en Teck Haut de Gamme',
    description: 'Meubles en teck d\'exception depuis 1995 \u00e0 La R\u00e9union',
    type: 'website',
    locale: 'fr_FR',
    siteName: 'DIMEXOI',
    url: 'https://dimexoi.re',
  },
  robots: {
    index: true,
    follow: true,
    googleBot: {
      index: true,
      follow: true,
      'max-video-preview': -1,
      'max-image-preview': 'large',
      'max-snippet': -1,
    },
  },
  alternates: {
    canonical: 'https://dimexoi.re',
  },
  verification: {
    google: 'YOUR_GOOGLE_VERIFICATION_CODE',
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
        <meta name="geo.region" content="RE" />
        <meta name="geo.placename" content="La R\u00e9union" />
        <link rel="icon" href="/favicon.ico" sizes="48x48" />
        <link rel="icon" href="/favicon.svg" type="image/svg+xml" />
        <link rel="apple-touch-icon" href="/apple-touch-icon.png" />
        <LocalBusinessSchema />
      </head>
      <body className="bg-off-white text-dark-charcoal">
        <GoogleAnalytics />
        <DevisCartProvider>
          <Header />
          <main>{children}</main>
          <Footer />
          <DevisCartDrawer />
          <WhatsAppButton />
          <CookieConsent />
        </DevisCartProvider>
      </body>
    </html>
  );
}
