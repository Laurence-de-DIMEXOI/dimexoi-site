'use client';

import { useState, useEffect, useRef, useCallback } from 'react';
import Image from 'next/image';
import Link from 'next/link';

const SLIDES = [
  {
    image: '/images/hero-chambre.jpg',
    tag: 'Depuis 1995 à La Réunion',
    titre: <>Mobilier en <em className="not-italic">teck</em><br /><span className="italic">d&apos;exception</span></>,
    description: <>Découvrez notre collection de meubles <em className="italic">artisanaux</em> en teck massif. Qualité, durabilité et élégance <em className="italic">intemporelle</em>.</>,
    ctas: [
      { label: 'Découvrir le catalogue', href: '/catalogue', primary: true },
      { label: 'Demander un devis', href: '/devis', primary: false },
    ],
  },
  {
    image: '/images/products/lit-sarulla.jpg',
    tag: 'Nouveauté Avril 2026',
    titre: <>Lit <em className="italic">Sarulla</em><br /><span className="italic">Teck & cannage naturel</span></>,
    description: <>Tête de lit en <em className="italic">cannage naturel</em> pour une ambiance <em className="italic">bali</em> dans votre chambre. 160×200 cm en stock — <em className="italic">toutes dimensions sur commande</em>.</>,
    ctas: [
      { label: 'Voir le produit', href: '/catalogue/lit-sarulla', primary: true },
      { label: 'Demander un devis', href: '/devis', primary: false },
    ],
  },
  {
    image: '/images/catalogue-cover-mockup.svg',
    video: '/slides/catalogue-avril-2026.mp4',
    tag: 'Collection Avril 2026',
    titre: <>Votre mobilier<br /><em className="italic">d&apos;intérieur en teck</em></>,
    description: <>Chambres, salons, salles de bain — catalogue <em className="italic">artisanal</em>. Teck massif <em className="italic">certifié Tectona Grandis</em>, dans nos 2 showrooms à <em className="italic">La Réunion</em>.</>,
    ctas: [
      { label: 'Voir le catalogue PDF', href: '/catalogues/mobilier-interieur-teck.pdf', primary: true, external: true },
      { label: 'Nos showrooms', href: '/contact', primary: false },
    ],
  },
];

const INTERVAL = 6000;

export default function HeroSlider() {
  const [current, setCurrent] = useState(0);
  const pausedRef = useRef(false);
  const timerRef = useRef<ReturnType<typeof setInterval> | null>(null);

  const startTimer = useCallback(() => {
    if (timerRef.current) clearInterval(timerRef.current);
    timerRef.current = setInterval(() => {
      if (!pausedRef.current) {
        setCurrent(c => (c + 1) % SLIDES.length);
      }
    }, INTERVAL);
  }, []);

  useEffect(() => {
    startTimer();
    return () => { if (timerRef.current) clearInterval(timerRef.current); };
  }, [startTimer]);

  const goTo = (i: number) => {
    setCurrent(i);
    startTimer();
  };

  const slide = SLIDES[current];

  return (
    <section
      className="relative h-[85vh] min-h-[600px] bg-dark-charcoal overflow-hidden flex items-center"
      onMouseEnter={() => { pausedRef.current = true; }}
      onMouseLeave={() => { pausedRef.current = false; }}
    >
      {/* Toutes les images/vidéos empilées, seule la courante est visible */}
      {SLIDES.map((s, i) =>
        'video' in s && s.video ? (
          <video
            key={i}
            src={s.video}
            autoPlay
            muted
            loop
            playsInline
            className={`object-cover absolute inset-0 w-full h-full transition-opacity duration-700 ${i === current ? 'opacity-100' : 'opacity-0'}`}
          />
        ) : (
          <Image
            key={i}
            src={s.image}
            alt={`DIMEXOI slide ${i + 1}`}
            fill
            sizes="100vw"
            className={`object-cover absolute inset-0 transition-opacity duration-700 ${i === current ? 'opacity-100' : 'opacity-0'}`}
            unoptimized
            priority={i === 0}
          />
        )
      )}

      {/* Overlay */}
      <div className="absolute inset-0 bg-gradient-to-r from-black/75 via-black/40 to-transparent z-[1]" />

      {/* Contenu */}
      <div className="relative z-[2] max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 w-full">
        <div className="max-w-2xl">
          <p key={`tag-${current}`} className="text-gray-300 font-semibold text-sm uppercase tracking-widest mb-4 animate-fade-in">
            {slide.tag}
          </p>
          <h1 key={`h1-${current}`} className="text-5xl md:text-6xl lg:text-7xl font-serif font-bold text-off-white mb-6 leading-tight animate-fade-in">
            {slide.titre}
          </h1>
          <p key={`p-${current}`} className="text-lg text-gray-200 mb-10 max-w-lg leading-relaxed animate-fade-in">
            {slide.description}
          </p>
          <div key={`cta-${current}`} className="flex flex-col sm:flex-row gap-4 animate-fade-in">
            {slide.ctas.map((cta, i) =>
              'external' in cta && cta.external ? (
                <a key={i} href={cta.href} target="_blank" rel="noopener noreferrer" className={cta.primary ? 'btn-primary' : 'btn-secondary'}>
                  {cta.label}
                </a>
              ) : (
                <Link key={i} href={cta.href} className={cta.primary ? 'btn-primary' : 'btn-secondary'}>
                  {cta.label}
                </Link>
              )
            )}
          </div>
        </div>
      </div>

      {/* Dots (bas centre) */}
      <div className="absolute bottom-8 left-1/2 -translate-x-1/2 z-[3] flex items-center gap-3">
        {SLIDES.map((_, i) => (
          <button
            key={i}
            onClick={() => goTo(i)}
            aria-label={`Slide ${i + 1}`}
            className={`rounded-full transition-all duration-300 ${i === current ? 'bg-white w-8 h-2' : 'bg-white/40 hover:bg-white/70 w-2 h-2'}`}
          />
        ))}
      </div>

      {/* Flèches */}
      <button
        onClick={() => goTo((current - 1 + SLIDES.length) % SLIDES.length)}
        className="absolute left-4 top-1/2 -translate-y-1/2 z-[3] w-10 h-10 rounded-full bg-white/10 hover:bg-white/25 backdrop-blur-sm flex items-center justify-center transition-colors"
        aria-label="Précédent"
      >
        <svg className="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
        </svg>
      </button>
      <button
        onClick={() => goTo((current + 1) % SLIDES.length)}
        className="absolute right-4 top-1/2 -translate-y-1/2 z-[3] w-10 h-10 rounded-full bg-white/10 hover:bg-white/25 backdrop-blur-sm flex items-center justify-center transition-colors"
        aria-label="Suivant"
      >
        <svg className="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
        </svg>
      </button>

      {/* Compteur */}
      <div className="absolute bottom-8 right-6 z-[3] text-white/40 text-xs font-mono">
        {String(current + 1).padStart(2, '0')} / {String(SLIDES.length).padStart(2, '0')}
      </div>

      {/* Barre de progression */}
      <div className="absolute bottom-0 left-0 right-0 h-0.5 bg-white/10 z-[3]">
        <div
          key={current}
          className="h-full bg-white/50"
          style={{ animation: `heroProgress ${INTERVAL}ms linear forwards` }}
        />
      </div>

      <style>{`
        @keyframes heroProgress { from { width: 0% } to { width: 100% } }
      `}</style>
    </section>
  );
}
