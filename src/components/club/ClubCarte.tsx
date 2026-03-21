'use client';

import { useState } from 'react';

const RECTO_SRC = '/images/carte fid/recto.png';
const VERSO_SRC = '/images/carte fid/verso.png';

export default function ClubCarte() {
  const [flipped, setFlipped] = useState(false);

  return (
    <section className="py-20 md:py-28 px-6">
      <div className="max-w-xl mx-auto text-center">
        <h2
          className="text-2xl md:text-3xl mb-12"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", color: '#515712' }}
        >
          Votre carte membre
        </h2>

        <div className="flex flex-col items-center gap-4">
          {/* Card scene */}
          <div
            className="w-full max-w-[460px] cursor-pointer"
            style={{ perspective: '1200px', aspectRatio: '460 / 326' }}
            onMouseEnter={() => setFlipped(true)}
            onMouseLeave={() => setFlipped(false)}
            onClick={() => setFlipped((f) => !f)}
          >
            <div
              className="relative w-full h-full transition-transform duration-[900ms]"
              style={{
                transformStyle: 'preserve-3d',
                transform: flipped ? 'rotateY(180deg)' : 'rotateY(0deg)',
                transitionTimingFunction: 'cubic-bezier(0.4, 0.2, 0.2, 1)',
              }}
            >
              {/* Front */}
              <div
                className="absolute inset-0 rounded-2xl overflow-hidden shadow-[0_6px_32px_rgba(0,0,0,0.22)]"
                style={{ backfaceVisibility: 'hidden', WebkitBackfaceVisibility: 'hidden' }}
              >
                <img
                  src={RECTO_SRC}
                  alt="Carte Club Tectona - recto"
                  className="w-full h-full object-cover block"
                />
              </div>

              {/* Back */}
              <div
                className="absolute inset-0 rounded-2xl overflow-hidden shadow-[0_6px_32px_rgba(0,0,0,0.22)]"
                style={{
                  backfaceVisibility: 'hidden',
                  WebkitBackfaceVisibility: 'hidden',
                  transform: 'rotateY(180deg)',
                }}
              >
                <img
                  src={VERSO_SRC}
                  alt="Carte Club Tectona - verso"
                  className="w-full h-full object-cover block"
                />
              </div>
            </div>
          </div>

          <p
            className="text-[11px] italic opacity-70"
            style={{ fontFamily: 'Georgia, serif', color: '#6B7618' }}
          >
            Survolez ou cliquez pour retourner
          </p>
        </div>
      </div>
    </section>
  );
}
