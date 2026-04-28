import Image from 'next/image';
import TeckPromoSticker from './TeckPromoSticker';
import TeckCountdown from './TeckCountdown';

export default function Hero() {
  return (
    <section className="td-section" style={{ paddingTop: '2rem' }}>
      <div className="td-container">
        <div className="td-frame" style={{ position: 'relative', overflow: 'hidden' }}>
          {/* Logo */}
          <div style={{ display: 'flex', justifyContent: 'center', marginBottom: '1.25rem' }}>
            <Image
              src="/teck-days/assets/Logo-TD.png"
              alt="Teck Days"
              width={600}
              height={400}
              priority
              style={{ width: 'min(600px, 90%)', height: 'auto', mixBlendMode: 'multiply' }}
            />
          </div>

          <p style={{
            textAlign: 'center',
            fontFamily: 'var(--td-font-titles)',
            fontStyle: 'italic',
            fontSize: 22,
            color: 'var(--td-green-main)',
            marginBottom: '0.75rem',
          }}>
            L&apos;événement teck de l&apos;année
          </p>

          <p style={{
            textAlign: 'center',
            fontFamily: 'var(--td-font-poster)',
            fontWeight: 400,
            fontSize: 'clamp(22px, 4.2vw, 38px)',
            letterSpacing: '0.04em',
            color: 'var(--td-teck-dark)',
            marginBottom: '2rem',
            lineHeight: 1.15,
          }}>
            DU 1ᵉʳ AU 10 MAI 2026
          </p>

          {/* Sticker -30% */}
          <div style={{ display: 'flex', justifyContent: 'center', marginBottom: '0.5rem' }}>
            <TeckPromoSticker size="lg" rotation={-10} className="lg-responsive" />
          </div>

          {/* Countdown */}
          <TeckCountdown endDate="2026-05-10T23:59:59+04:00" />

          {/* CTAs */}
          <div style={{
            display: 'flex',
            gap: '1rem',
            justifyContent: 'center',
            flexWrap: 'wrap',
            marginTop: '2.5rem',
          }}>
            <a href="#avantages" className="td-btn-primary">J&apos;en profite</a>
            <a href="#calendly" className="td-btn-secondary">Prendre RDV 3D</a>
          </div>
        </div>
      </div>
    </section>
  );
}
