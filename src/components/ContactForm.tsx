'use client';

import { useState } from 'react';

export default function ContactForm() {
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState(false);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setIsLoading(true);
    setError('');

    const formData = new FormData(e.currentTarget);
    const data = {
      type: 'contact',
      name: formData.get('name'),
      email: formData.get('email'),
      phone: formData.get('phone'),
      subject: formData.get('subject'),
      message: formData.get('message'),
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
        throw new Error('Erreur lors de l\'envoi du message');
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
      <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
        <div>
          <label htmlFor="name" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Nom et Prenom *
          </label>
          <input
            type="text"
            id="name"
            name="name"
            required
            className="form-input"
          />
        </div>
        <div>
          <label htmlFor="email" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Email *
          </label>
          <input
            type="email"
            id="email"
            name="email"
            required
            className="form-input"
          />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
        <div>
          <label htmlFor="phone" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Telephone
          </label>
          <input
            type="tel"
            id="phone"
            name="phone"
            className="form-input"
          />
        </div>
        <div>
          <label htmlFor="subject" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
            Sujet *
          </label>
          <input
            type="text"
            id="subject"
            name="subject"
            required
            className="form-input"
          />
        </div>
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

      {error && (
        <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 text-sm">
          {error}
        </div>
      )}

      {success && (
        <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 text-sm">
          Merci ! Votre message a ete envoye avec succes.
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
