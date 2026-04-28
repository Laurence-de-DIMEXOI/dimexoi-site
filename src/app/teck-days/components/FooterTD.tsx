export default function FooterTD() {
  return (
    <footer style={{
      background: 'var(--td-teck-dark)',
      color: 'var(--td-cream-bg)',
      padding: '2.5rem 1rem',
      fontFamily: 'var(--td-font-body)',
    }}>
      <div className="td-container" style={{
        display: 'grid',
        gridTemplateColumns: 'repeat(auto-fit, minmax(260px, 1fr))',
        gap: '2rem',
      }}>
        <div>
          <h4 style={{ fontFamily: 'var(--td-font-titles)', color: 'var(--td-cream-bg)', marginBottom: '0.5rem' }}>
            DIMEXOI Saint-Denis
          </h4>
          <p>43 rue Tourette, 97400</p>
          <p>📞 <a href="tel:0262203030" style={{ color: 'var(--td-cream-bg)' }}>0262 20 30 30</a></p>
        </div>
        <div>
          <h4 style={{ fontFamily: 'var(--td-font-titles)', color: 'var(--td-cream-bg)', marginBottom: '0.5rem' }}>
            DIMEXOI Saint-Pierre
          </h4>
          <p>8 rue Benjamin Hoareau ZI n°3, 97410</p>
          <p>📞 <a href="tel:0262350679" style={{ color: 'var(--td-cream-bg)' }}>0262 35 06 79</a></p>
        </div>
        <div>
          <p style={{ fontSize: 12, opacity: 0.8, lineHeight: 1.6 }}>
            Offre -30% valable du 1ᵉʳ au 10 mai 2026 inclus, sur tous les meubles teck en stock et sur-mesure.
            Non cumulable avec d&apos;autres promotions.
          </p>
          <p style={{ marginTop: '0.75rem' }}>
            <a href="/" style={{ color: 'var(--td-cream-bg)', textDecoration: 'underline' }}>← Retour dimexoi.fr</a>
          </p>
        </div>
      </div>
    </footer>
  );
}
