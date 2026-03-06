import type { Metadata } from 'next';
import Link from 'next/link';
import Image from 'next/image';
import Breadcrumb from '@/src/components/Breadcrumb';
import { articles } from '@/src/lib/blog';

export const metadata: Metadata = {
  title: 'Blog - Conseils & Guides Mobilier Teck | DIMEXOI La Réunion',
  description: 'Découvrez nos guides et conseils pour choisir, entretenir et sublimer vos meubles en teck massif. Astuces déco, tendances et inspirations pour votre intérieur à La Réunion.',
  alternates: {
    canonical: 'https://dimexoi.fr/blog',
  },
};

export default function BlogPage() {
  return (
    <main className="min-h-screen bg-off-white">
      {/* Hero */}
      <div className="bg-dark-olive text-off-white py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Blog' },
            ]}
          />
          <h1 className="text-4xl md:text-5xl font-serif font-bold mt-3">
            Blog
          </h1>
          <p className="text-sm opacity-80 mt-3 uppercase tracking-wider">
            Guides, conseils & inspirations
          </p>
        </div>
      </div>

      {/* Articles Grid */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
        {articles.length === 0 ? (
          <div className="text-center py-20">
            <p className="text-gray-500 text-lg">Les articles arrivent bientôt...</p>
          </div>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            {articles.map((article) => (
              <article key={article.slug} className="bg-white border border-gray-100 group hover:shadow-lg transition-shadow duration-300">
                <Link href={`/blog/${article.slug}`} className="block">
                  {/* Image */}
                  <div className="aspect-[16/10] relative overflow-hidden bg-warm-beige">
                    {article.image ? (
                      <Image
                        src={article.image}
                        alt={article.title}
                        fill
                        className="object-cover group-hover:scale-105 transition-transform duration-500"
                        sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                        unoptimized
                      />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center">
                        <svg className="w-16 h-16 text-gray-200" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M19 20H5a2 2 0 01-2-2V6a2 2 0 012-2h10a2 2 0 012 2v1m2 13a2 2 0 01-2-2V7m2 13a2 2 0 002-2V9a2 2 0 00-2-2h-2m-4-3H9M7 16h6M7 8h6v4H7V8z" />
                        </svg>
                      </div>
                    )}
                  </div>

                  {/* Content */}
                  <div className="p-6">
                    <div className="flex items-center gap-3 mb-3">
                      <span className="text-[10px] font-semibold uppercase tracking-wider text-teak-brown bg-teak-brown/10 px-2 py-0.5">
                        {article.category}
                      </span>
                      <span className="text-xs text-gray-400">
                        {article.readingTime} min de lecture
                      </span>
                    </div>
                    <h2 className="font-serif font-bold text-lg text-dark-charcoal mb-2 group-hover:text-dark-olive transition-colors leading-tight">
                      {article.title}
                    </h2>
                    <p className="text-sm text-gray-500 leading-relaxed line-clamp-3">
                      {article.excerpt}
                    </p>
                    <div className="mt-4 flex items-center justify-between">
                      <time className="text-xs text-gray-400" dateTime={article.publishedAt}>
                        {new Date(article.publishedAt).toLocaleDateString('fr-FR', {
                          day: 'numeric',
                          month: 'long',
                          year: 'numeric',
                        })}
                      </time>
                      <span className="text-xs font-semibold text-dark-olive uppercase tracking-wider group-hover:text-teak-brown transition-colors">
                        Lire &rarr;
                      </span>
                    </div>
                  </div>
                </Link>
              </article>
            ))}
          </div>
        )}
      </div>
    </main>
  );
}
