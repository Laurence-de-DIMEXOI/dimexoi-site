import type { Metadata } from 'next';
import { notFound } from 'next/navigation';
import Image from 'next/image';
import Link from 'next/link';
import Breadcrumb from '@/src/components/Breadcrumb';
import TableOfContents from '@/src/components/TableOfContents';
import { getArticleBySlug, articles, getRelatedArticles } from '@/src/lib/blog';

interface PageProps {
  params: Promise<{ slug: string }>;
}

export async function generateStaticParams() {
  return articles.map((article) => ({
    slug: article.slug,
  }));
}

export async function generateMetadata({ params }: PageProps): Promise<Metadata> {
  const { slug } = await params;
  const article = getArticleBySlug(slug);
  if (!article) return {};

  return {
    title: article.metaTitle,
    description: article.metaDescription,
    openGraph: {
      title: article.metaTitle,
      description: article.metaDescription,
      type: 'article',
      publishedTime: article.publishedAt,
      modifiedTime: article.updatedAt || article.publishedAt,
      authors: [article.author],
      images: article.image ? [{ url: article.image }] : [],
    },
    alternates: {
      canonical: `https://dimexoi.fr/blog/${slug}`,
    },
  };
}

export default async function BlogArticlePage({ params }: PageProps) {
  const { slug } = await params;
  const article = getArticleBySlug(slug);

  if (!article) {
    notFound();
  }

  const related = getRelatedArticles(slug, 3);

  // JSON-LD structured data for SEO
  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'Article',
    headline: article.title,
    description: article.metaDescription,
    image: article.image ? `https://dimexoi.fr${article.image}` : undefined,
    datePublished: article.publishedAt,
    dateModified: article.updatedAt || article.publishedAt,
    author: {
      '@type': 'Organization',
      name: 'DIMEXOI',
      url: 'https://dimexoi.fr',
    },
    publisher: {
      '@type': 'Organization',
      name: 'DIMEXOI',
      logo: {
        '@type': 'ImageObject',
        url: 'https://dimexoi.fr/favicon.svg',
      },
    },
    mainEntityOfPage: {
      '@type': 'WebPage',
      '@id': `https://dimexoi.fr/blog/${slug}`,
    },
  };

  return (
    <main className="min-h-screen bg-off-white">
      {/* JSON-LD */}
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />

      {/* Hero */}
      <div className="bg-dark-olive text-off-white py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Blog', href: '/blog' },
              { label: article.title },
            ]}
          />
          <div className="mt-4 flex items-center gap-3">
            <span className="text-[10px] font-semibold uppercase tracking-wider bg-off-white/20 px-2 py-0.5">
              {article.category}
            </span>
            <span className="text-xs opacity-70">
              {article.readingTime} min de lecture
            </span>
          </div>
          <h1 className="text-3xl md:text-4xl lg:text-5xl font-serif font-bold mt-3 max-w-4xl leading-tight">
            {article.title}
          </h1>
          <div className="mt-4 flex items-center gap-4 text-sm opacity-70">
            <span>Par {article.author}</span>
            <span>&middot;</span>
            <time dateTime={article.publishedAt}>
              {new Date(article.publishedAt).toLocaleDateString('fr-FR', {
                day: 'numeric',
                month: 'long',
                year: 'numeric',
              })}
            </time>
          </div>
        </div>
      </div>

      {/* Article Content */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
        <div className="max-w-3xl mx-auto">
          {/* Featured Image */}
          {article.image && (
            <div className="aspect-[16/9] relative overflow-hidden mb-10 bg-warm-beige">
              <Image
                src={article.image}
                alt={article.title}
                fill
                className="object-cover"
                sizes="(max-width: 768px) 100vw, 768px"
                priority
                unoptimized
              />
            </div>
          )}

          {/* Table of Contents - auto-generated from h2 ids */}
          <TableOfContents content={article.content} />

          {/* Article Body */}
          <div
            className="prose prose-lg max-w-none
              prose-headings:font-serif prose-headings:text-dark-charcoal prose-headings:font-bold
              prose-h2:text-3xl prose-h2:mt-20 prose-h2:mb-8 prose-h2:border-b prose-h2:border-warm-beige prose-h2:pb-5
              prose-h3:text-xl prose-h3:mt-14 prose-h3:mb-5
              prose-p:text-gray-600 prose-p:leading-relaxed prose-p:mb-6
              prose-strong:text-dark-charcoal prose-strong:font-semibold
              prose-a:text-teak-brown prose-a:underline hover:prose-a:text-dark-olive
              prose-em:text-gray-500
              prose-table:my-0
              [&>.not-prose]:my-14
            "
            dangerouslySetInnerHTML={{ __html: article.content }}
          />

          {/* Tags */}
          <div className="mt-12 pt-8 border-t border-gray-100">
            <div className="flex flex-wrap gap-2">
              {article.tags.map((tag) => (
                <span
                  key={tag}
                  className="text-xs bg-gray-100 text-gray-600 px-3 py-1 uppercase tracking-wider"
                >
                  {tag}
                </span>
              ))}
            </div>
          </div>

          {/* CTA */}
          <div className="mt-12 bg-dark-olive text-off-white p-10 text-center">
            <h3 className="font-serif font-bold text-2xl mb-3">
              Envie de voir nos meubles en vrai ?
            </h3>
            <p className="text-sm opacity-80 mb-6">
              Visitez nos showrooms à Saint-Pierre et Saint-Denis ou demandez un devis en ligne
            </p>
            <div className="flex flex-col sm:flex-row gap-4 justify-center">
              <Link href="/devis" className="btn-primary">
                Demander un devis gratuit
              </Link>
              <Link href="/catalogue" className="border border-off-white text-off-white px-6 py-3 text-xs font-semibold uppercase tracking-wider hover:bg-off-white hover:text-dark-olive transition-all">
                Voir le catalogue
              </Link>
            </div>
          </div>
        </div>

        {/* Related Articles */}
        {related.length > 0 && (
          <div className="mt-20">
            <h2 className="font-serif font-bold text-2xl text-dark-charcoal mb-8 text-center">
              Articles similaires
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-4xl mx-auto">
              {related.map((relArticle) => (
                <Link key={relArticle.slug} href={`/blog/${relArticle.slug}`} className="group">
                  <div className="aspect-[16/10] relative overflow-hidden bg-warm-beige mb-3">
                    {relArticle.image && (
                      <Image
                        src={relArticle.image}
                        alt={relArticle.title}
                        fill
                        className="object-cover group-hover:scale-105 transition-transform duration-500"
                        sizes="33vw"
                        unoptimized
                      />
                    )}
                  </div>
                  <h3 className="font-serif font-bold text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors leading-tight">
                    {relArticle.title}
                  </h3>
                </Link>
              ))}
            </div>
          </div>
        )}
      </div>
    </main>
  );
}
