'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';

/**
 * Bannière site-wide pour annoncer les Teck Days prolongés.
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
        background: 'linear-gradient(90deg, #5C2A0A 0%, #8B3A12 40%, #9A4A1A 60%, #5C2A0A 100%)',
        color: '#FAF6E8',
        textDecoration: 'none',
        padding: '0.75rem 1rem',
        textAlign: 'center',
        fontFamily: "'Cabin', system-ui, sans-serif",
        fontSize: 14,
        fontWeight: 500,
        letterSpacing: '0.03em',
        borderBottom: '2px solid #C0561E',
        position: 'relative',
        overflow: 'hidden',
      }}
      aria-label="Teck Days prolongés : -30% sur tout le teck jusqu'au 31 mai 2026 — voir la page dédiée"
    >
      {/* Badge PROLONGÉ */}
      <span style={{
        display: 'inline-block',
        background: '#FFD9A8',
        color: '#5C2A0A',
        fontFamily: "'Bree Serif', Georgia, serif",
        fontSize: 11,
        fontWeight: 700,
        letterSpacing: '0.08em',
        padding: '2px 8px',
        borderRadius: 3,
        marginRight: 10,
        verticalAlign: 'middle',
        textTransform: 'uppercase',
      }}>⚡ PROLONGÉ</span>

      {/* Offre */}
      <span style={{
        fontFamily: "'Bree Serif', Georgia, serif",
        fontSize: 15,
        color: '#FFD9A8',
        marginRight: 6,
      }}>−30% sur tout le teck</span>

      {/* Date limite */}
      <span style={{ opacity: 0.92, marginRight: 12 }}>
        · jusqu&apos;au <strong style={{ color: '#FFD9A8' }}>31 mai 2026</strong>
      </span>

      <span style={{ opacity: 0.85, textDecoration: 'underline', fontSize: 13 }}>
        Voir l&apos;offre →
      </span>
    </Link>
  );
}
