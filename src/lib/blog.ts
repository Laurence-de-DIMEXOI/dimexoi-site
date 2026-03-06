export interface BlogArticle {
  slug: string;
  title: string;
  excerpt: string;
  content: string;
  image: string;
  category: string;
  tags: string[];
  author: string;
  publishedAt: string;
  updatedAt?: string;
  readingTime: number;
  metaTitle: string;
  metaDescription: string;
}

import blogData from '@/src/data/blog.json';

export const articles: BlogArticle[] = (blogData as BlogArticle[]).sort(
  (a, b) => new Date(b.publishedAt).getTime() - new Date(a.publishedAt).getTime()
);

export function getArticleBySlug(slug: string): BlogArticle | undefined {
  return articles.find(a => a.slug === slug);
}

export function getArticlesByCategory(category: string): BlogArticle[] {
  return articles.filter(a => a.category === category);
}

export function getArticlesByTag(tag: string): BlogArticle[] {
  return articles.filter(a => a.tags.includes(tag));
}

export function getRelatedArticles(slug: string, limit = 3): BlogArticle[] {
  const article = getArticleBySlug(slug);
  if (!article) return [];
  return articles
    .filter(a => a.slug !== slug && (a.category === article.category || a.tags.some(t => article.tags.includes(t))))
    .slice(0, limit);
}
