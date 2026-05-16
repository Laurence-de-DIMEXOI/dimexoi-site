'use client';

import { usePathname } from 'next/navigation';
import Header from '@/src/components/Header';
import Footer from '@/src/components/Footer';
import WhatsAppButton from '@/src/components/WhatsAppButton';
import DevisCartDrawer from '@/src/components/DevisCartDrawer';
import TeckDaysBanner from '@/src/components/TeckDaysBanner';

export default function SiteShell({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const isClub = pathname.startsWith('/club-grandis');
  const isStandalone = pathname.startsWith('/stock-mai-2026');

  if (isClub || isStandalone) {
    return <>{children}</>;
  }

  return (
    <>
      <TeckDaysBanner />
      <Header />
      <main>{children}</main>
      <Footer />
      <DevisCartDrawer />
      <WhatsAppButton />
    </>
  );
}
