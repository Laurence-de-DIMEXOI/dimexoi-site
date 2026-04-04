import { Metadata } from 'next';
import Link from 'next/link';
import Breadcrumb from '@/src/components/Breadcrumb';
import ImageGallery from '@/src/components/ImageGallery';
import QuoteForm from '@/src/components/QuoteForm';
import ProductCard from '@/src/components/ProductCard';
import ShareButton from '@/src/components/ShareButton';
import { getProductBySlug, getProductsBySubcategory, products } from '@/src/lib/products';
import { ProductSchema, BreadcrumbSchema } from '@/src/components/SchemaOrg';
import AddToDevisButton from '@/src/components/AddToDevisButton';
import CalendlyWidget from '@/src/components/CalendlyWidget';
import { notFound } from 'next/navigation';

interface PageProps {
  params: {
    slug: string;
  };
}

export async function generateMetadata({ params }: PageProps): Promise<Metadata> {
  const product = getProductBySlug(params.slug);

  if (!product) {
    return { title: 'Produit non trouv\u00e9' };
  }

  const description = product.description.split('\n')[0].replace(/^✓\s*/, '') || `${product.name} - Meuble en bois exotique par Dimexoi`;

  return {
    title: `${product.name} | Dimexoi  - Meubles en Bois Exotique La Réunion`,
    description,
    openGraph: {
      title: `${product.name} | Dimexoi`,
      description,
      type: 'article',
      images: product.images?.[0] ? [{ url: product.images[0], width: 800, height: 800, alt: product.name }] : [],
    },
  };
}

export async function generateStaticParams() {
  return products.map(product => ({
    slug: product.slug,
  }));
}

export default function ProductDetailPage({ params }: PageProps) {
  const product = getProductBySlug(params.slug);

  if (!product) {
    notFound();
  }

  const relatedProducts = getProductsBySubcategory(product.subcategory)
    .filter(p => p.id !== product.id)
    .slice(0, 4);

  const descriptionLines = product.description.split('\n').filter(line => line.trim());

  return (
    <main className="min-h-screen bg-off-white">
      <ProductSchema
        name={product.name}
        description={product.description.split('\n')[0]}
        image={product.images?.[0] || ''}
        category={product.category}
        slug={product.slug}
      />
      <BreadcrumbSchema
        items={[
          { name: 'Accueil', url: 'https://dimexoi.fr' },
          { name: 'Catalogue', url: 'https://dimexoi.fr/catalogue' },
          { name: product.category, url: `https://dimexoi.fr/catalogue?categorie=${encodeURIComponent(product.category)}` },
          { name: product.name },
        ]}
      />
      {/* Page Header */}
      <div className="bg-dark-olive text-off-white py-10 sm:py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Catalogue', href: '/catalogue' },
              { label: product.category, href: `/catalogue?category=${encodeURIComponent(product.category)}` },
              { label: product.name },
            ]}
          />
          <h1 className="text-3xl sm:text-4xl md:text-5xl font-serif font-bold mt-3">
            {product.name}
          </h1>
          <p className="text-sm opacity-80 mt-3 uppercase tracking-wider">
            {product.category} &middot; {product.subcategory}
          </p>
        </div>
      </div>

      <div className="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:px-8">
        {/* Product Detail */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-14 mb-20">
          {/* Image Gallery */}
          <div>
            <ImageGallery images={product.images} alt={product.name} />
          </div>

          {/* Product Info */}
          <div>
            <span className="inline-block bg-dark-olive text-off-white px-3 py-1 text-xs font-semibold uppercase tracking-wider mb-4">
              {product.category}
            </span>

            <h1 className="text-3xl md:text-4xl font-serif font-bold text-dark-olive mb-2">
              {product.name}
            </h1>

            <p className="text-teak-brown font-medium mb-6">{product.subcategory}</p>

            {product.collection && (
              <div className="mb-6 pb-6 border-b border-gray-200">
                <p className="text-xs uppercase tracking-wider text-gray-500">
                  Collection : <span className="font-semibold text-dark-charcoal">{product.collection}</span>
                </p>
              </div>
            )}

            {/* Description */}
            <div className="mb-8 pb-8 border-b border-gray-200">
              <h3 className="font-sans font-semibold text-xs uppercase tracking-widest text-dark-olive mb-4">
                Caract&eacute;ristiques
              </h3>
              <ul className="space-y-2">
                {descriptionLines.map((line, idx) => (
                  <li key={idx} className="flex gap-3 text-gray-700 text-sm">
                    <span className="text-teak-brown font-bold flex-shrink-0">✓</span>
                    <span>{line.replace(/^✓\s*/, '')}</span>
                  </li>
                ))}
              </ul>
            </div>

            {/* Dimensions */}
            <div className="mb-8 pb-8 border-b border-gray-200">
              <h3 className="font-sans font-semibold text-xs uppercase tracking-widest text-dark-olive mb-2">
                Dimensions
              </h3>
              <p className="text-gray-700 text-sm">{product.dimensions}</p>
            </div>

            {/* CTAs */}
            <div className="space-y-3 mb-8">
              <AddToDevisButton
                slug={product.slug}
                name={product.name}
                category={product.category}
                subcategory={product.subcategory}
                image={product.images?.[0] || ''}
              />
              <CalendlyWidget
                mode="popup"
                pageSource="fiche_produit"
                productSlug={product.slug}
                buttonText="Voir ce meuble en showroom"
                buttonClassName="block text-center w-full py-3 px-6 border-2 border-teak-brown text-teak-brown hover:bg-teak-brown hover:text-white rounded-lg transition-colors font-medium"
              />
            </div>

            {/* Share */}
            <div className="mb-8">
              <ShareButton productName={product.name} productSlug={product.slug} />
            </div>

            {/* Showroom Info */}
            <div className="bg-warm-beige p-6">
              <h4 className="font-sans font-semibold text-xs uppercase tracking-widest text-dark-olive mb-4">
                Visitez nos showrooms
              </h4>
              <div className="grid grid-cols-2 gap-4 text-sm">
                <div>
                  <p className="font-semibold text-dark-olive">Showroom SUD</p>
                  <p className="text-gray-600 text-xs">Saint-Pierre</p>
                  <a href="tel:+262262350679" className="text-teak-brown hover:underline text-xs">
                    0262 35 06 79
                  </a>
                </div>
                <div>
                  <p className="font-semibold text-dark-olive">Showroom NORD</p>
                  <p className="text-gray-600 text-xs">Saint-Denis</p>
                  <a href="tel:+262262203030" className="text-teak-brown hover:underline text-xs">
                    0262 20 30 30
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Quote Form */}
        <section className="mb-20 bg-white p-10 border border-gray-100">
          <div className="text-center mb-8">
            <h2 className="text-3xl font-serif font-bold text-dark-olive section-heading">
              Vous &ecirc;tes int&eacute;ress&eacute; ?
            </h2>
          </div>
          <div className="max-w-2xl mx-auto mt-10">
            <QuoteForm productSlug={product.slug} productName={product.name} />
          </div>
        </section>

        {/* Related Products */}
        {relatedProducts.length > 0 && (
          <section className="mb-16">
            <h2 className="text-3xl font-serif font-bold text-dark-olive section-heading-left mb-10">
              Vous aimerez aussi
            </h2>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mt-10">
              {relatedProducts.map(relProduct => (
                <ProductCard key={relProduct.id} {...relProduct} />
              ))}
            </div>
          </section>
        )}
      </div>
    </main>
  );
}
