'use client';

import { useState } from 'react';

export default function DevisCard() {
  const [status, setStatus] = useState<'idle' | 'sending' | 'ok' | 'err'>('idle');

  async function onSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setStatus('sending');
    const fd = new FormData(e.currentTarget);
    const payload = Object.fromEntries(fd.entries());
    try {
      const r = await fetch('/api/leads/teckdays/devis-validation', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload),
      });
      setStatus(r.ok ? 'ok' : 'err');
    } catch {
      setStatus('err');
    }
  }

  if (status === 'ok') {
    return (
      <div style={{ padding: '1rem', background: 'var(--td-cream-bg)', borderRadius: 8, color: 'var(--td-green-dark)' }}>
        Merci, votre demande de validation est enregistrée. Un conseiller vous recontacte sous 24h.
      </div>
    );
  }

  return (
    <form onSubmit={onSubmit}>
      <div className="td-field">
        <label htmlFor="d-num">Numéro de devis *</label>
        <input id="d-num" name="numeroDevis" required placeholder="N° de votre devis" />
        <small style={{ fontSize: 12, color: 'var(--td-charcoal)', opacity: 0.7 }}>
          Valable uniquement sur les devis édités à partir du 01/03/2026.
        </small>
      </div>
      <div className="td-field">
        <label htmlFor="d-email">Email associé *</label>
        <input id="d-email" name="email" type="email" required />
      </div>
      <div className="td-field">
        <label htmlFor="d-tel">Téléphone *</label>
        <input id="d-tel" name="telephone" type="tel" required />
      </div>
      <label style={{ display: 'flex', gap: '0.5rem', alignItems: 'flex-start', fontSize: 13, marginBottom: '1rem' }}>
        <input type="checkbox" name="confirmation" required />
        <span>Je valide mon devis avec la remise <strong>-30%</strong> Teck Days.</span>
      </label>
      <button type="submit" className="td-btn-primary" disabled={status === 'sending'} style={{ width: '100%' }}>
        {status === 'sending' ? 'Envoi…' : 'Valider mon devis'}
      </button>
      {status === 'err' && (
        <p style={{ marginTop: '0.75rem', color: '#A02020', fontSize: 14 }}>
          Erreur d&apos;envoi. Réessayez ou appelez-nous directement.
        </p>
      )}
    </form>
  );
}
