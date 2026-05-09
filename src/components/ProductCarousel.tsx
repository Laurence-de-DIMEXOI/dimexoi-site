'use client';

import { useEffect, useRef } from 'react';

const IMAGE_NUMS = [28, 27, 26, 25, 24, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
const IMAGES = IMAGE_NUMS.map(
  (n) => `/teck-days/assets/carroussel/carroussel%20produits/${n}.png`
);

const CARD_W  = 288; // w-72 = 288px
const GAP     = 12;  // gap-3 = 12px
const STEP    = CARD_W + GAP;
const TOTAL_W = IMAGES.length * STEP; // largeur d'un jeu complet
const SPEED   = 40;  // px / seconde

export default function ProductCarousel() {
  const trackRef   = useRef<HTMLDivElement>(null);
  const posRef     = useRef(0);
  const pausedRef  = useRef(false);
  const rafRef     = useRef<number>(0);
  const pauseTimer = useRef<ReturnType<typeof setTimeout>>();

  /* ── Auto-scroll via requestAnimationFrame ── */
  useEffect(() => {
    let last = 0;

    const tick = (now: number) => {
      const dt = Math.min((now - last) / 1000, 0.1);
      last = now;

      if (!pausedRef.current && trackRef.current) {
        posRef.current += SPEED * dt;
        if (posRef.current >= TOTAL_W) posRef.current -= TOTAL_W;
        trackRef.current.style.transform = `translateX(${-posRef.current}px)`;
      }

      rafRef.current = requestAnimationFrame(tick);
    };

    rafRef.current = requestAnimationFrame(tick);
    return () => cancelAnimationFrame(rafRef.current);
  }, []);

  /* ── Boutons prev / next ── */
  const shift = (dir: 1 | -1) => {
    clearTimeout(pauseTimer.current);
    pausedRef.current = true;

    posRef.current = (posRef.current + dir * STEP * 3 + TOTAL_W * 4) % TOTAL_W;
    if (trackRef.current) {
      trackRef.current.style.transform = `translateX(${-posRef.current}px)`;
    }

    // reprend l'auto-scroll après 4s
    pauseTimer.current = setTimeout(() => { pausedRef.current = false; }, 4000);
  };

  return (
    <section
      className="py-20 bg-warm-beige"
      onMouseEnter={() => { pausedRef.current = true; }}
      onMouseLeave={() => {
        clearTimeout(pauseTimer.current);
        pausedRef.current = false;
      }}
    >
      {/* Titre */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 mb-12 text-center">
        <h2 className="text-4xl md:text-5xl font-serif font-bold text-dark-olive section-heading">
          Inspirations &amp; <em className="italic">réalisations</em>
        </h2>
        <p className="text-gray-600 mt-6">
          Un aperçu de nos créations en teck massif
        </p>
      </div>

      {/* Carrousel */}
      <div className="relative overflow-hidden">
        {/* Track — 3 jeux pour boucle infinie parfaite */}
        <div
          ref={trackRef}
          className="flex gap-3 will-change-transform"
          style={{ width: 'max-content' }}
        >
          {[...IMAGES, ...IMAGES, ...IMAGES].map((src, i) => (
            <div
              key={i}
              className="flex-none w-56 h-56 sm:w-72 sm:h-72 overflow-hidden"
            >
              <img
                src={src}
                alt={`Réalisation ${IMAGE_NUMS[i % IMAGE_NUMS.length]}`}
                className="w-full h-full object-cover hover:scale-105 transition-transform duration-500"
                loading="lazy"
              />
            </div>
          ))}
        </div>

        {/* Dégradés latéraux */}
        <div className="pointer-events-none absolute inset-y-0 left-0 w-16 bg-gradient-to-r from-warm-beige to-transparent z-10" />
        <div className="pointer-events-none absolute inset-y-0 right-0 w-16 bg-gradient-to-l from-warm-beige to-transparent z-10" />

        {/* Flèche gauche */}
        <button
          onClick={() => shift(-1)}
          aria-label="Précédent"
          className="absolute left-4 top-1/2 -translate-y-1/2 z-20 w-10 h-10 rounded-full bg-white/90 shadow-lg flex items-center justify-center hover:bg-white transition-colors"
        >
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
            <polyline points="15 18 9 12 15 6" />
          </svg>
        </button>

        {/* Flèche droite */}
        <button
          onClick={() => shift(1)}
          aria-label="Suivant"
          className="absolute right-4 top-1/2 -translate-y-1/2 z-20 w-10 h-10 rounded-full bg-white/90 shadow-lg flex items-center justify-center hover:bg-white transition-colors"
        >
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
            <polyline points="9 18 15 12 9 6" />
          </svg>
        </button>
      </div>
    </section>
  );
}
