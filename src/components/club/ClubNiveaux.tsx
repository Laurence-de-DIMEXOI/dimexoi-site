'use client';

import { useState, useEffect } from 'react';
import { CLUB_NIVEAUX } from '@/src/data/club-grandis';

export default function ClubNiveaux() {
  const [openIndex, setOpenIndex] = useState<number | null>(null);
  const [isMobile, setIsMobile] = useState(false);

  useEffect(() => {
    const check = () => setIsMobile(window.innerWidth < 768);
    check();
    window.addEventListener('resize', check);
    return () => window.removeEventListener('resize', check);
  }, []);

  const toggle = (index: number) => {
    if (isMobile) return; // all open on mobile
    const newIndex = openIndex === index ? null : index;
    setOpenIndex(newIndex);
    if (newIndex !== null && typeof window !== 'undefined' && typeof window.gtag === 'function') {
      window.gtag('event', 'club_grandis_niveau_open', { niveau: CLUB_NIVEAUX[newIndex].rom });
    }
  };

  return (
    <section id="les-cinq-cercles" className="py-20 md:py-28 px-6">
      <div className="max-w-3xl mx-auto">
        <h2
          className="text-2xl md:text-3xl text-center mb-16"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", color: '#515712' }}
        >
          Les cinq cercles
        </h2>

        <div className="border-t" style={{ borderColor: '#515712' }}>
          {CLUB_NIVEAUX.map((n, i) => {
            const isOpen = isMobile || openIndex === i;
            return (
              <div key={n.niveau} className="border-b" style={{ borderColor: '#515712' }}>
                <button
                  onClick={() => toggle(i)}
                  className="w-full py-6 md:py-8 flex items-center justify-between text-left"
                  aria-expanded={isOpen}
                >
                  <div className="flex items-center gap-5 md:gap-8">
                    <span
                      className="text-4xl md:text-[64px] leading-none font-normal"
                      style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", color: 'rgba(81,87,18,0.85)' }}
                    >
                      {n.rom}
                    </span>
                    <div>
                      <p
                        className="text-xl md:text-2xl"
                        style={{ fontFamily: "'Burgues Script', 'Cormorant Garamond', serif", color: '#515712' }}
                      >
                        {n.nom}
                      </p>
                      <p className="text-xs mt-1" style={{ fontFamily: 'Inter, sans-serif', color: 'rgba(81,87,18,0.5)' }}>
                        {n.seuil}
                      </p>
                    </div>
                  </div>
                  <div className="flex items-center gap-3">
                    <span
                      className="text-lg md:text-xl"
                      style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", color: '#515712' }}
                    >
                      −{n.remise}&nbsp;%
                    </span>
                    {!isMobile && (
                      <svg
                        className="w-4 h-4 transition-transform duration-300"
                        style={{ color: '#515712', transform: isOpen ? 'rotate(180deg)' : 'rotate(0)' }}
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
                        strokeWidth={2}
                      >
                        <path strokeLinecap="round" strokeLinejoin="round" d="M19 9l-7 7-7-7" />
                      </svg>
                    )}
                  </div>
                </button>

                <div
                  className="overflow-hidden transition-all duration-500 ease-in-out"
                  style={{ maxHeight: isOpen ? '400px' : '0' }}
                >
                  <ul className="pb-6 md:pb-8 pl-16 md:pl-24 space-y-2">
                    {n.avantages.map((a, j) => (
                      <li
                        key={j}
                        className="text-sm flex items-start gap-2"
                        style={{ fontFamily: 'Inter, sans-serif', color: 'rgba(81,87,18,0.7)' }}
                      >
                        <span className="mt-1.5 w-1 h-1 rounded-full flex-shrink-0" style={{ backgroundColor: '#515712' }} />
                        {a}
                      </li>
                    ))}
                  </ul>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
}
