'use client';

export default function ClubHero() {
  const handleScroll = () => {
    document.getElementById('les-cinq-cercles')?.scrollIntoView({ behavior: 'smooth' });
    if (typeof window !== 'undefined' && typeof window.gtag === 'function') {
      window.gtag('event', 'club_grandis_cta_hero');
    }
  };

  return (
    <section className="min-h-svh flex flex-col items-center justify-center relative" style={{ backgroundColor: '#515712' }}>
      {/* Ligne verticale décorative */}
      <div className="w-px h-10 bg-white/50 mb-10" />

      {/* Logo Club Grandis */}
      <div className="text-center mb-10">
        <p
          className="text-white text-2xl md:text-3xl tracking-[0.3em] uppercase mb-1"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif" }}
        >
          CLUB
        </p>
        <p
          className="text-white text-5xl md:text-7xl"
          style={{ fontFamily: "'Burgues Script', 'Cormorant Garamond', serif" }}
        >
          Grandis
        </p>
        <div className="w-32 h-px bg-white/40 mx-auto mt-6 mb-4" />
        <p className="text-white/50 text-xs tracking-[0.2em] uppercase" style={{ fontFamily: 'Inter, sans-serif' }}>
          par Dimexoi
        </p>
      </div>

      {/* Tagline */}
      <p
        className="text-white/70 text-base md:text-lg text-center max-w-md px-6 mb-12"
        style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", fontStyle: 'italic' }}
      >
        Cinq cercles. Une seule règle : être exigeant.
      </p>

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
