'use client';

import { useState } from 'react';

const FAQ = [
  {
    q: 'Comment savoir à quel niveau j\u2019appartiens ?',
    a: 'Votre niveau est communiqué lors de chaque commande et dans les emails de suivi. Vous pouvez aussi nous contacter directement en showroom.',
  },
  {
    q: 'Sur quels produits la remise s\u2019applique-t-elle ?',
    a: 'La remise Club Tectona s\u2019applique sur les meubles en teck massif du catalogue, y compris le sur-mesure. Elle ne couvre pas les services (livraison, montage), les accessoires et les produits dans d\u2019autres matières.',
  },
  {
    q: 'Ma remise est-elle transférable ?',
    a: 'Non. Chaque bon de remise est nominatif et strictement personnel. Il ne peut être cédé, partagé ou utilisé par un tiers.',
  },
  {
    q: 'Combien de temps ma remise est-elle valable ?',
    a: 'La durée de validité dépend de votre niveau : 3 mois (niveau I), 6 mois (niveau II), 9 mois (niveau III), 12 mois (niveau IV). Le niveau V bénéficie d\u2019une remise à vie. Passé ce délai, le bon expire sans possibilité de prolongation.',
  },
  {
    q: 'Puis-je descendre de niveau ?',
    a: 'Non. Une fois un niveau atteint, il est acquis. Votre statut ne peut pas régresser. En revanche, le bon de remise associé a une durée de validité limitée et peut expirer si vous ne l\u2019utilisez pas dans les délais.',
  },
  {
    q: 'La remise est-elle cumulable avec d\u2019autres offres ?',
    a: 'Non. La remise Club Tectona n\u2019est pas cumulable avec les promotions en cours, les soldes ou toute autre offre commerciale. Le montant le plus avantageux pour le client est appliqué.',
  },
  {
    q: 'Comment fonctionne le niveau V, Le Tectona Grandis ?',
    a: 'Le Tectona Grandis est le palier ultime du Club Tectona. À partir d\u2019un cumul de 20 000 € d\u2019achats, la remise de 25 % est accordée à vie sur tous les meubles en teck du catalogue.',
  },
  {
    q: 'Est-ce que mes achats passés comptent ?',
    a: 'Oui - vos commandes depuis 2020 sont prises en compte pour le calcul de votre niveau.',
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
                  style={{ maxHeight: isOpen ? '300px' : '0' }}
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

        {/* Conditions légales */}
        <div className="mt-16 pt-8 border-t" style={{ borderColor: 'rgba(81,87,18,0.15)' }}>
          <h3
            className="text-xs uppercase tracking-wider mb-4"
            style={{ fontFamily: 'Inter, sans-serif', color: 'rgba(81,87,18,0.4)' }}
          >
            Conditions du programme
          </h3>
          <div
            className="text-[11px] leading-relaxed space-y-2"
            style={{ fontFamily: 'Inter, sans-serif', color: 'rgba(81,87,18,0.35)' }}
          >
            <p>Le programme Club Tectona est réservé aux particuliers résidant à La Réunion. Les remises s&apos;appliquent sur les meubles en teck massif du catalogue Dimexoi, y compris les créations sur mesure. Elles ne couvrent ni les frais de livraison, ni les services (montage), ni les produits dans d&apos;autres matières.</p>
            <p>Chaque bon de remise est nominatif, personnel et incessible. Il est utilisable une seule fois dans le délai de validité correspondant au palier (3, 6, 9 ou 12 mois selon le niveau). Passé ce délai, le bon expire sans report ni prolongation possible. Exception : le niveau V (Le Tectona) bénéficie d&apos;une remise permanente à vie.</p>
            <p>Les remises Club Tectona ne sont pas cumulables entre elles, ni avec les promotions, soldes, offres spéciales ou bons de réduction tiers. En cas de concurrence d&apos;offres, le montant le plus avantageux pour le client est retenu.</p>
            <p>Le calcul du cumul d&apos;achats prend en compte les commandes confirmées et réglées depuis 2020. Les commandes annulées, remboursées ou impayées sont exclues du cumul. Dimexoi se réserve le droit de vérifier l&apos;éligibilité de chaque membre.</p>
            <p>Dimexoi se réserve le droit de modifier, suspendre ou mettre fin au programme Club Tectona à tout moment et sans préavis. Les bons de remise en cours de validité restent honorés jusqu&apos;à leur date d&apos;expiration.</p>
          </div>
        </div>
      </div>
    </section>
  );
}
