'use client';

import { useState, useMemo, Suspense } from 'react';
import Breadcrumb from '@/src/components/Breadcrumb';
import ProductCard from '@/src/components/ProductCard';
import { products, getCategories, getSubcategories } from '@/src/lib/products';
import { useSearchParams } from 'next/navigation';

function CatalogueContent() {
  const searchParams = useSearchParams();
  const categoryParam = searchParams.get('category') || '';
  const subcategoryParam = searchParams.get('subcategory') || '';

  const [searchQuery, setSearchQuery] = useState('');
  const [selectedCategory, setSelectedCategory] = useState(categoryParam);
  const [selectedSubcategory, setSelectedSubcategory] = useState(subcategoryParam);

  const categories = getCategories();
  const subcategories = getSubcategories();

  const filteredProducts = useMemo(() => {
    return products.filter(product => {
      const matchesSearch =
        !searchQuery ||
        product.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
        product.subcategory.toLowerCase().includes(searchQuery.toLowerCase());

      const matchesCategory = !selectedCategory || product.category === selectedCategory;
      const matchesSubcategory =
        !selectedSubcategory || product.subcategory === selectedSubcategory;

      return matchesSearch && matchesCategory && matchesSubcategory;
    });
  }, [searchQuery, selectedCategory, selectedSubcategory]);

  const filteredSubcategories = selectedCategory
    ? subcategories.filter(sub =>
      products.some(p => p.subcategory === sub && p.category === selectedCategory)
    )
    : subcategories;

  return (
    <main className="min-h-screen bg-off-white">
      {/* Page Header */}
      <div className="bg-dark-olive text-off-white py-12">
        <div className="container mx-auto">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Catalogue' },
            ]}
          />
          <h1 className="text-4xl md:text-5xl font-serif font-bold mt-2">
            Catalogue complet
          </h1>
          <p className="text-sm opacity-80 mt-2 uppercase tracking-wider">
            {products.length} produits en teck massif
          </p>
        </div>
      </div>

      <div className="container mx-auto py-10">
        <div className="grid grid-cols-1 lg:grid-cols-4 gap-10">
          {/* Sidebar Filters */}
          <div className="lg:col-span-1">
            <div className="bg-white p-6 border border-gray-100 sticky top-24">
              <h3 className="font-sans font-semibold text-xs uppercase tracking-widest text-dark-olive mb-6 pb-3 border-b border-gray-100">
                Filtres
              </h3>

              {/* Search */}
              <div className="mb-6">
                <label className="block text-xs font-semibold uppercase tracking-wider text-gray-500 mb-2">Recherche</label>
                <input
                  type="text"
                  placeholder="Chercher un produit..."
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  className="form-input"
                />
              </div>

              {/* Categories */}
              <div className="mb-6">
                <label className="block text-xs font-semibold uppercase tracking-wider text-gray-500 mb-3">Cat&eacute;gorie</label>
                <div className="space-y-1">
                  <button
                    onClick={() => { setSelectedCategory(''); setSelectedSubcategory(''); }}
                    className={`block w-full text-left px-3 py-2 text-sm transition-colors ${!selectedCategory ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'}`}
                  >
                    Toutes les cat&eacute;gories
                  </button>
                  {categories.map(cat => (
                    <button
                      key={cat}
                      onClick={() => { setSelectedCategory(cat); setSelectedSubcategory(''); }}
                      className={`block w-full text-left px-3 py-2 text-sm transition-colors ${selectedCategory === cat ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'}`}
                    >
                      {cat}
                    </button>
                  ))}
                </div>
              </div>

              {/* Subcategories */}
              {filteredSubcategories.length > 0 && (
                <div className="mb-6">
                  <label className="block text-xs font-semibold uppercase tracking-wider text-gray-500 mb-3">Sous-cat&eacute;gorie</label>
                  <div className="space-y-1 max-h-60 overflow-y-auto">
                    <button
                      onClick={() => setSelectedSubcategory('')}
                      className={`block w-full text-left px-3 py-2 text-sm transition-colors ${!selectedSubcategory ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'}`}
                    >
                      Toutes
                    </button>
                    {filteredSubcategories.map(subcat => (
                      <button
                        key={subcat}
                        onClick={() => setSelectedSubcategory(subcat)}
                        className={`block w-full text-left px-3 py-2 text-sm transition-colors ${selectedSubcategory === subcat ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'}`}
                      >
                        {subcat}
                      </button>
                    ))}
                  </div>
                </div>
              )}

              {/* Clear Filters */}
              {(selectedCategory || selectedSubcategory || searchQuery) && (
                <button
                  onClick={() => {
                    setSelectedCategory('');
                    setSelectedSubcategory('');
                    setSearchQuery('');
                  }}
                  className="w-full text-xs font-semibold uppercase tracking-wider text-teak-brown hover:text-dark-olive transition-colors py-2 border-t border-gray-100 mt-4 pt-4"
                >
                  R&eacute;initialiser les filtres
                </button>
              )}
            </div>
          </div>

          {/* Products Grid */}
          <div className="lg:col-span-3">
            <div className="mb-8 flex items-center justify-between">
              <p className="text-sm text-gray-500 uppercase tracking-wider">
                {filteredProducts.length} produit{filteredProducts.length !== 1 ? 's' : ''} trouv&eacute;{filteredProducts.length !== 1 ? 's' : ''}
              </p>
            </div>

            {filteredProducts.length > 0 ? (
              <div className="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-6">
                {filteredProducts.map(product => (
                  <ProductCard key={product.id} {...product} />
                ))}
              </div>
            ) : (
              <div className="text-center py-20 bg-white border border-gray-100">
                <svg className="w-16 h-16 mx-auto text-gray-300 mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                </svg>
                <p className="text-gray-500 mb-4">
                  Aucun produit ne correspond &agrave; vos crit&egrave;res.
                </p>
                <button
                  onClick={() => {
                    setSelectedCategory('');
                    setSelectedSubcategory('');
                    setSearchQuery('');
                  }}
                  className="btn-outline"
                >
                  Voir tous les produits
                </button>
              </div>
            )}
          </div>
        </div>
      </div>
    </main>
  );
}

export default function CataloguePage() {
  return (
    <Suspense fallback={
      <div className="min-h-screen bg-off-white flex items-center justify-center">
        <p className="text-gray-500 text-sm uppercase tracking-wider">Chargement du catalogue...</p>
      </div>
    }>
      <CatalogueContent />
    </Suspense>
  );
}
