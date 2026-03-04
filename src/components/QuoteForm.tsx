'use client';

import { useState } from 'react';
import Link from 'next/link';

interface QuoteFormProps {
  productSlug?: string;
  productName?: string;
}

export default function QuoteForm({ productSlug, productName }: QuoteFormProps) {
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState(false);
  const [rgpdConsent, setRgpdConsent] = useState(false);
  const [subscribeOffers, setSubscribeOffers] = useState(false);
  const [subscribeNewsletter, setSubscribeNewsletter] = useState(false);
  const [subscribeEvents, setSubscribeEvents] = useState(false);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!rgpdConsent) {
      setError('Veuillez accepter le traitement de vos données personnelles.');
      return;
    }
    setIsLoading(true);
    setError('');

    const formData = new FormData(e.currentTarget);
    const data = {
      type: 'devis',
      name: formData.get('name'),
      email: formData.get('email'),
      phone: formData.get('phone'),
      product: formData.get('product') || productSlug,
      projectType: formData.get('projectType'),
      message: formData.get('message'),
      showroom: formData.get('showroom'),
      rgpdConsent: true,
      subscriptions: {
        offers: subscribeOffers,
        newsletter: subscribeNewsletter,
        events: subscribeEvents,
      },
      createdAt: new Date().toISOString(),
    };

    try {
      const crmUrl = process.env.NEXT_PUBLIC_CRM_URL;
      const response = await fetch(`${crmUrl}api/submissions`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      });

      if (!response.ok) {
        throw new Error('Erreur lors de l\'envoi du formulaire');
      }

      setSuccess(true);
      (e.target as HTMLFormElement).reset();
      setRgpdConsent(false);
      setSubscribeOffers(false);
      setSubscribeNewsletter(false);
      setSubscribeEvents(false);
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
          <input type="hidden" name="product" value={productSlug} />
        </div>
      ) : (
        <div>
          <label htmlFor="product" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Produit (optionnel)
          </label>
          <input type="text" id="product" name="product" placeholder="Entrez le nom du produit" className="form-input" />
        </div>
      )}

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
          <label htmlFor="name" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Nom et Prénom *</label>
          <input type="text" id="name" name="name" required className="form-input" />
        </div>
        <div>
          <label htmlFor="email" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Email *</label>
          <input type="email" id="email" name="email" required className="form-input" />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
          <label htmlFor="phone" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Téléphone *</label>
          <input type="tel" id="phone" name="phone" required className="form-input" />
        </div>
        <div>
          <label htmlFor="projectType" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Type de projet *</label>
          <select id="projectType" name="projectType" required className="form-input">
            <option value="">Sélectionnez un type</option>
            <option value="renovation">Rénovation</option>
            <option value="demenagement">Emménagement</option>
            <option value="professionnel">Projet professionnel</option>
            <option value="other">Autre</option>
          </select>
        </div>
      </div>

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
        <label htmlFor="message" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">Message</label>
        <textarea id="message" name="message" placeholder="Décrivez votre projet, vos préférences de finition, délais souhaités..." className="form-input resize-none" rows={5}></textarea>
      </div>

      {/* Mailing list subscriptions */}
      <div className="border-t border-gray-100 pt-6">
        <p className="text-xs font-semibold uppercase tracking-wider text-gray-600 mb-4">Je souhaite recevoir (optionnel)</p>
        <div className="space-y-3">
          <label className="flex items-start gap-3 cursor-pointer group">
            <input type="checkbox" checked={subscribeOffers} onChange={(e) => setSubscribeOffers(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
            <div>
              <span className="text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors">Offres et promotions</span>
              <p className="text-xs text-gray-400">Offres exclusives et réductions sur nos meubles</p>
            </div>
          </label>
          <label className="flex items-start gap-3 cursor-pointer group">
            <input type="checkbox" checked={subscribeNewsletter} onChange={(e) => setSubscribeNewsletter(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
            <div>
              <span className="text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors">Newsletter</span>
              <p className="text-xs text-gray-400">Nouvelles collections, conseils déco et actualités</p>
            </div>
          </label>
          <label className="flex items-start gap-3 cursor-pointer group">
            <input type="checkbox" checked={subscribeEvents} onChange={(e) => setSubscribeEvents(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
            <div>
              <span className="text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors">Événements</span>
              <p className="text-xs text-gray-400">Invitations aux ventes privées et événements showroom</p>
            </div>
          </label>
        </div>
      </div>

      {/* RGPD Consent */}
      <div className="border-t border-gray-100 pt-6">
        <label className="flex items-start gap-3 cursor-pointer">
          <input type="checkbox" checked={rgpdConsent} onChange={(e) => setRgpdConsent(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" required />
          <span className="text-xs text-gray-500 leading-relaxed">
            J&apos;accepte que mes données personnelles soient traitées par DIMEXOI dans le cadre de ma demande de devis, conformément à la{' '}
            <Link href="/confidentialite" className="text-teak-brown underline hover:text-dark-olive transition-colors">politique de confidentialité</Link>. *
          </span>
        </label>
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
