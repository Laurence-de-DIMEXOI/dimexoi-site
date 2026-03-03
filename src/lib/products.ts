import productData from '@/src/data/products.json';

export interface Product {
  id: number;
  name: string;
  slug: string;
  category: string;
  subcategory: string;
  attributes: string;
  dimensions: string;
  images: string[];
  description: string;
  collection: string;
}

export const products: Product[] = productData as Product[];

export function getProductBySlug(slug: string): Product | undefined {
  return products.find(p => p.slug === slug);
}

export function getProductsByCategory(category: string): Product[] {
  return products.filter(p => p.category === category);
}

export function getProductsBySubcategory(subcategory: string): Product[] {
  return products.filter(p => p.subcategory === subcategory);
}

export function getCategories(): string[] {
  return Array.from(new Set(products.map(p => p.category)));
}

export function getSubcategories(): string[] {
  return Array.from(new Set(products.map(p => p.subcategory)));
}

export function getCollections(): string[] {
  return Array.from(new Set(products.filter(p => p.collection).map(p => p.collection)));
}

export function searchProducts(query: string): Product[] {
  const lowerQuery = query.toLowerCase();
  return products.filter(p =>
    p.name.toLowerCase().includes(lowerQuery) ||
    p.subcategory.toLowerCase().includes(lowerQuery) ||
    p.description.toLowerCase().includes(lowerQuery)
  );
}
