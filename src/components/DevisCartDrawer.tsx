'use client';

import Link from 'next/link';
import Image from 'next/image';
import { useDevisCart, FINISHES } from './DevisCartProvider';

export default function DevisCartDrawer() {
  const { items, removeItem, updateQuantity, updateFinish, itemCount, isOpen, closeCart } = useDevisCart();

  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-[70]">
      <div className="absolute inset-0 bg-black bg-opacity-50 backdrop-blur-sm" onClick={closeCart} />
      <div className="absolute right-0 top-0 h-full w-96 max-w-[90vw] bg-white shadow-2xl animate-slide-in-right flex flex-col">
        {/* Header */}
        <div className="flex items-center justify-between p-6 border-b border-gray-100">
          <div>
            <h3 className="font-serif font-bold text-lg text-dark-charcoal">Mon devis</h3>
            <p className="text-xs text-gray-500 uppercase tracking-wider">{itemCount} article{itemCount !== 1 ? 's' : ''}</p>
          </div>
          <button onClick={closeCart} className="text-gray-400 hover:text-dark-charcoal transition-colors">
            <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>

        {/* Items */}
        <div className="flex-1 overflow-y-auto p-6">
          {items.length === 0 ? (
            <div className="text-center py-12">
              <svg className="w-16 h-16 mx-auto text-gray-200 mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
              </svg>
              <p className="text-gray-500 text-sm">Votre liste de devis est vide</p>
              <p className="text-xs text-gray-400 mt-1">Ajoutez des meubles depuis le catalogue</p>
            </div>
          ) : (
            <div className="space-y-6">
              {items.map((item) => (
                <div key={`${item.slug}-${item.finish}`} className="flex gap-4 pb-6 border-b border-gray-50">
                  {/* Image */}
                  <div className="w-20 h-20 bg-warm-beige flex-shrink-0 relative overflow-hidden">
                    {item.image ? (
                      <Image src={item.image} alt={item.name} fill className="object-cover" sizes="80px" unoptimized />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center text-gray-300">
                        <svg className="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                        </svg>
                      </div>
                    )}
                  </div>

                  {/* Info */}
                  <div className="flex-1 min-w-0">
                    <h4 className="font-serif font-bold text-sm text-dark-charcoal truncate">{item.name}</h4>
                    <p className="text-xs text-gray-500 mb-2">{item.subcategory}</p>

                    {/* Finish */}
                    <div className="flex items-center gap-1.5 mb-2">
                      <span className="text-xs text-gray-400">Finition:</span>
                      <select
                        value={item.finish}
                        onChange={(e) => updateFinish(item.slug, e.target.value)}
                        className="text-xs border border-gray-200 px-1.5 py-0.5 bg-white text-dark-charcoal focus:outline-none focus:border-teak-brown"
                      >
                        {FINISHES.map(f => (
                          <option key={f.value} value={f.value}>{f.label}</option>
                        ))}
                      </select>
                    </div>

                    {/* Quantity */}
                    <div className="flex items-center gap-2">
                      <button
                        onClick={() => updateQuantity(item.slug, item.quantity - 1)}
                        className="w-6 h-6 flex items-center justify-center border border-gray-200 text-gray-500 hover:border-dark-charcoal hover:text-dark-charcoal text-xs transition-colors"
                      >
                        &minus;
                      </button>
                      <span className="text-sm font-medium w-6 text-center">{item.quantity}</span>
                      <button
                        onClick={() => updateQuantity(item.slug, item.quantity + 1)}
                        className="w-6 h-6 flex items-center justify-center border border-gray-200 text-gray-500 hover:border-dark-charcoal hover:text-dark-charcoal text-xs transition-colors"
                      >
                        +
                      </button>
                      <button
                        onClick={() => removeItem(item.slug)}
                        className="ml-auto text-gray-300 hover:text-red-500 transition-colors"
                      >
                        <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                        </svg>
                      </button>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* Footer */}
        {items.length > 0 && (
          <div className="p-6 border-t border-gray-100 space-y-3">
            <Link
              href="/devis"
              onClick={closeCart}
              className="block text-center bg-dark-olive text-off-white py-3.5 font-semibold text-sm uppercase tracking-wider hover:bg-dark-olive-light transition-all"
            >
              Envoyer ma demande de devis
            </Link>
            <p className="text-xs text-gray-400 text-center">
              {itemCount} article{itemCount !== 1 ? 's' : ''} dans votre devis
            </p>
          </div>
        )}
      </div>
    </div>
  );
}
