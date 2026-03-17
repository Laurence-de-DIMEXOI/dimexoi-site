'use client';

import { usePathname } from 'next/navigation';
import Header from '@/src/components/Header';
import Footer from '@/src/components/Footer';
import WhatsAppButton from '@/src/components/WhatsAppButton';
import DevisCartDrawer from '@/src/components/DevisCartDrawer';

export default function SiteShell({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const isClub = pathname.startsWith('/club-grandis');

  if (isClub) {
    return <>{children}</>;
  }

  return (
    <>
      <Header />
      <main>{children}</main>
      <Footer />
      <DevisCartDrawer />
      <WhatsAppButton />
    </>
  );
}
