import { Metadata } from 'next';
import Link from 'next/link';
import Breadcrumb from '@/src/components/Breadcrumb';
import { products, getCollections } from '@/src/lib/products';

export const metadata: Metadata = {
  title: 'Collections - DIMEXOI',
  description: 'Explorez toutes les collections de meubles en teck DIMEXOI. 17 collections artisanales.',
};

export default function CollectionsPage() {
  const collections = getCollections();

  const collectionsWithCount = collections.map(collection => ({
    name: collection,
    count: products.filter(p => p.collection === collection).length,
  })).filter(c => c.count > 0);

  return (
    <main className="min-h-screen bg-off-white">
      {/* Page Header */}
      <div className="bg-dark-olive text-off-white py-12">
        <div className="container mx-auto">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Collections' },
            ]}
          />
          <h1 className="text-4xl md:text-5xl font-serif font-bold mt-2">
            Collections
          </h1>
          <p className="text-sm opacity-80 mt-2 uppercase tracking-wider">
            {collectionsWithCount.length} collections artisanales
          </p>
        </div>
      </div>

      <div className="container mx-auto py-16">
        {collectionsWithCount.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-16">
            {collectionsWithCount.map(collection => (
              <Link
                key={collection.name}
                href={`/catalogue?collection=${encodeURIComponent(collection.name)}`}
              >
                <div className="bg-white p-8 border border-gray-100 hover:shadow-card-hover transition-all duration-300 cursor-pointer h-full group">
                  <div className="w-10 h-10 flex items-center justify-center bg-warm-beige mb-5">
                    <svg className="w-5 h-5 text-dark-olive" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10" />
                    </svg>
                  </div>
                  <h3 className="font-serif font-bold text-xl text-dark-olive mb-2 group-hover:text-teak-brown transition-colors">
                    {collection.name}
                  </h3>
                  <p className="text-teak-brown font-medium text-sm">
                    {collection.count} produit{collection.count !== 1 ? 's' : ''}
                  </p>
                  <p className="text-xs text-dark-olive font-semibold mt-4 uppercase tracking-wider group-hover:text-teak-brown transition-colors">
                    Voir la collection &rarr;
                  </p>
                </div>
              </Link>
            ))}
          </div>
        ) : (
          <div className="text-center py-20 bg-white border border-gray-100">
            <p className="text-gray-500 mb-4">Aucune collection n&apos;est actuellement disponible.</p>
            <Link href="/catalogue" className="btn-outline">
              Consulter le catalogue complet
            </Link>
          </div>
        )}

        {/* Info Section */}
        <div className="bg-warm-beige p-10 mb-16">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-8 text-center section-heading">
            &Agrave; la d&eacute;couverte de nos collections
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mt-10">
            {[
              { title: 'Qualit\u00e9 garantie', desc: 'Chaque collection est compos\u00e9e de meubles en teck massif 100% Tectona Grandis, s\u00e9lectionn\u00e9s pour leur qualit\u00e9 exceptionnelle.' },
              { title: 'Sur-mesure disponible', desc: 'Vous pouvez adapter les dimensions et finitions de la plupart de nos meubles selon vos besoins sp\u00e9cifiques.' },
              { title: 'Conseil personnalis\u00e9', desc: 'Notre \u00e9quipe d\'experts vous accompagne dans le choix de votre collection et vous conseille sur l\'agencement.' },
              { title: 'Livraison et montage', desc: 'Nous assurons la livraison et le montage sur place de tous nos meubles, sous condition d\'accessibilit\u00e9.' },
            ].map((item, idx) => (
              <div key={idx}>
                <h3 className="font-serif font-bold text-lg text-dark-olive mb-3">{item.title}</h3>
                <p className="text-gray-700 text-sm leading-relaxed">{item.desc}</p>
              </div>
            ))}
          </div>
        </div>

        {/* CTA */}
        <div className="text-center">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-4 section-heading">
            Int&eacute;ress&eacute; par une collection ?
          </h2>
          <p className="text-gray-600 mb-8 mt-8">
            Demandez un devis ou visitez nos showrooms
          </p>
          <Link href="/devis" className="btn-primary">
            Demander un devis
          </Link>
        </div>
      </div>
    </main>
  );
}
