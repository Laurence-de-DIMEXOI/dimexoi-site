'use client';

import { useState, useEffect, useRef } from 'react';
import Link from 'next/link';

const SLIDES = [
  {
    tag: 'Nouveauté',
    titre: 'Lit Sarulla',
    sousTitre: 'Teck massif & cannage naturel',
    description: (
      <>
        Notre nouvelle tête de lit en <em className="italic">cannage naturel</em> donne une touche{' '}
        <em className="italic">bali</em> à votre chambre. Disponible en 160×200 cm —{' '}
        <em className="italic">toutes dimensions sur commande</em>.
      </>
    ),
    cta: { label: 'Voir le produit', href: '/produits/lit-sarulla' },
    bg: 'from-[#3d2b1f] to-[#6b4226]',
    badge: 'Nouveauté Avril',
  },
  {
    tag: 'Collection',
    titre: 'Mobilier d\'intérieur en teck',
    sousTitre: 'Catalogue Avril 2026',
    description: (
      <>
        Chambres, salons, salles de bain — découvrez notre sélection{' '}
        <em className="italic">artisanale</em> disponible dans nos deux showrooms à{' '}
        <em className="italic">La Réunion</em>. Teck massif{' '}
        <em className="italic">certifié Tectona Grandis</em>.
      </>
    ),
    cta: { label: 'Voir le catalogue PDF', href: '/catalogue-tarifs' },
    bg: 'from-[#1a2e1e] to-[#2d5236]',
    badge: 'Catalogue 2026',
  },
  {
    tag: 'Conseil',
    titre: 'Vasques & meubles teck',
    sousTitre: 'Pierre, marbre ou céramique ?',
    description: (
      <>
        Notre guide complet pour choisir la <em className="italic">vasque idéale</em> avec votre meuble
        salle de bain en teck. Pierre fossile, marbre blanc, céramique mate —{' '}
        <em className="italic">comparatif complet</em> dans notre nouveau article.
      </>
    ),
    cta: { label: 'Lire l\'article', href: '/blog/vasque-pierre-marbre-ceramique-meuble-teck' },
    bg: 'from-[#1a1f2e] to-[#2d3652]',
    badge: 'Guide',
  },
  {
    tag: 'Showrooms',
    titre: 'Visitez nos showrooms',
    sousTitre: 'Sud & Nord de La Réunion',
    description: (
      <>
        Venez découvrir nos collections <em className="italic">en vrai</em> —{' '}
        <em className="italic">Saint-Pierre</em> et <em className="italic">Saint-Denis</em>.
        Prise de rendez-vous gratuite, nos conseillers vous accompagnent dans votre projet{' '}
        <em className="italic">sur-mesure</em>.
      </>
    ),
    cta: { label: 'Prendre rendez-vous', href: '/contact' },
    bg: 'from-[#2e1a1a] to-[#522d2d]',
    badge: 'Avril 2026',
  },
];

export default function AvrilSlide() {
  const [current, setCurrent] = useState(0);
  const [paused, setPaused] = useState(false);
  const timerRef = useRef<ReturnType<typeof setInterval> | null>(null);

  const startTimer = () => {
    timerRef.current = setInterval(() => {
      setCurrent((c) => (c + 1) % SLIDES.length);
    }, 5000);
  };

  useEffect(() => {
    if (!paused) startTimer();
    return () => { if (timerRef.current) clearInterval(timerRef.current); };
  }, [paused]);

  const goTo = (i: number) => {
    setCurrent(i);
    if (timerRef.current) clearInterval(timerRef.current);
    setPaused(false);
    startTimer();
  };

  const slide = SLIDES[current];

  return (
    <section
      className={`relative overflow-hidden bg-gradient-to-r ${slide.bg} transition-all duration-700`}
      onMouseEnter={() => { setPaused(true); if (timerRef.current) clearInterval(timerRef.current); }}
      onMouseLeave={() => { setPaused(false); }}
      aria-label="Offres et nouveautés Avril 2026"
    >
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-10 md:py-12">
        <div className="flex flex-col md:flex-row md:items-center gap-6 md:gap-12">

          {/* Contenu */}
          <div className="flex-1 min-w-0">
            <div className="flex items-center gap-3 mb-3">
              <span className="text-[10px] font-bold uppercase tracking-widest bg-white/15 text-white/90 px-3 py-1 rounded-full">
                {slide.badge}
              </span>
              <span className="text-xs text-white/50 uppercase tracking-widest">{slide.tag}</span>
            </div>

            <h2 className="font-serif text-2xl md:text-3xl font-bold text-white mb-1 leading-tight">
              {slide.titre}
            </h2>
            <p className="text-sm text-white/60 font-medium mb-3 tracking-wide">{slide.sousTitre}</p>

            <p className="text-sm text-white/80 leading-relaxed max-w-xl mb-5">
              {slide.description}
            </p>

            <Link
              href={slide.cta.href}
              className="inline-flex items-center gap-2 bg-white text-dark-charcoal text-xs font-bold uppercase tracking-widest px-5 py-2.5 rounded hover:bg-white/90 transition-colors"
            >
              {slide.cta.label}
              <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
              </svg>
            </Link>
          </div>

          {/* Navigation dots + numéro slide */}
          <div className="flex md:flex-col items-center gap-3 flex-shrink-0">
            <span className="text-white/30 text-xs font-mono hidden md:block">
              {String(current + 1).padStart(2, '0')} / {String(SLIDES.length).padStart(2, '0')}
            </span>
            <div className="flex md:flex-col gap-2">
              {SLIDES.map((_, i) => (
                <button
                  key={i}
                  onClick={() => goTo(i)}
                  aria-label={`Slide ${i + 1}`}
                  className={`rounded-full transition-all duration-300 ${
                    i === current
                      ? 'bg-white w-6 h-2 md:w-2 md:h-6'
                      : 'bg-white/30 hover:bg-white/60 w-2 h-2'
                  }`}
                />
              ))}
            </div>
            {/* Prev / Next */}
            <div className="flex md:flex-col gap-1 ml-2 md:ml-0 md:mt-2">
              <button
                onClick={() => goTo((current - 1 + SLIDES.length) % SLIDES.length)}
                className="w-7 h-7 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition-colors"
                aria-label="Précédent"
              >
                <svg className="w-3 h-3 text-white rotate-90 md:rotate-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
                </svg>
              </button>
              <button
                onClick={() => goTo((current + 1) % SLIDES.length)}
                className="w-7 h-7 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition-colors"
                aria-label="Suivant"
              >
                <svg className="w-3 h-3 text-white rotate-90 md:rotate-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                </svg>
              </button>
            </div>
          </div>
        </div>

        {/* Barre de progression */}
        <div className="mt-6 h-px bg-white/10 relative overflow-hidden rounded">
          <div
            key={current}
            className="absolute left-0 top-0 h-full bg-white/40 rounded"
            style={{
              width: paused ? `${((current + 1) / SLIDES.length) * 100}%` : '100%',
              transition: paused ? 'none' : 'width 5s linear',
              animationPlayState: paused ? 'paused' : 'running',
            }}
          />
        </div>
      </div>
    </section>
  );
}
