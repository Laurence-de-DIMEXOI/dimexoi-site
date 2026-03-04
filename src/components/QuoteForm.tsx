'use client';

import { useState } from 'react';
import Link from 'next/link';

interface QuoteFormProps {
  productSlug?: string;
  productName?: string;
}

const SHOWROOM_MAP: Record<string, string> = {
  sud: 'SUD - Saint-Pierre',
  nord: 'NORD - Saint-Denis',
  both: 'Pas de préférence',
};

const BUDGET_MAP: Record<string, string> = {
  'moins-1000': 'Moins de 1 000€',
  '1000-3000': '1 000€ - 3 000€',
  '3000-5000': '3 000€ - 5 000€',
  '5000-10000': '5 000€ - 10 000€',
  'plus-10000': 'Plus de 10 000€',
};

export default function QuoteForm({ productSlug, productName }: QuoteFormProps) {
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState(false);
  const [consentOffers, setConsentOffers] = useState(false);
  const [consentNewsletter, setConsentNewsletter] = useState(false);
  const [consentInvitation, setConsentInvitation] = useState(false);
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

    const budgetKey = formData.get('budget') as string;
    const produitName = (formData.get('produit') as string) || productName || '';

    // Build articles array if product is specified
    const articles = produitName ? [{
      nom: produitName,
      categorie: '',
      finition: '',
      quantite: 1,
    }] : [];

    const data = {
      nom: formData.get('nom'),
      prenom: formData.get('prenom'),
      email: formData.get('email'),
      telephone: formData.get('telephone'),
      showroom: SHOWROOM_MAP[showroomKey] || showroomKey,
      budget: BUDGET_MAP[budgetKey] || budgetKey || '',
      message: formData.get('message') || '',
      source: 'site-web-v2',
      articles,
      consentements: {
        offre: consentOffers,
        newsletter: consentNewsletter,
        invitation: consentInvitation,
        devis: true,
        rgpdEmail: consentRgpdEmail,
        rgpdSms: consentRgpdSms,
      },
    };

    try {
      const response = await fetch('https://kokpit-kappa.vercel.app/api/webhooks/demande', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      });

      if (!response.ok) {
        throw new Error('Erreur lors de l\'envoi du formulaire');
      }

      setSuccess(true);
      (e.target as HTMLFormElement).reset();
      setConsentOffers(false);
      setConsentNewsletter(false);
      setConsentInvitation(false);
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
    <form onSubmit={handleSubmit} className="space-y-6">
      {productSlug && productName ? (
        <div className="bg-warm-beige p-4 border-l-4 border-teak-brown">
          <p className="text-xs text-gray-500 uppercase tracking-wider mb-1">Produit sélectionné</p>
          <p className="font-serif font-bold text-dark-olive">{productName}</p>
          <input type="hidden" name="produit" value={productName} />
        </div>
      ) : (
        <div>
          <label htmlFor="produit" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Produit (optionnel)
          </label>
          <input type="text" id="produit" name="produit" placeholder="Entrez le nom du produit" className="form-input" />
        </div>
      )}

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
          <label htmlFor="nom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Nom *</label>
          <input type="text" id="nom" name="nom" required className="form-input" />
        </div>
        <div>
          <label htmlFor="prenom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Prénom *</label>
          <input type="text" id="prenom" name="prenom" required className="form-input" />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
          <label htmlFor="email" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Email *</label>
          <input type="email" id="email" name="email" required className="form-input" />
        </div>
        <div>
          <label htmlFor="telephone" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Téléphone *</label>
          <input type="tel" id="telephone" name="telephone" required className="form-input" />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
          <label htmlFor="showroom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Showroom préféré *</label>
          <select id="showroom" name="showroom" required className="form-input">
            <option value="">Sélectionnez un showroom</option>
            <option value="sud">SUD - Saint-Pierre</option>
            <option value="nord">NORD - Saint-Denis</option>
            <option value="both">Pas de préférence</option>
          </select>
        </div>
        <div>
          <label htmlFor="budget" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Budget estimé</label>
          <select id="budget" name="budget" className="form-input">
            <option value="">Sélectionnez un budget</option>
            <option value="moins-1000">Moins de 1 000 €</option>
            <option value="1000-3000">1 000 € - 3 000 €</option>
            <option value="3000-5000">3 000 € - 5 000 €</option>
            <option value="5000-10000">5 000 € - 10 000 €</option>
            <option value="plus-10000">Plus de 10 000 €</option>
          </select>
        </div>
      </div>

      <div>
        <label htmlFor="message" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Message</label>
        <textarea id="message" name="message" placeholder="Décrivez votre projet, vos préférences de finition, délais souhaités..." className="form-input resize-none" rows={5}></textarea>
      </div>

      {/* Mailing list subscriptions */}
      <div className="border-t border-gray-100 pt-6">
        <p className="text-xs font-semibold uppercase tracking-wider text-gray-600 mb-4">Je souhaite recevoir (optionnel)</p>
        <div className="space-y-3">
          <label className="flex items-start gap-3 cursor-pointer group">
            <input type="checkbox" checked={consentOffers} onChange={(e) => setConsentOffers(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
            <div>
              <span className="text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors">Offres et promotions</span>
              <p className="text-xs text-gray-400">Offres exclusives et réductions sur nos meubles</p>
            </div>
          </label>
          <label className="flex items-start gap-3 cursor-pointer group">
            <input type="checkbox" checked={consentNewsletter} onChange={(e) => setConsentNewsletter(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
            <div>
              <span className="text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors">Newsletter</span>
              <p className="text-xs text-gray-400">Nouvelles collections, conseils déco et actualités</p>
            </div>
          </label>
          <label className="flex items-start gap-3 cursor-pointer group">
            <input type="checkbox" checked={consentInvitation} onChange={(e) => setConsentInvitation(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
            <div>
              <span className="text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors">Événements</span>
              <p className="text-xs text-gray-400">Invitations aux ventes privées et événements showroom</p>
            </div>
          </label>
        </div>
      </div>

      {/* RGPD Consent */}
      <div className="border-t border-gray-100 pt-6">
        <div className="space-y-3">
          <label className="flex items-start gap-3 cursor-pointer">
            <input type="checkbox" checked={consentRgpdEmail} onChange={(e) => setConsentRgpdEmail(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" required />
            <span className="text-xs text-gray-500 leading-relaxed">
              J&apos;accepte que mes données personnelles soient traitées par DIMEXOI dans le cadre de ma demande de devis et d&apos;être contacté(e) par email, conformément à la{' '}
              <Link href="/confidentialite" className="text-teak-brown underline hover:text-dark-olive transition-colors">politique de confidentialité</Link>. *
            </span>
          </label>
          <label className="flex items-start gap-3 cursor-pointer">
            <input type="checkbox" checked={consentRgpdSms} onChange={(e) => setConsentRgpdSms(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
            <span className="text-xs text-gray-500 leading-relaxed">
              J&apos;accepte d&apos;être contacté(e) par SMS pour le suivi de ma demande.
            </span>
          </label>
        </div>
      </div>

      {error && (
        <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 text-sm">{error}</div>
      )}

      {success && (
        <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 text-sm">
          Merci ! Votre demande a été envoyée avec succès. Nous vous recontacterons dans les 48 heures.
        </div>
      )}

      <button type="submit" disabled={isLoading} className="w-full btn-primary disabled:opacity-50 disabled:cursor-not-allowed">
        {isLoading ? 'Envoi en cours...' : 'Envoyer ma demande'}
      </button>

      <p className="text-xs text-gray-400 text-center">* Champs obligatoires — Nous répondons dans les 48 heures</p>
    </form>
  );
}
