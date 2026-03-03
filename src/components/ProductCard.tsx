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
      <div className="product-card bg-white rounded-lg overflow-hidden border border-warm-beige">
        {/* Image */}
        <div className="relative w-full bg-warm-beige overflow-hidden" style={{ aspectRatio: '1' }}>
          {mainImage ? (
            <Image
              src={mainImage}
              alt={name}
              fill
              className="object-cover hover:scale-105 transition-transform duration-300"
              sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 25vw"
              unoptimized={!isLocal}
            />
          ) : (
            <div className="w-full h-full bg-gray-100 flex flex-col items-center justify-center text-gray-400">
              <svg className="w-12 h-12 mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
              </svg>
              <span className="text-sm">Photo bientôt</span>
            </div>
          )}
        </div>

        {/* Info */}
        <div className="p-4">
          <h3 className="font-serif font-bold text-lg text-dark-charcoal mb-2 line-clamp-2">
            {name}
          </h3>
          <p className="text-sm text-teak-brown font-medium mb-1">{subcategory}</p>
          {dimensions && <p className="text-xs text-gray-600">{dimensions}</p>}
          <p className="text-xs text-dark-olive font-semibold mt-2 hover:text-teak-brown">
            Demander un devis →
          </p>
        </div>
      </div>
    </Link>
  );
}
