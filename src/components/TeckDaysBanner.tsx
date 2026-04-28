'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';

/**
 * Bannière site-wide pour annoncer les Teck Days.
 * Cachée sur la landing /teck-days elle-même (évite la redondance).
 */
export default function TeckDaysBanner() {
  const pathname = usePathname();
  if (pathname?.startsWith('/teck-days')) return null;

  return (
    <Link
      href="/teck-days"
      style={{
        display: 'block',
        background: 'linear-gradient(90deg, #7A3A14 0%, #9A4A1A 50%, #7A3A14 100%)',
        color: '#FAF6E8',
        textDecoration: 'none',
        padding: '0.65rem 1rem',
        textAlign: 'center',
        fontFamily: "'Cabin', system-ui, sans-serif",
        fontSize: 14,
        fontWeight: 500,
        letterSpacing: '0.03em',
        borderBottom: '2px solid #B7541C',
      }}
      aria-label="Teck Days : -30% sur tout le teck du 1er au 10 mai 2026 — voir la page dédiée"
    >
      <span style={{
        fontFamily: "'Bree Serif', Georgia, serif",
        marginRight: 8,
        color: '#FFD9A8',
      }}>TECK DAYS · 1ᵉʳ → 10 MAI</span>
      <span>−30 % sur tout le teck</span>
      <span style={{ marginLeft: 12, opacity: 0.9, textDecoration: 'underline' }}>
        Découvrir →
      </span>
    </Link>
  );
}
