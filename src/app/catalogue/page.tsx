'use client';

import { useState, useMemo, useRef, useEffect, Suspense } from 'react';
import Breadcrumb from '@/src/components/Breadcrumb';
import ProductCard from '@/src/components/ProductCard';
import { products, getCategories, getSubcategories, getCollections } from '@/src/lib/products';
import { useSearchParams } from 'next/navigation';

function FilterDropdown({
  label,
  value,
  options,
  onChange,
}: {
  label: string;
  value: string;
  options: string[];
  onChange: (val: string) => void;
}) {
  const [open, setOpen] = useState(false);
  const ref = useRef<HTMLDivElement>(null);

  useEffect(() => {
    function handleClick(e: MouseEvent) {
      if (ref.current && !ref.current.contains(e.target as Node)) {
        setOpen(false);
      }
    }
    document.addEventListener('mousedown', handleClick);
    return () => document.removeEventListener('mousedown', handleClick);
  }, []);

  return (
    <div ref={ref} className="relative">
      <button
        onClick={() => setOpen(!open)}
        className={`flex items-center gap-2 px-4 py-2.5 text-sm border transition-colors ${
          value
            ? 'border-teak-brown bg-teak-brown bg-opacity-5 text-dark-olive font-medium'
            : 'border-gray-200 bg-white text-gray-600 hover:border-gray-400'
        }`}
      >
        <span>{value || label}</span>
        <svg
          className={`w-3.5 h-3.5 transition-transform ${open ? 'rotate-180' : ''}`}
          fill="none"
          stroke="currentColor"
          viewBox="0 0 24 24"
        >
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
        </svg>
      </button>

      {open && (
        <div className="absolute top-full left-0 mt-1 bg-white border border-gray-200 shadow-lg z-30 min-w-[200px] max-h-72 overflow-y-auto">
          <button
            onClick={() => { onChange(''); setOpen(false); }}
            className={`block w-full text-left px-4 py-2.5 text-sm transition-colors ${
              !value ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:bg-gray-50'
            }`}
          >
            Tous
          </button>
          {options.map((opt) => (
            <button
              key={opt}
              onClick={() => { onChange(opt); setOpen(false); }}
              className={`block w-full text-left px-4 py-2.5 text-sm transition-colors ${
                value === opt ? 'text-dark-olive font-semibold bg-warm-beige' : 'text-gray-600 hover:bg-gray-50'
              }`}
            >
              {opt}
            </button>
          ))}
        </div>
      )}
    </div>
  );
}

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

  return (
    <main className="min-h-screen bg-off-white">
      {/* Page Header */}
      <div className="bg-dark-olive text-off-white py-14">
        <div className="container mx-auto px-6">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              ...(selectedCollection
                ? [{ label: 'Collections', href: '/collections' }, { label: selectedCollection }]
                : [{ label: 'Catalogue' }]
              ),
            ]}
          />
          <h1 className="text-4xl md:text-5xl font-serif font-bold mt-3">
            {pageTitle}
          </h1>
          <p className="text-sm opacity-80 mt-3 uppercase tracking-wider">
            {pageCount}
          </p>
        </div>
      </div>

      <div className="container mx-auto px-6 py-10">
        {/* Horizontal Filter Bar */}
        <div className="mb-8">
          <div className="flex flex-wrap items-center gap-3 mb-4">
            {/* Search */}
            <div className="relative">
              <svg className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
              </svg>
              <input
                type="text"
                placeholder="Rechercher..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="pl-9 pr-4 py-2.5 text-sm border border-gray-200 bg-white text-dark-charcoal placeholder-gray-400 focus:outline-none focus:border-teak-brown transition-colors w-48"
              />
            </div>

            {/* Category Dropdown */}
            <FilterDropdown
              label="Catégorie"
              value={selectedCategory}
              options={categories}
              onChange={(val) => { setSelectedCategory(val); setSelectedSubcategory(''); }}
            />

            {/* Subcategory Dropdown (only if relevant) */}
            {filteredSubcategories.length > 0 && (
              <FilterDropdown
                label="Sous-catégorie"
                value={selectedSubcategory}
                options={filteredSubcategories}
                onChange={setSelectedSubcategory}
              />
            )}

            {/* Collection Dropdown */}
            {collections.length > 0 && (
              <FilterDropdown
                label="Collection"
                value={selectedCollection}
                options={collections}
                onChange={(val) => { setSelectedCollection(val); setSelectedCategory(''); setSelectedSubcategory(''); }}
              />
            )}

            {/* Sort Dropdown */}
            <div className="ml-auto">
              <FilterDropdown
                label="Trier par"
                value={
                  sortBy === 'name-asc' ? 'A → Z' :
                  sortBy === 'name-desc' ? 'Z → A' :
                  sortBy === 'newest' ? 'Nouveautés' : ''
                }
                options={['A → Z', 'Z → A', 'Nouveautés']}
                onChange={(val) => {
                  if (val === 'A → Z') setSortBy('name-asc');
                  else if (val === 'Z → A') setSortBy('name-desc');
                  else if (val === 'Nouveautés') setSortBy('newest');
                  else setSortBy('');
                }}
              />
            </div>
          </div>

          {/* Active Filters & Result Count */}
          <div className="flex items-center justify-between">
            <p className="text-sm text-gray-500">
              {filteredProducts.length} produit{filteredProducts.length !== 1 ? 's' : ''} trouvé{filteredProducts.length !== 1 ? 's' : ''}
            </p>
            {hasActiveFilters && (
              <button
                onClick={clearAll}
                className="text-xs font-semibold uppercase tracking-wider text-teak-brown hover:text-dark-olive transition-colors"
              >
                Réinitialiser les filtres
              </button>
            )}
          </div>
        </div>

        {/* Products Grid - Full Width */}
        {filteredProducts.length > 0 ? (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
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
