import ContactCard from './ContactCard';
import DevisCard from './DevisCard';
import CalendlyWidget from '@/src/components/CalendlyWidget';

function CardShell({ id, title, desc, children }: { id: string; title: string; desc: string; children: React.ReactNode }) {
  return (
    <article id={id} style={{
      background: 'var(--td-cream-light)',
      border: '2px solid var(--td-teck-light)',
      borderRadius: 10,
      padding: '1.75rem 1.5rem',
      display: 'flex',
      flexDirection: 'column',
    }}>
      <h3 style={{ fontFamily: 'var(--td-font-titles)', fontSize: 22, color: 'var(--td-teck-dark)', marginBottom: '0.5rem' }}>
        {title}
      </h3>
      <p style={{ marginBottom: '1.25rem', fontSize: 15, color: 'var(--td-charcoal)' }}>{desc}</p>
      <div>{children}</div>
    </article>
  );
}

export default function TroisFacons() {
  return (
    <section className="td-section">
      <div className="td-container">
        <h2 className="td-section-title">Comment profiter des Teck Days ?</h2>

        <div style={{
          display: 'grid',
          gridTemplateColumns: 'repeat(auto-fit, minmax(300px, 1fr))',
          gap: '1.5rem',
        }}>
          <CardShell id="contact" title="Être recontacté" desc="Notre équipe vous rappelle sous 24h ouvrées.">
            <ContactCard />
          </CardShell>

          <CardShell id="valider-devis" title="Valider mon devis" desc="Vous avez déjà un devis ? Validez-le avec -30% jusqu'au 10 mai.">
            <DevisCard />
          </CardShell>

          <CardShell id="calendly" title="RDV visio avec le dessinateur 3D" desc="Cuisine ou dressing sur-mesure ? Laurent modélise votre projet en visio, depuis chez vous.">
            <CalendlyWidget
              mode="inline"
              pageSource="teckdays_landing"
              utm={{ utmSource: 'dimexoi', utmMedium: 'site', utmCampaign: 'teckdays_2026', utmContent: 'card_calendly' }}
            />
          </CardShell>
        </div>
      </div>
    </section>
  );
}
