'use client';

import { useState } from 'react';

interface QuoteFormProps {
  productSlug?: string;
  productName?: string;
}

export default function QuoteForm({ productSlug, productName }: QuoteFormProps) {
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState(false);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
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
      setTimeout(() => setSuccess(false), 5000);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Une erreur s\'est produite');
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-5">
      {/* Product Selection */}
      {productSlug && productName ? (
        <div className="bg-warm-beige p-4 border-l-4 border-teak-brown">
          <p className="text-xs text-gray-500 uppercase tracking-wider mb-1">Produit selectionne</p>
          <p className="font-serif font-bold text-dark-olive">{productName}</p>
          <input type="hidden" name="product" value={productSlug} />
        </div>
      ) : (
        <div>
          <label htmlFor="product" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Produit (optionnel)
          </label>
          <input
            type="text"
            id="product"
            name="product"
            placeholder="Entrez le nom du produit"
            className="form-input"
          />
        </div>
      )}

      <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
        <div>
          <label htmlFor="name" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Nom et Prenom *
          </label>
          <input type="text" id="name" name="name" required className="form-input" />
        </div>
        <div>
          <label htmlFor="email" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Email *
          </label>
          <input type="email" id="email" name="email" required className="form-input" />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
        <div>
          <label htmlFor="phone" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Telephone *
          </label>
          <input type="tel" id="phone" name="phone" required className="form-input" />
        </div>
        <div>
          <label htmlFor="projectType" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Type de projet *
          </label>
          <select id="projectType" name="projectType" required className="form-input">
            <option value="">Selectionnez un type</option>
            <option value="renovation">Renovation</option>
            <option value="demenagement">Emmenagement</option>
            <option value="other">Autre</option>
          </select>
        </div>
      </div>

      <div>
        <label htmlFor="showroom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
          Showroom prefere *
        </label>
        <select id="showroom" name="showroom" required className="form-input">
          <option value="">Selectionnez un showroom</option>
          <option value="sud">SUD - Saint-Pierre</option>
          <option value="nord">NORD - Saint-Denis</option>
          <option value="both">Pas de preference</option>
        </select>
      </div>

      <div>
        <label htmlFor="message" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
          Message
        </label>
        <textarea
          id="message"
          name="message"
          placeholder="Decrivez votre projet, vos preferences..."
          className="form-input resize-none"
          rows={5}
        ></textarea>
      </div>

      {error && (
        <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 text-sm">
          {error}
        </div>
      )}

      {success && (
        <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 text-sm">
          Merci ! Votre demande a ete envoyee avec succes. Nous vous recontacterons tres bientot.
        </div>
      )}

      <button
        type="submit"
        disabled={isLoading}
        className="w-full btn-primary disabled:opacity-50 disabled:cursor-not-allowed"
      >
        {isLoading ? 'Envoi en cours...' : 'Envoyer ma demande'}
      </button>

      <p className="text-xs text-gray-500 text-center">* Champs obligatoires</p>
    </form>
  );
}
