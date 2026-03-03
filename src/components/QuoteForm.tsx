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
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
      });

      if (!response.ok) {
        throw new Error('Erreur lors de l\'envoi du formulaire');
      }

      setSuccess(true);
      (e.target as HTMLFormElement).reset();

      setTimeout(() => {
        setSuccess(false);
      }, 5000);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Une erreur s\'est produite');
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-6">
      {/* Product Selection */}
      {productSlug && productName ? (
        <div className="bg-warm-beige p-4 rounded-lg">
          <p className="text-sm text-gray-600">Produit sélectionné :</p>
          <p className="font-serif font-bold text-dark-olive">{productName}</p>
          <input type="hidden" name="product" value={productSlug} />
        </div>
      ) : (
        <div>
          <label htmlFor="product" className="block text-sm font-semibold mb-2">
            Produit (optionnel)
          </label>
          <input
            type="text"
            id="product"
            name="product"
            placeholder="Entrez le nom du produit"
            className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive"
          />
        </div>
      )}

      {/* Name */}
      <div>
        <label htmlFor="name" className="block text-sm font-semibold mb-2">
          Nom et Prénom *
        </label>
        <input
          type="text"
          id="name"
          name="name"
          required
          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive"
        />
      </div>

      {/* Email */}
      <div>
        <label htmlFor="email" className="block text-sm font-semibold mb-2">
          Email *
        </label>
        <input
          type="email"
          id="email"
          name="email"
          required
          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive"
        />
      </div>

      {/* Phone */}
      <div>
        <label htmlFor="phone" className="block text-sm font-semibold mb-2">
          Téléphone *
        </label>
        <input
          type="tel"
          id="phone"
          name="phone"
          required
          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive"
        />
      </div>

      {/* Project Type */}
      <div>
        <label htmlFor="projectType" className="block text-sm font-semibold mb-2">
          Type de projet *
        </label>
        <select
          id="projectType"
          name="projectType"
          required
          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive"
        >
          <option value="">Sélectionnez un type</option>
          <option value="renovation">Rénovation</option>
          <option value="demenagement">Emménagement</option>
          <option value="other">Autre</option>
        </select>
      </div>

      {/* Showroom Preference */}
      <div>
        <label htmlFor="showroom" className="block text-sm font-semibold mb-2">
          Showroom préféré *
        </label>
        <select
          id="showroom"
          name="showroom"
          required
          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive"
        >
          <option value="">Sélectionnez un showroom</option>
          <option value="sud">SUD - Saint-Pierre</option>
          <option value="nord">NORD - Saint-Denis</option>
          <option value="both">Pas de préférence</option>
        </select>
      </div>

      {/* Message */}
      <div>
        <label htmlFor="message" className="block text-sm font-semibold mb-2">
          Message
        </label>
        <textarea
          id="message"
          name="message"
          placeholder="Décrivez votre projet, vos préférences..."
          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive resize-none"
          rows={5}
        ></textarea>
      </div>

      {/* Error Message */}
      {error && (
        <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded-lg">
          {error}
        </div>
      )}

      {/* Success Message */}
      {success && (
        <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 rounded-lg">
          Merci ! Votre demande a été envoyée avec succès. Nous vous recontacterons très bientôt.
        </div>
      )}

      {/* Submit Button */}
      <button
        type="submit"
        disabled={isLoading}
        className="w-full btn-primary disabled:opacity-50 disabled:cursor-not-allowed"
      >
        {isLoading ? 'Envoi en cours...' : 'Envoyer ma demande'}
      </button>

      <p className="text-xs text-gray-600 text-center">
        * Champs obligatoires
      </p>
    </form>
  );
}
