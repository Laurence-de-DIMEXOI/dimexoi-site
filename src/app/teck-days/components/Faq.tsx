const QA = [
  { q: 'Les -30% s’appliquent-ils sur le sur-mesure ?', a: 'Oui, sans exception sur le teck.' },
  { q: 'Et sur la livraison ?', a: 'La livraison se calcule selon le projet et le lieu, voir avec votre conseiller.' },
  { q: 'Faut-il réserver pour visiter ?', a: 'Pas obligatoire, mais recommandé si vous voulez le RDV 3D avec Laurent.' },
  { q: 'Mes devis déjà édités sont-ils éligibles ?', a: 'Oui, les devis édités à partir du 01/03/2026 sont validables jusqu’au 10 mai 23:59 via le formulaire en ligne. La remise est plafonnée à -30 % maximum par article en teck.' },
  { q: 'Quels sont les horaires d’ouverture pendant les Teck Days ?', a: 'Saint-Pierre : 9h–17h. Saint-Denis : 10h–13h puis 14h–18h. Ouverts les 2, 5, 6, 7 et 9 mai. Fermés les 1ᵉʳ, 3, 4, 8 et 10 mai.' },
  { q: 'Possibilité de paiement échelonné ?', a: 'Oui, à voir directement avec votre conseiller en showroom.' },
];

export default function Faq() {
  return (
    <section className="td-section" style={{ background: 'var(--td-cream-bg)' }}>
      <div className="td-container" style={{ maxWidth: 820 }}>
        <h2 className="td-section-title">Questions fréquentes</h2>
        <div>
          {QA.map(({ q, a }, i) => (
            <details key={i} className="td-faq-item">
              <summary>{q}</summary>
              <div className="td-faq-answer">{a}</div>
            </details>
          ))}
        </div>
      </div>
    </section>
  );
}
