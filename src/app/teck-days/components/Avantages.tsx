import TeckPromoSticker from './TeckPromoSticker';

const ITEMS = [
  { stamp: 'promo' as const, title: '-30% EXCLUSIF', sub: 'Sur tout le teck, sans exception' },
  { stamp: 'STOCK',          title: 'PRÊT À POSER',  sub: 'Cuisines, dressings, vasques disponibles maintenant' },
  { stamp: '3D',             title: 'SUR-MESURE 3D', sub: 'Votre projet modélisé avec Laurent sur RDV' },
  { stamp: '600m²',          title: '2 SHOWROOMS',   sub: 'Saint-Denis (200m²) + Saint-Pierre (400m²)' },
];

export default function Avantages() {
  return (
    <section id="avantages" className="td-section" style={{ background: 'var(--td-cream-bg)' }}>
      <div className="td-container">
        <h2 className="td-section-title">Vos avantages pendant les Teck Days</h2>

        <div style={{
          display: 'grid',
          gridTemplateColumns: 'repeat(auto-fit, minmax(260px, 1fr))',
          gap: '2rem',
          marginTop: '2rem',
        }}>
          {ITEMS.map((it, i) => (
            <div key={i} className="td-block">
              {it.stamp === 'promo' ? (
                <div style={{ position: 'absolute', top: -28, right: -14 }}>
                  <TeckPromoSticker size="sm" rotation={-12} blendBg="cream-light" />
                </div>
              ) : (
                <div className="td-block-stamp">{it.stamp}</div>
              )}
              <h3 style={{
                fontFamily: 'var(--td-font-titles)',
                fontSize: 22,
                color: 'var(--td-teck-dark)',
                marginBottom: '0.5rem',
                marginTop: '0.5rem',
              }}>{it.title}</h3>
              <p style={{ fontFamily: 'var(--td-font-body)', fontSize: 16, color: 'var(--td-charcoal)' }}>
                {it.sub}
              </p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
