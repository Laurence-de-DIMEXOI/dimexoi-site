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
      <div className="container mx-auto px-4 py-8">
        <Breadcrumb
          items={[
            { label: 'Accueil', href: '/' },
            { label: 'Catalogue' },
          ]}
        />

        <h1 className="text-4xl md:text-5xl font-serif font-bold text-dark-olive mb-8">
          Catalogue complet
        </h1>

        <div className="grid grid-cols-1 lg:grid-cols-4 gap-8">
          {/* Sidebar Filters */}
          <div className="lg:col-span-1">
            <div className="bg-white rounded-lg p-6 border border-warm-beige sticky top-24">
              <h3 className="font-serif font-bold text-lg mb-4 text-dark-olive">
                Filtres
              </h3>

              {/* Search */}
              <div className="mb-6">
                <label className="block text-sm font-semibold mb-2">Recherche</label>
                <input
                  type="text"
                  placeholder="Chercher un produit..."
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive text-sm"
                />
              </div>

              {/* Categories */}
              <div className="mb-6">
                <label className="block text-sm font-semibold mb-2">Catégorie</label>
                <select
                  value={selectedCategory}
                  onChange={(e) => {
                    setSelectedCategory(e.target.value);
                    setSelectedSubcategory('');
                  }}
                  className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive text-sm"
                >
                  <option value="">Toutes les catégories</option>
                  {categories.map(cat => (
                    <option key={cat} value={cat}>
                      {cat}
                    </option>
                  ))}
                </select>
              </div>

              {/* Subcategories */}
              {filteredSubcategories.length > 0 && (
                <div className="mb-6">
                  <label className="block text-sm font-semibold mb-2">Sous-catégorie</label>
                  <select
                    value={selectedSubcategory}
                    onChange={(e) => setSelectedSubcategory(e.target.value)}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-dark-olive text-sm"
                  >
                    <option value="">Toutes les sous-catégories</option>
                    {filteredSubcategories.map(subcat => (
                      <option key={subcat} value={subcat}>
                        {subcat}
                      </option>
                    ))}
                  </select>
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
                  className="w-full text-sm font-semibold text-dark-olive hover:text-teak-brown transition-colors"
                >
                  Réinitialiser les filtres
                </button>
              )}
            </div>
          </div>

          {/* Products Grid */}
          <div className="lg:col-span-3">
            <div className="mb-6">
              <p className="text-gray-600">
                {filteredProducts.length} produit{filteredProducts.length !== 1 ? 's' : ''} trouvé{filteredProducts.length !== 1 ? 's' : ''}
              </p>
            </div>

            {filteredProducts.length > 0 ? (
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                {filteredProducts.map(product => (
                  <ProductCard key={product.id} {...product} />
                ))}
              </div>
            ) : (
              <div className="text-center py-12">
                <p className="text-gray-600 mb-4">
                  Aucun produit ne correspond à vos critères.
                </p>
                <button
                  onClick={() => {
                    setSelectedCategory('');
                    setSelectedSubcategory('');
                    setSearchQuery('');
                  }}
                  className="text-dark-olive font-semibold hover:text-teak-brown"
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
        <p className="text-gray-500">Chargement du catalogue...</p>
      </div>
    }>
      <CatalogueContent />
    </Suspense>
  );
}
