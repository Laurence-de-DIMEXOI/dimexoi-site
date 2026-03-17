'use client';

import { useState } from 'react';

const FAQ = [
  {
    q: 'Comment savoir à quel niveau j\u2019appartiens ?',
    a: 'Votre niveau est communiqué lors de chaque commande et dans les emails de suivi. Vous pouvez aussi nous contacter directement en showroom.',
  },
  {
    q: 'La remise s\u2019applique-t-elle sur tout le catalogue ?',
    a: 'Oui — sur l\u2019intégralité du catalogue, y compris les créations sur mesure.',
  },
  {
    q: 'Puis-je descendre de niveau ?',
    a: 'Non. Une fois un niveau atteint, il est acquis.',
  },
  {
    q: 'Comment fonctionne le niveau V, Le Tectona ?',
    a: 'Le Tectona est attribué sur invitation, à partir d\u2019un cumul de 20 000 €. La remise de 25 % est accordée à vie sur tout le catalogue.',
  },
  {
    q: 'Est-ce que mes achats passés comptent ?',
    a: 'Oui — vos commandes des 36 derniers mois sont prises en compte dès le lancement du programme.',
  },
];

export default function ClubFaq() {
  const [openIndex, setOpenIndex] = useState<number | null>(null);

  return (
    <section className="py-20 md:py-28 px-6">
      <div className="max-w-3xl mx-auto">
        <h2
          className="text-2xl md:text-3xl text-center mb-16"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", color: '#515712' }}
        >
          Questions fréquentes
        </h2>

        <div className="border-t" style={{ borderColor: '#515712' }}>
          {FAQ.map((item, i) => {
            const isOpen = openIndex === i;
            return (
              <div key={i} className="border-b" style={{ borderColor: '#515712' }}>
                <button
                  onClick={() => setOpenIndex(isOpen ? null : i)}
                  className="w-full py-5 md:py-6 flex items-center justify-between text-left gap-4"
                  aria-expanded={isOpen}
                >
                  <span
                    className="text-sm md:text-base font-normal"
                    style={{ fontFamily: 'Inter, sans-serif', color: '#515712' }}
                  >
                    {item.q}
                  </span>
                  <svg
                    className="w-4 h-4 flex-shrink-0 transition-transform duration-300"
                    style={{ color: '#515712', transform: isOpen ? 'rotate(180deg)' : 'rotate(0)' }}
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                    strokeWidth={2}
                  >
                    <path strokeLinecap="round" strokeLinejoin="round" d="M19 9l-7 7-7-7" />
                  </svg>
                </button>
                <div
                  className="overflow-hidden transition-all duration-500 ease-in-out"
                  style={{ maxHeight: isOpen ? '200px' : '0' }}
                >
                  <p
                    className="pb-6 text-sm leading-relaxed"
                    style={{ fontFamily: 'Inter, sans-serif', color: 'rgba(81,87,18,0.6)' }}
                  >
                    {item.a}
                  </p>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
}
