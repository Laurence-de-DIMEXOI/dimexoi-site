type SR = {
  name: string; surface: string; addr: string; tel: string;
  email: string; maps: string; video?: string; tone?: string;
};

const SR: SR[] = [
  {
    name: 'DIMEXOI Saint-Denis',
    surface: '200 m² de showroom',
    addr: '43 rue Tourette, 97400 Saint-Denis',
    tel: '0262 20 30 30',
    email: 'bernard@dimexoi.fr',
    maps: 'https://maps.google.com/?q=43+rue+Tourette+Saint-Denis+97400',
    video: '/teck-days/assets/video/showroom-nord.mp4',
  },
  {
    name: 'DIMEXOI Saint-Pierre',
    surface: '400 m² de showroom',
    addr: '8 rue Benjamin Hoareau ZI n°3, 97410 Saint-Pierre',
    tel: '0262 35 06 79',
    email: 'contact@dimexoi.fr',
    maps: 'https://maps.google.com/?q=8+rue+Benjamin+Hoareau+ZI+Saint-Pierre+97410',
    video: '/teck-days/assets/video/showroom-sud.mp4',
  },
];

export default function Showrooms() {
  return (
    <section id="showrooms" className="td-section" style={{ background: 'var(--td-cream-bg)' }}>
      <div className="td-container">
        <h2 className="td-section-title">Venez nous voir</h2>

        <div style={{
          display: 'grid',
          gridTemplateColumns: 'repeat(auto-fit, minmax(300px, 1fr))',
          gap: '2rem',
        }}>
          {SR.map((s) => (
            <article key={s.name} style={{
              background: 'var(--td-cream-light)',
              borderRadius: 10,
              overflow: 'hidden',
              border: '1.5px solid rgba(122, 58, 20, 0.18)',
              display: 'flex',
              flexDirection: 'column',
            }}>
              {s.video ? (
                <video
                  src={s.video}
                  autoPlay
                  muted
                  loop
                  playsInline
                  preload="metadata"
                  style={{ width: '100%', aspectRatio: '16 / 10', objectFit: 'cover', display: 'block' }}
                  aria-label={`Vidéo ${s.name}`}
                />
              ) : (
                <div style={{ aspectRatio: '16 / 10', background: s.tone }} aria-hidden />
              )}
              <div style={{ padding: '1.5rem' }}>
                <h3 style={{
                  fontFamily: 'var(--td-font-titles)',
                  fontSize: 22,
                  color: 'var(--td-teck-dark)',
                  marginBottom: '0.5rem',
                }}>{s.name}</h3>
                <p style={{ marginBottom: '0.35rem' }}>{s.addr}</p>
                <p style={{ marginBottom: '0.35rem', color: 'var(--td-green-main)', fontWeight: 600 }}>
                  {s.surface}
                </p>
                <p style={{ marginBottom: '0.35rem' }}>
                  <a href={`tel:${s.tel.replace(/\s/g, '')}`} style={{ color: 'var(--td-teck-dark)' }}>📞 {s.tel}</a>
                </p>
                <p style={{ marginBottom: '1.25rem' }}>
                  <a href={`mailto:${s.email}`} style={{ color: 'var(--td-teck-dark)' }}>✉ {s.email}</a>
                </p>
                <a className="td-btn-secondary" href={s.maps} target="_blank" rel="noopener noreferrer">
                  📍 Itinéraire Maps
                </a>
              </div>
            </article>
          ))}
        </div>
      </div>
    </section>
  );
}
