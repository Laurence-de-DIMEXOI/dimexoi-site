'use client';

import { useDevisCart, FINISHES } from './DevisCartProvider';
import { useState } from 'react';
import { useRouter } from 'next/navigation';

interface AddToDevisButtonProps {
  slug: string;
  name: string;
  category: string;
  subcategory: string;
  image: string;
}

export default function AddToDevisButton({ slug, name, category, subcategory, image }: AddToDevisButtonProps) {
  const { addItem, items } = useDevisCart();
  const router = useRouter();
  const [selectedFinish, setSelectedFinish] = useState('miel');

  const handleAddAndGoToDevis = () => {
    addItem({
      slug,
      name,
      category,
      subcategory,
      image,
      finish: selectedFinish,
    });
    router.push('/devis');
  };

  const isInCart = items.some(i => i.slug === slug);

  return (
    <div className="space-y-3">
      {/* Sélecteur de finition */}
      <div>
        <label className="text-xs uppercase tracking-wider text-gray-500 mb-2 block">Finition</label>
        <div className="flex gap-2">
          {FINISHES.map(f => (
            <button
              key={f.value}
              onClick={() => setSelectedFinish(f.value)}
              className={`w-8 h-8 rounded-full border-2 transition-all ${
                selectedFinish === f.value
                  ? 'border-dark-olive scale-110 ring-2 ring-dark-olive/20'
                  : 'border-gray-200 hover:border-gray-400'
              }`}
              style={{ backgroundColor: f.color }}
              title={f.label}
            />
          ))}
        </div>
        <p className="text-xs text-gray-500 mt-1">
          {FINISHES.find(f => f.value === selectedFinish)?.label}
        </p>
      </div>

      {/* Bouton ajouter au devis */}
      <button
        onClick={handleAddAndGoToDevis}
        className="block text-center btn-primary w-full"
      >
        {isInCart ? 'Ajouter et voir mon devis' : 'Demander un devis pour ce produit'}
      </button>
    </div>
  );
}
