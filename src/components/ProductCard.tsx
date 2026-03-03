'use client';

import Image from 'next/image';
import Link from 'next/link';
import { useDevisCart, FINISHES } from './DevisCartProvider';
import { useState } from 'react';

interface ProductCardProps {
  id: number;
  name: string;
  slug: string;
  images: string[];
  subcategory: string;
  category: string;
  dimensions: string;
}

export default function ProductCard({
  slug,
  name,
  images,
  subcategory,
  category,
  dimensions,
}: ProductCardProps) {
  const mainImage = images && images.length > 0 ? images[0] : null;
  const isLocal = mainImage?.startsWith('/images/');
  const { addItem } = useDevisCart();
  const [selectedFinish, setSelectedFinish] = useState('miel');
  const [added, setAdded] = useState(false);

  const handleAddToDevis = (e: React.MouseEvent) => {
    e.preventDefault();
    e.stopPropagation();
    addItem({
      slug,
      name,
      category,
      subcategory,
      image: mainImage || '',
      finish: selectedFinish,
    });
    setAdded(true);
    setTimeout(() => setAdded(false), 1500);
  };

  const handleFinishChange = (e: React.ChangeEvent<HTMLSelectElement>) => {
    e.preventDefault();
    e.stopPropagation();
    setSelectedFinish(e.target.value);
  };

  return (
    <div className="product-card bg-white group">
      {/* Image */}
      <Link href={`/catalogue/${slug}`}>
        <div className="product-image relative w-full bg-gray-50 overflow-hidden" style={{ aspectRatio: '4/5' }}>
          {mainImage ? (
            <Image
              src={mainImage}
              alt={name}
              fill
              className="object-cover"
              sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 25vw"
              unoptimized={!isLocal}
            />
          ) : (
            <div className="w-full h-full bg-cream flex flex-col items-center justify-center text-gray-300">
              <svg className="w-14 h-14 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
              </svg>
              <span className="text-xs uppercase tracking-wider">Photo bient&ocirc;t</span>
            </div>
          )}

          {/* Quick view overlay */}
          <div className="product-cta absolute inset-0 bg-black bg-opacity-40 flex items-center justify-center">
            <span className="text-off-white text-xs font-semibold uppercase tracking-widest border border-off-white px-4 py-2">
              Voir le produit
            </span>
          </div>
        </div>
      </Link>

      {/* Info */}
      <div className="p-5 pb-5">
        <p className="text-xs text-teak-brown font-semibold uppercase tracking-wider mb-1.5">{subcategory}</p>
        <Link href={`/catalogue/${slug}`}>
          <h3 className="font-serif font-bold text-base text-dark-charcoal mb-1 line-clamp-2 group-hover:text-teak-brown transition-colors leading-snug">
            {name}
          </h3>
        </Link>
        {dimensions && <p className="text-xs text-gray-400 mt-1 mb-3">{dimensions}</p>}

        {/* Finish selector */}
        <div className="flex items-center gap-2 mb-4">
          <div className="flex gap-1.5">
            {FINISHES.map(f => (
              <button
                key={f.value}
                onClick={(e) => { e.preventDefault(); e.stopPropagation(); setSelectedFinish(f.value); }}
                title={f.label}
                className={`w-6 h-6 rounded-full border-2 transition-all overflow-hidden ${selectedFinish === f.value ? 'border-dark-charcoal scale-110 ring-1 ring-dark-charcoal ring-offset-1' : 'border-gray-200 hover:border-gray-400'}`}
                style={f.image ? { backgroundImage: `url(${f.image})`, backgroundSize: 'cover' } : { backgroundColor: f.color }}
              />
            ))}
          </div>
          <span className="text-xs text-gray-400 ml-1">
            {FINISHES.find(f => f.value === selectedFinish)?.label}
          </span>
        </div>

        {/* Add to devis button */}
        <button
          onClick={handleAddToDevis}
          className={`w-full py-2.5 text-xs font-semibold uppercase tracking-wider transition-all duration-300 ${
            added
              ? 'bg-forest-green text-off-white'
              : 'bg-dark-olive text-off-white hover:bg-teak-brown'
          }`}
        >
          {added ? '\u2713 Ajout\u00e9 au devis' : 'Ajouter au devis'}
        </button>
      </div>
    </div>
  );
}
