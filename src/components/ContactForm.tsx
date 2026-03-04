'use client';

import { useState } from 'react';
import Link from 'next/link';

const SHOWROOM_MAP: Record<string, string> = {
  sud: 'Saint-Pierre',
  nord: 'Saint-Denis',
  both: 'Pas de préférence',
};

export default function ContactForm() {
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState(false);
  const [consentRgpdEmail, setConsentRgpdEmail] = useState(false);
  const [consentRgpdSms, setConsentRgpdSms] = useState(false);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!consentRgpdEmail) {
      setError('Veuillez accepter le traitement de vos données personnelles par email.');
      return;
    }
    setIsLoading(true);
    setError('');

    const formData = new FormData(e.currentTarget);
    const showroomKey = formData.get('showroom') as string;

    const data = {
      nom: formData.get('nom'),
      prenom: formData.get('prenom'),
      email: formData.get('email'),
      telephone: formData.get('telephone') || '',
      produit: '',
      message: formData.get('message'),
      showroom: SHOWROOM_MAP[showroomKey] || showroomKey || '',
      budget: '',
      source: 'site-web',
      consentements: {
        offre: false,
        newsletter: false,
        invitation: false,
        devis: false,
        rgpdEmail: consentRgpdEmail,
        rgpdSms: consentRgpdSms,
      },
    };

    try {
      const response = await fetch('/api/webhooks/demande', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      });

      if (!response.ok) {
        throw new Error('Erreur lors de l\'envoi du message');
      }

      setSuccess(true);
      (e.target as HTMLFormElement).reset();
      setConsentRgpdEmail(false);
      setConsentRgpdSms(false);
      setTimeout(() => setSuccess(false), 5000);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Une erreur s\'est produite');
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-5">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
        <div>
          <label htmlFor="nom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Nom *
          </label>
          <input type="text" id="nom" name="nom" required className="form-input" />
        </div>
        <div>
          <label htmlFor="prenom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Prénom *
          </label>
          <input type="text" id="prenom" name="prenom" required className="form-input" />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
        <div>
          <label htmlFor="email" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Email *
          </label>
          <input type="email" id="email" name="email" required className="form-input" />
        </div>
        <div>
          <label htmlFor="telephone" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Téléphone
          </label>
          <input type="tel" id="telephone" name="telephone" className="form-input" />
        </div>
      </div>

      <div>
        <label htmlFor="showroom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
          Showroom préféré
        </label>
        <select id="showroom" name="showroom" className="form-input">
          <option value="">Sélectionnez un showroom</option>
          <option value="sud">SUD - Saint-Pierre</option>
          <option value="nord">NORD - Saint-Denis</option>
          <option value="both">Pas de préférence</option>
        </select>
      </div>

      <div>
        <label htmlFor="message" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
          Message *
        </label>
        <textarea
          id="message"
          name="message"
          required
          placeholder="Entrez votre message..."
          className="form-input resize-none"
          rows={5}
        ></textarea>
      </div>

      {/* RGPD Consent */}
      <div className="border-t border-gray-100 pt-5">
        <div className="space-y-3">
          <label className="flex items-start gap-3 cursor-pointer">
            <input type="checkbox" checked={consentRgpdEmail} onChange={(e) => setConsentRgpdEmail(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" required />
            <span className="text-xs text-gray-500 leading-relaxed">
              J&apos;accepte que mes données personnelles soient traitées par DIMEXOI et d&apos;être contacté(e) par email, conformément à la{' '}
              <Link href="/confidentialite" className="text-teak-brown underline hover:text-dark-olive transition-colors">politique de confidentialité</Link>. *
            </span>
          </label>
          <label className="flex items-start gap-3 cursor-pointer">
            <input type="checkbox" checked={consentRgpdSms} onChange={(e) => setConsentRgpdSms(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
            <span className="text-xs text-gray-500 leading-relaxed">
              J&apos;accepte d&apos;être contacté(e) par SMS.
            </span>
          </label>
        </div>
      </div>

      {error && (
        <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 text-sm">
          {error}
        </div>
      )}

      {success && (
        <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 text-sm">
          Merci ! Votre message a été envoyé avec succès. Nous vous recontacterons dans les 48 heures.
        </div>
      )}

      <button
        type="submit"
        disabled={isLoading}
        className="w-full btn-primary disabled:opacity-50 disabled:cursor-not-allowed"
      >
        {isLoading ? 'Envoi en cours...' : 'Envoyer le message'}
      </button>

      <p className="text-xs text-gray-500 text-center">* Champs obligatoires</p>
    </form>
  );
}
