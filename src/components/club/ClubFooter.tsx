import Link from 'next/link';

export default function ClubFooter() {
  return (
    <footer className="py-12 px-6 text-center" style={{ backgroundColor: '#515712' }}>
      <Link href="/" className="inline-block mb-6">
        <span
          className="text-lg text-white border border-white/40 px-3 py-1 tracking-wide"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif" }}
        >
          DIMEXOI
        </span>
      </Link>
      <div className="mb-6">
        <Link
          href="/"
          className="text-white/60 text-sm hover:text-white transition-colors"
          style={{ fontFamily: 'Inter, sans-serif' }}
        >
          ← Retour au site
        </Link>
      </div>
      <p className="text-white/30 text-xs" style={{ fontFamily: 'Inter, sans-serif' }}>
        © {new Date().getFullYear()} Dimexoi — La Réunion
      </p>
    </footer>
  );
}
