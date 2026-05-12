const JOURS = ['Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'];

const SHOWROOMS = [
  { name: 'Saint-Pierre', hours: '9h — 17h' },
  { name: 'Saint-Denis',  hours: '10h — 13h · 14h — 18h' },
];

export default function OpeningHours() {
  return (
    <section id="ouverture" className="td-section" style={{ background: 'var(--td-cream-warm)' }}>
      <div className="td-container">
        <div style={{
          border: '4px solid var(--td-teck-main)',
          background: 'var(--td-cream-bg)',
          borderRadius: 8,
          padding: '2rem 1.25rem',
        }}>
          <h2 className="td-section-title" style={{ marginBottom: '0.5rem' }}>
            Horaires d&apos;ouverture
          </h2>
          <p style={{ textAlign: 'center', marginBottom: '2rem', color: 'var(--td-charcoal)' }}>
            Du mardi au samedi &middot; jusqu&apos;au 31 mai 2026
          </p>

          <div style={{
            display: 'grid',
            gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))',
            gap: '1.5rem',
            maxWidth: 880,
            margin: '0 auto',
          }}>
            {SHOWROOMS.map((sr) => (
              <div key={sr.name} style={{
                background: 'var(--td-cream-light)',
                borderRadius: 8,
                padding: '1.25rem 1.25rem 1.5rem',
                borderTop: '4px solid var(--td-green-fresh)',
              }}>
                <h3 style={{
                  fontFamily: 'var(--td-font-titles)',
                  fontSize: 20,
                  color: 'var(--td-teck-dark)',
                  marginBottom: '0.25rem',
                }}>
                  {sr.name}
                </h3>
                <p style={{
                  fontFamily: 'var(--td-font-body)',
                  fontSize: 14,
                  color: 'var(--td-green-main)',
                  fontWeight: 600,
                  marginBottom: '1rem',
                  whiteSpace: 'pre-line',
                }}>
                  {sr.hours}
                </p>
                <ul style={{ listStyle: 'none', padding: 0, margin: 0, display: 'flex', flexDirection: 'column', gap: '0.4rem' }}>
                  {JOURS.map((j) => (
                    <li key={j} style={{
                      display: 'flex',
                      alignItems: 'center',
                      gap: '0.5rem',
                      padding: '0.5rem 0.75rem',
                      background: 'var(--td-cream-bg)',
                      borderRadius: 4,
                      fontFamily: 'var(--td-font-body)',
                      color: 'var(--td-charcoal)',
                    }}>
                      <span style={{ color: 'var(--td-green-fresh)', fontWeight: 700 }}>&#10003;</span>
                      <span>{j}</span>
                    </li>
                  ))}
                </ul>
              </div>
            ))}
          </div>

          {/* Exception 14 mai */}
          <div style={{
            marginTop: '1.25rem',
            padding: '0.75rem 1.25rem',
            background: '#FFF3E0',
            border: '1px solid #F59E0B',
            borderRadius: 6,
            textAlign: 'center',
            fontFamily: 'var(--td-font-body)',
            fontSize: 14,
            color: '#92400E',
            maxWidth: 600,
            margin: '1.25rem auto 0',
          }}>
            &#9888; Ferm&eacute; le <strong>jeudi 14 mai</strong> (Ascension &mdash; jour f&eacute;ri&eacute;)
          </div>

          <div style={{
            marginTop: '1.5rem',
            padding: '1.5rem',
            background: 'var(--td-green-main)',
            color: 'white',
            borderRadius: 6,
            textAlign: 'center',
            fontFamily: 'var(--td-font-body)',
            fontWeight: 500,
            display: 'flex',
            flexDirection: 'column',
            gap: '1rem',
            alignItems: 'center',
          }}>
            <p style={{ margin: 0 }}>
              <strong style={{ fontFamily: 'var(--td-font-titles)' }}>Bonne nouvelle :</strong>{' '}
              votre devis est validable en ligne 7j/7 jusqu&apos;au 31 mai 23:59.
            </p>
            <a
              href="#valider-devis"
              className="td-btn-primary"
              style={{ background: 'var(--td-cream-bg)', color: 'var(--td-green-dark)' }}
            >
              Valider mon devis
            </a>
          </div>
        </div>
      </div>
    </section>
  );
}
