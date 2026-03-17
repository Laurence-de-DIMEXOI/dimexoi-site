'use client';

import Link from 'next/link';

const etapes = [
  {
    num: '1.',
    text: "Passez une première commande de 500 € ou plus — et vous rejoignez automatiquement le cercle I, L'Écorce.",
  },
  {
    num: '2.',
    text: "À chaque achat, votre niveau évolue. Pas de formulaire, pas de démarche : le Club Grandis vous reconnaît.",
  },
  {
    num: '3.',
    text: "Vos avantages s'appliquent dès votre prochaine commande. Automatiquement.",
  },
];

export default function ClubRejoindre() {
  const handleCta = () => {
    if (typeof window !== 'undefined' && typeof window.gtag === 'function') {
      window.gtag('event', 'club_grandis_cta_catalogue');
    }
  };

  return (
    <section className="py-20 md:py-28 px-6" style={{ backgroundColor: '#515712' }}>
      <div className="max-w-3xl mx-auto">
        <h2
          className="text-2xl md:text-3xl text-center text-white mb-16"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif" }}
        >
          Comment rejoindre le Club Grandis ?
        </h2>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-10 md:gap-12 mb-16">
          {etapes.map((e) => (
            <div key={e.num} className="text-center md:text-left">
              <p
                className="text-3xl mb-4 text-white/80"
                style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif" }}
              >
                {e.num}
              </p>
              <p className="text-sm leading-relaxed text-white/70" style={{ fontFamily: 'Inter, sans-serif' }}>
                {e.text}
              </p>
            </div>
          ))}
        </div>

        <div className="text-center">
          <Link
            href="/catalogue"
            onClick={handleCta}
            className="inline-block bg-white px-8 py-3 text-sm tracking-wider hover:bg-white/90 transition-colors"
            style={{ fontFamily: 'Inter, sans-serif', color: '#515712' }}
          >
            Découvrir le catalogue →
          </Link>
        </div>
      </div>
    </section>
  );
}
