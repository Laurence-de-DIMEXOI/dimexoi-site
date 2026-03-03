import Image from 'next/image';
import Link from 'next/link';

interface CategoryCardProps {
  name: string;
  count: number;
  imageUrl: string;
}

export default function CategoryCard({ name, count, imageUrl }: CategoryCardProps) {
  return (
    <Link href={`/catalogue?category=${encodeURIComponent(name)}`}>
      <div className="category-card relative h-72 md:h-80 cursor-pointer group">
        <Image
          src={imageUrl}
          alt={name}
          fill
          className="object-cover category-image"
          sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
          unoptimized
        />
        <div className="category-overlay"></div>
        <div className="absolute inset-0 flex flex-col items-center justify-end pb-8 text-off-white">
          <div className="category-label text-center">
            <h3 className="font-serif text-2xl font-bold mb-1">{name}</h3>
            <p className="text-sm opacity-80 tracking-wider">{count} produits</p>
            <span className="inline-block mt-3 text-xs font-semibold uppercase tracking-widest border-b border-off-white pb-1 opacity-0 group-hover:opacity-100 transition-opacity duration-300">
              Decouvrir
            </span>
          </div>
        </div>
      </div>
    </Link>
  );
}
