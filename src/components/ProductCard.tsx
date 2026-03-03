import Image from 'next/image';
import Link from 'next/link';

interface ProductCardProps {
  id: number;
  name: string;
  slug: string;
  images: string[];
  subcategory: string;
  dimensions: string;
}

export default function ProductCard({
  slug,
  name,
  images,
  subcategory,
  dimensions,
}: ProductCardProps) {
  const mainImage = images && images.length > 0 ? images[0] : null;
  const isLocal = mainImage?.startsWith('/images/');

  return (
    <Link href={`/catalogue/${slug}`}>
      <div className="product-card bg-white border border-gray-100 group">
        {/* Image */}
        <div className="product-image relative w-full bg-warm-beige overflow-hidden" style={{ aspectRatio: '1' }}>
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
            <div className="w-full h-full bg-warm-beige flex flex-col items-center justify-center text-gray-400">
              <svg className="w-12 h-12 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
              </svg>
              <span className="text-xs uppercase tracking-wider">Photo bientot</span>
            </div>
          )}

          {/* Hover CTA overlay */}
          <div className="product-cta absolute bottom-0 left-0 right-0 bg-dark-olive bg-opacity-90 py-3 text-center">
            <span className="text-off-white text-xs font-semibold uppercase tracking-wider">
              Voir le produit
            </span>
          </div>
        </div>

        {/* Info */}
        <div className="p-5">
          <p className="text-xs text-teak-brown font-semibold uppercase tracking-wider mb-2">{subcategory}</p>
          <h3 className="font-serif font-bold text-lg text-dark-charcoal mb-1 line-clamp-2 group-hover:text-dark-olive transition-colors">
            {name}
          </h3>
          {dimensions && <p className="text-xs text-gray-500 mt-2">{dimensions}</p>}
          <p className="text-xs text-dark-olive font-semibold mt-3 uppercase tracking-wider group-hover:text-teak-brown transition-colors">
            Demander un devis &rarr;
          </p>
        </div>
      </div>
    </Link>
  );
}
