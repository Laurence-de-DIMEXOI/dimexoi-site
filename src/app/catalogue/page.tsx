'use client';

import { useState, useMemo, Suspense } from 'react';
import Breadcrumb from '@/src/components/Breadcrumb';
import ProductCard from '@/src/components/ProductCard';
import { products, getCategories, getSubcategories, getCollections } from '@/src/lib/products';
import { useSearchParams } from 'next/navigation';

function CatalogueContent() {
  const searchParams = useSearchParams();
  const categoryParam = searchParams.get('category') || '';
  const subcategoryParam = searchParams.get('subcategory') || '';
  const collectionParam = searchParams.get('collection') || '';
  const searchParam = searchParams.get('search') || '';

  const [searchQuery, setSearchQuery] = useState(searchParam);
  const [selectedCategory, setSelectedCategory] = useState(categoryParam);
  const [selectedSubcategory, setSelectedSubcategory] = useState(subcategoryParam);
  const [selectedCollection, setSelectedCollection] = useState(collectionParam);
  const [sortBy, setSortBy] = useState('');
  const [mobileFiltersOpen, setMobileFiltersOpen] = useState(false);

  const categories = getCategories();
  const subcategories = getSubcategories();
  const collections = getCollections();

  const filteredProducts = useMemo(() => {
    const filtered = products.filter(product => {
      const matchesSearch =
        !searchQuery ||
        product.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
        product.subcategory.toLowerCase().includes(searchQuery.toLowerCase());

      const matchesCategory = !selectedCategory || product.category === selectedCategory;
      const matchesSubcategory =
        !selectedSubcategory || product.subcategory === selectedSubcategory;
      const matchesCollection =
        !selectedCollection || product.collection === selectedCollection;

      return matchesSearch && matchesCategory && matchesSubcategory && matchesCollection;
    });

    if (sortBy === 'name-asc') {
      filtered.sort((a, b) => a.name.localeCompare(b.name));
    } else if (sortBy === 'name-desc') {
      filtered.sort((a, b) => b.name.localeCompare(a.name));
    } else if (sortBy === 'newest') {
      filtered.sort((a, b) => (b.id || 0) - (a.id || 0));
    }

    return filtered;
  }, [searchQuery, selectedCategory, selectedSubcategory, selectedCollection, sortBy]);

  const filteredSubcategories = selectedCategory
    ? subcategories.filter(sub =>
      products.some(p => p.subcategory === sub && p.category === selectedCategory)
    )
    : subcategories;

  const hasActiveFilters = selectedCategory || selectedSubcategory || selectedCollection || searchQuery;

  const pageTitle = selectedCollection
    ? `Collection ${selectedCollection}`
    : 'Catalogue complet';

  const pageCount = selectedCollection
    ? `${filteredProducts.length} produits dans cette collection`
    : `${products.length} produits en teck massif`;

  const clearAll = () => {
    setSelectedCategory('');
    setSelectedSubcategory('');
    setSelectedCollection('');
    setSearchQuery('');
    setSortBy('');
  };

  const activeFilterCount = [selectedCategory, selectedSubcategory, selectedCollection, searchQuery].filter(Boolean).length;

  const SidebarContent = () => (
    <div className="space-y-6">
      {/* Search */}
      <div>
        <h3 className="text-xs font-semibold uppercase tracking-widest text-dark-olive mb-3">Recherche</h3>
        <div className="relative">
          <svg className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
          </svg>
          <input
            type="text"
            placeholder="Rechercher..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="w-full pl-9 pr-4 py-2.5 text-sm border border-gray-200 bg-white text-dark-charcoal placeholder-gray-400 focus:outline-none focus:border-teak-brown transition-colors"
          />
        </div>
      </div>

      {/* Categories */}
      <div>
        <h3 className="text-xs font-semibold uppercase tracking-widest text-dark-olive mb-3">Catégories</h3>
        <ul className="space-y-1">
          <li>
            <button
              onClick={() => { setSelectedCategory(''); setSelectedSubcategory(''); }}
              className={`block w-full text-left px-3 py-2 text-sm transition-colors ${
                !selectedCategory ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'
              }`}
            >
              Toutes les catégories
            </button>
          </li>
          {categories.map((cat) => (
            <li key={cat}>
              <button
                onClick={() => { setSelectedCategory(cat); setSelectedSubcategory(''); }}
                className={`block w-full text-left px-3 py-2 text-sm transition-colors ${
                  selectedCategory === cat ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'
                }`}
              >
                {cat}
              </button>
            </li>
          ))}
        </ul>
      </div>

      {/* Subcategories */}
      {filteredSubcategories.length > 0 && (
        <div>
          <h3 className="text-xs font-semibold uppercase tracking-widest text-dark-olive mb-3">Sous-catégories</h3>
          <ul className="space-y-1">
            <li>
              <button
                onClick={() => setSelectedSubcategory('')}
                className={`block w-full text-left px-3 py-2 text-sm transition-colors ${
                  !selectedSubcategory ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'
                }`}
              >
                Toutes
              </button>
            </li>
            {filteredSubcategories.map((sub) => (
              <li key={sub}>
                <button
                  onClick={() => setSelectedSubcategory(sub)}
                  className={`block w-full text-left px-3 py-2 text-sm transition-colors ${
                    selectedSubcategory === sub ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'
                  }`}
                >
                  {sub}
                </button>
              </li>
            ))}
          </ul>
        </div>
      )}

      {/* Collections */}
      {collections.length > 0 && (
        <div>
          <h3 className="text-xs font-semibold uppercase tracking-widest text-dark-olive mb-3">Collections</h3>
          <ul className="space-y-1">
            <li>
              <button
                onClick={() => { setSelectedCollection(''); }}
                className={`block w-full text-left px-3 py-2 text-sm transition-colors ${
                  !selectedCollection ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'
                }`}
              >
                Toutes
              </button>
            </li>
            {collections.map((col) => (
              <li key={col}>
                <button
                  onClick={() => { setSelectedCollection(col); setSelectedCategory(''); setSelectedSubcategory(''); }}
                  className={`block w-full text-left px-3 py-2 text-sm transition-colors ${
                    selectedCollection === col ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:text-dark-olive hover:bg-gray-50'
                  }`}
                >
                  {col}
                </button>
              </li>
            ))}
          </ul>
        </div>
      )}

      {/* Sort */}
      <div>
        <h3 className="text-xs font-semibold uppercase tracking-widest text-dark-olive mb-3">Trier par</h3>
        <select
          value={sortBy}
          onChange={(e) => setSortBy(e.target.value)}
          className="w-full px-3 py-2.5 text-sm border border-gray-200 bg-white text-dark-charcoal focus:outline-none focus:border-teak-brown transition-colors"
        >
          <option value="">Par défaut</option>
          <option value="name-asc">A → Z</option>
          <option value="name-desc">Z → A</option>
          <option value="newest">Nouveautés</option>
        </select>
      </div>

      {/* Clear filters */}
      {hasActiveFilters && (
        <button
          onClick={clearAll}
          className="w-full text-center text-xs font-semibold uppercase tracking-wider text-teak-brown hover:text-dark-olive transition-colors py-3 border border-teak-brown hover:border-dark-olive"
        >
          Réinitialiser les filtres
        </button>
      )}
    </div>
  );

  return (
    <main className="min-h-screen bg-off-white">
      {/* Page Header */}
      <div className="bg-dark-olive text-off-white py-10 sm:py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              ...(selectedCollection
                ? [{ label: 'Collections', href: '/collections' }, { label: selectedCollection }]
                : [{ label: 'Catalogue' }]
              ),
            ]}
          />
          <h1 className="text-3xl sm:text-4xl md:text-5xl font-serif font-bold mt-3">
            {pageTitle}
          </h1>
          <p className="text-sm opacity-80 mt-3 uppercase tracking-wider">
            {pageCount}
          </p>
        </div>
      </div>

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-10">
        {/* Mobile: Filter toggle + result count */}
        <div className="flex items-center justify-between mb-6 lg:hidden">
          <p className="text-sm text-gray-500">
            {filteredProducts.length} produit{filteredProducts.length !== 1 ? 's' : ''} trouvé{filteredProducts.length !== 1 ? 's' : ''}
          </p>
          <button
            onClick={() => setMobileFiltersOpen(!mobileFiltersOpen)}
            className="flex items-center gap-2 px-4 py-2 text-sm font-medium border border-gray-200 bg-white text-dark-olive hover:border-dark-olive transition-colors"
          >
            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 4a1 1 0 011-1h16a1 1 0 011 1v2.586a1 1 0 01-.293.707l-6.414 6.414a1 1 0 00-.293.707V17l-4 4v-6.586a1 1 0 00-.293-.707L3.293 7.293A1 1 0 013 6.586V4z" />
            </svg>
            Filtres
            {activeFilterCount > 0 && (
              <span className="bg-teak-brown text-off-white text-[10px] font-bold w-5 h-5 rounded-full flex items-center justify-center">
                {activeFilterCount}
              </span>
            )}
          </button>
        </div>

        {/* Mobile Filters Panel */}
        {mobileFiltersOpen && (
          <div className="lg:hidden mb-8 p-5 bg-white border border-gray-100 shadow-sm">
            <div className="flex items-center justify-between mb-4">
              <h2 className="text-sm font-semibold uppercase tracking-wider text-dark-olive">Filtres</h2>
              <button onClick={() => setMobileFiltersOpen(false)} className="text-gray-400 hover:text-dark-olive">
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" /></svg>
              </button>
            </div>
            <SidebarContent />
          </div>
        )}

        <div className="flex gap-8 lg:gap-10">
          {/* Desktop Sidebar */}
          <aside className="hidden lg:block w-64 flex-shrink-0">
            <div className="sticky top-28">
              <SidebarContent />
            </div>
          </aside>

          {/* Products */}
          <div className="flex-1 min-w-0">
            {/* Desktop result count */}
            <div className="hidden lg:flex items-center justify-between mb-6">
              <p className="text-sm text-gray-500">
                {filteredProducts.length} produit{filteredProducts.length !== 1 ? 's' : ''} trouvé{filteredProducts.length !== 1 ? 's' : ''}
              </p>
              {hasActiveFilters && (
                <button
                  onClick={clearAll}
                  className="text-xs font-semibold uppercase tracking-wider text-teak-brown hover:text-dark-olive transition-colors"
                >
                  Réinitialiser
                </button>
              )}
            </div>

            {filteredProducts.length > 0 ? (
              <div className="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-5 sm:gap-6">
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
                  Aucun produit ne correspond à vos critères.
                </p>
                <button onClick={clearAll} className="btn-outline">
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
