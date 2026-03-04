import { Metadata } from 'next';
import Link from 'next/link';
import Breadcrumb from '@/src/components/Breadcrumb';
import ImageGallery from '@/src/components/ImageGallery';
import QuoteForm from '@/src/components/QuoteForm';
import ProductCard from '@/src/components/ProductCard';
import { getProductBySlug, getProductsBySubcategory, products } from '@/src/lib/products';
import { ProductSchema } from '@/src/components/SchemaOrg';
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
      {/* Page Header */}
      <div className="bg-warm-beige py-5">
        <div className="container mx-auto">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Catalogue', href: '/catalogue' },
              { label: product.category, href: `/catalogue?category=${encodeURIComponent(product.category)}` },
              { label: product.name },
            ]}
          />
        </div>
      </div>

      <div className="container mx-auto py-12">
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
              <Link href={`/devis?product=${product.slug}`} className="block text-center btn-primary w-full">
                Demander un devis pour ce produit
              </Link>
              <Link href="/contact" className="block text-center btn-outline w-full">
                Voir en showroom
              </Link>
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
