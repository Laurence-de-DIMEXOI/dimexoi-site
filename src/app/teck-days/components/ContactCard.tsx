'use client';

import { useState } from 'react';

export default function ContactCard() {
  const [status, setStatus] = useState<'idle' | 'sending' | 'ok' | 'err'>('idle');

  async function onSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setStatus('sending');
    const fd = new FormData(e.currentTarget);
    const payload = Object.fromEntries(fd.entries());
    try {
      const r = await fetch('/api/leads/teckdays/contact', {
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
        Merci, nous vous recontactons sous 24h ouvrées.
      </div>
    );
  }

  return (
    <form onSubmit={onSubmit}>
      <div className="td-field">
        <label htmlFor="c-prenom">Prénom *</label>
        <input id="c-prenom" name="prenom" required minLength={2} maxLength={50} />
      </div>
      <div className="td-field">
        <label htmlFor="c-nom">Nom</label>
        <input id="c-nom" name="nom" maxLength={50} />
      </div>
      <div className="td-field">
        <label htmlFor="c-email">Email *</label>
        <input id="c-email" name="email" type="email" required />
      </div>
      <div className="td-field">
        <label htmlFor="c-tel">Téléphone *</label>
        <input id="c-tel" name="telephone" type="tel" required placeholder="0692…" />
      </div>
      <div className="td-field">
        <label htmlFor="c-sr">Showroom préféré *</label>
        <select id="c-sr" name="showroomPreferred" required defaultValue="">
          <option value="" disabled>Choisissez un showroom</option>
          <option value="SAINT_DENIS">Saint-Denis</option>
          <option value="SAINT_PIERRE">Saint-Pierre</option>
        </select>
      </div>
      <div className="td-field">
        <label htmlFor="c-projet">Projet</label>
        <select id="c-projet" name="projet" defaultValue="AUTRE">
          <option value="SDB">Salle de bain</option>
          <option value="CUISINE">Cuisine</option>
          <option value="DRESSING">Dressing</option>
          <option value="CHAMBRE">Chambre</option>
          <option value="SALON">Salon</option>
          <option value="AUTRE">Autre</option>
        </select>
      </div>
      <div className="td-field">
        <label htmlFor="c-msg">Message</label>
        <textarea id="c-msg" name="message" maxLength={500} rows={3} />
      </div>
      <label style={{ display: 'flex', gap: '0.5rem', alignItems: 'flex-start', fontSize: 13, marginBottom: '1rem' }}>
        <input type="checkbox" name="consent" required />
        <span>J&apos;accepte d&apos;être recontacté(e) par DIMEXOI dans le cadre des Teck Days.</span>
      </label>
      <button type="submit" className="td-btn-primary" disabled={status === 'sending'} style={{ width: '100%' }}>
        {status === 'sending' ? 'Envoi…' : 'Être recontacté'}
      </button>
      {status === 'err' && (
        <p style={{ marginTop: '0.75rem', color: '#A02020', fontSize: 14 }}>
          Erreur d&apos;envoi. Réessayez ou appelez-nous directement.
        </p>
      )}
    </form>
  );
}
