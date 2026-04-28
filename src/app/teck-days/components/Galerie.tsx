import Image from 'next/image';

const PHOTOS = [
  { label: 'Salle de bains teck', src: '/teck-days/assets/sdb.JPG' },
  { label: 'Séjour',              src: '/teck-days/assets/sejour.JPG' },
  { label: 'Dressing modulaire',  src: '/teck-days/assets/dressing.JPG' },
];

export default function Galerie() {
  return (
    <section className="td-section">
      <div className="td-container">
        <h2 className="td-section-title">Vos meubles teck, à voir en vrai</h2>

        <div style={{
          display: 'grid',
          gridTemplateColumns: 'repeat(auto-fit, minmax(260px, 1fr))',
          gap: '1rem',
        }}>
          {PHOTOS.map((p, i) => (
            <div
              key={i}
              style={{
                position: 'relative',
                aspectRatio: '1 / 1',
                borderRadius: 8,
                overflow: 'hidden',
                boxShadow: '0 8px 24px rgba(0,0,0,0.12)',
              }}
            >
              <Image
                src={p.src}
                alt={p.label}
                fill
                sizes="(max-width: 768px) 100vw, 33vw"
                style={{ objectFit: 'cover' }}
              />
              <span style={{
                position: 'absolute',
                bottom: '1rem',
                left: '1rem',
                background: 'rgba(0,0,0,0.55)',
                color: 'white',
                padding: '0.4rem 0.8rem',
                borderRadius: 4,
                fontFamily: 'var(--td-font-titles)',
                fontSize: 18,
              }}>
                {p.label}
              </span>
            </div>
          ))}
        </div>

        {/* photo panoramique */}
        <div style={{
          position: 'relative',
          marginTop: '1rem',
          aspectRatio: '16 / 9',
          borderRadius: 8,
          overflow: 'hidden',
          boxShadow: '0 12px 32px rgba(0,0,0,0.15)',
        }}>
          <Image
            src="/teck-days/assets/IMG_3524.JPG"
            alt="Showroom Saint-Pierre 400 m²"
            fill
            sizes="100vw"
            style={{ objectFit: 'cover' }}
          />
          <span style={{
            position: 'absolute',
            bottom: '1.5rem',
            left: '1.5rem',
            background: 'rgba(0,0,0,0.55)',
            color: 'white',
            padding: '0.5rem 1rem',
            borderRadius: 4,
            fontFamily: 'var(--td-font-titles)',
            fontSize: 22,
          }}>
            Showroom Saint-Pierre · 400 m²
          </span>
        </div>

        <div style={{ textAlign: 'center', marginTop: '2rem' }}>
          <a href="#showrooms" className="td-btn-secondary">Découvrir les 2 showrooms</a>
        </div>
      </div>
    </section>
  );
}
