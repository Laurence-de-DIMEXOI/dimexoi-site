'use client';

import Link from 'next/link';

export default function ClubHero() {
  const handleScroll = () => {
    document.getElementById('les-cinq-cercles')?.scrollIntoView({ behavior: 'smooth' });
    if (typeof window !== 'undefined' && typeof window.gtag === 'function') {
      window.gtag('event', 'club_tectona_cta_hero');
    }
  };

  return (
    <section className="min-h-svh flex flex-col items-center justify-center relative" style={{ backgroundColor: '#515712' }}>
      {/* Retour au site */}
      <Link
        href="/"
        className="absolute top-6 left-6 text-white/50 text-xs hover:text-white/80 transition-colors flex items-center gap-1.5"
        style={{ fontFamily: 'Inter, sans-serif' }}
      >
        <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
          <path strokeLinecap="round" strokeLinejoin="round" d="M15 19l-7-7 7-7" />
        </svg>
        Retour au site
      </Link>

      {/* Bienvenue au */}
      <p
        className="text-white/60 text-sm md:text-base tracking-[0.25em] uppercase mb-6"
        style={{ fontFamily: 'Inter, sans-serif' }}
      >
        Bienvenue au
      </p>

      {/* Logo Club Tectona */}
      <div className="mb-16">
        <img
          src="/images/club-tectona-logo-blanc.png"
          alt="Club Tectona par Dimexoi"
          className="mx-auto h-40 md:h-56 w-auto"
        />
      </div>

      {/* CTA */}
      <button
        onClick={handleScroll}
        className="border border-white/60 text-white px-8 py-3 text-sm tracking-wider hover:bg-white/10 transition-colors"
        style={{ fontFamily: 'Inter, sans-serif' }}
      >
        Découvrir les cercles ↓
      </button>
    </section>
  );
}
