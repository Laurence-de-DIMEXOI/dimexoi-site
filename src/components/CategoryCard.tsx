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
      <div className="category-card relative overflow-hidden rounded-lg h-64 group cursor-pointer">
        <Image
          src={imageUrl}
          alt={name}
          fill
          className="object-cover group-hover:scale-105 transition-transform duration-300"
          sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
        />
        <div className="category-overlay"></div>
        <div className="absolute inset-0 flex flex-col items-center justify-center text-off-white">
          <h3 className="font-serif text-2xl font-bold mb-2">{name}</h3>
          <p className="text-sm">{count} produits</p>
        </div>
      </div>
    </Link>
  );
}
