import { Metadata } from 'next';
import Link from 'next/link';
import Breadcrumb from '@/src/components/Breadcrumb';
import ImageGallery from '@/src/components/ImageGallery';
import QuoteForm from '@/src/components/QuoteForm';
import ProductCard from '@/src/components/ProductCard';
import { getProductBySlug, getProductsBySubcategory, products } from '@/src/lib/products';
import { notFound } from 'next/navigation';

interface PageProps {
  params: {
    slug: string;
  };
}

export async function generateMetadata({ params }: PageProps): Promise<Metadata> {
  const product = getProductBySlug(params.slug);

  if (!product) {
    return {
      title: 'Produit non trouvé',
    };
  }

  return {
    title: `${product.name} - DIMEXOI`,
    description: product.description.split('\n')[0],
    openGraph: {
      title: product.name,
      description: product.description,
      type: 'website',
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

  // Get related products (same subcategory, different product)
  const relatedProducts = getProductsBySubcategory(product.subcategory)
    .filter(p => p.id !== product.id)
    .slice(0, 4);

  const descriptionLines = product.description.split('\n').filter(line => line.trim());

  return (
    <main className="min-h-screen bg-off-white">
      <div className="container mx-auto px-4 py-8">
        <Breadcrumb
          items={[
            { label: 'Accueil', href: '/' },
            { label: 'Catalogue', href: '/catalogue' },
            { label: product.category, href: `/catalogue?category=${encodeURIComponent(product.category)}` },
            { label: product.name },
          ]}
        />

        {/* Product Detail */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-12 mb-16">
          {/* Image Gallery */}
          <div>
            <ImageGallery images={product.images} alt={product.name} />
          </div>

          {/* Product Info */}
          <div>
            <div className="mb-4">
              <span className="inline-block bg-warm-beige text-dark-olive px-3 py-1 rounded-full text-sm font-semibold">
                {product.category}
              </span>
            </div>

            <h1 className="text-4xl font-serif font-bold text-dark-olive mb-2">
              {product.name}
            </h1>

            <p className="text-teak-brown font-medium mb-6">
              {product.subcategory}
            </p>

            {product.collection && (
              <div className="mb-6 pb-6 border-b border-gray-200">
                <p className="text-sm text-gray-600">
                  Collection: <span className="font-semibold">{product.collection}</span>
                </p>
              </div>
            )}

            {/* Description */}
            <div className="mb-8 pb-8 border-b border-gray-200">
              <h3 className="font-serif font-bold text-lg mb-4 text-dark-olive">
                Caractéristiques
              </h3>
              <ul className="space-y-2">
                {descriptionLines.map((line, idx) => (
                  <li key={idx} className="flex gap-3 text-gray-700">
                    <span className="text-teak-brown font-bold flex-shrink-0">✓</span>
                    <span>{line.replace(/^✓\s*/, '')}</span>
                  </li>
                ))}
              </ul>
            </div>

            {/* Dimensions */}
            <div className="mb-8 pb-8 border-b border-gray-200">
              <h3 className="font-serif font-bold text-lg mb-2 text-dark-olive">
                Dimensions
              </h3>
              <p className="text-gray-700">{product.dimensions}</p>
            </div>

            {/* CTAs */}
            <div className="space-y-4 mb-8">
              <Link
                href={`/devis?product=${product.slug}`}
                className="block text-center btn-primary"
              >
                Demander un devis pour ce produit
              </Link>
              <Link
                href="/contact"
                className="block text-center btn-secondary"
              >
                Voir en showroom
              </Link>
            </div>

            {/* Showroom Info */}
            <div className="bg-warm-beige p-6 rounded-lg">
              <h4 className="font-serif font-bold mb-4 text-dark-olive">
                Visitez nos showrooms
              </h4>
              <div className="space-y-3 text-sm">
                <div>
                  <p className="font-semibold text-dark-olive">Showroom SUD</p>
                  <p className="text-gray-600">Saint-Pierre</p>
                  <a href="tel:+262262350679" className="text-teak-brown hover:underline">
                    0262 35 06 79
                  </a>
                </div>
                <div>
                  <p className="font-semibold text-dark-olive">Showroom NORD</p>
                  <p className="text-gray-600">Saint-Denis</p>
                  <a href="tel:+262262203030" className="text-teak-brown hover:underline">
                    0262 20 30 30
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Quote Form */}
        <section className="mb-16 bg-white rounded-lg p-8 border border-warm-beige">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-8 text-center">
            Vous êtes intéressé ?
          </h2>
          <div className="max-w-2xl mx-auto">
            <QuoteForm productSlug={product.slug} productName={product.name} />
          </div>
        </section>

        {/* Related Products */}
        {relatedProducts.length > 0 && (
          <section className="mb-16">
            <h2 className="text-3xl font-serif font-bold text-dark-olive mb-8 text-center">
              Vous aimerez aussi
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
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
