import Link from 'next/link';

interface BreadcrumbItem {
  label: string;
  href?: string;
}

interface BreadcrumbProps {
  items: BreadcrumbItem[];
}

export default function Breadcrumb({ items }: BreadcrumbProps) {
  const baseUrl = 'https://dimexoi.fr';

  // JSON-LD BreadcrumbList schema for SEO
  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: items.map((item, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      name: item.label,
      ...(item.href ? { item: `${baseUrl}${item.href}` } : {}),
    })),
  };

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />
      <nav className="breadcrumb mb-6" aria-label="Fil d'Ariane">
        {items.map((item, index) => (
          <div key={index} className="flex items-center gap-2">
            {item.href ? (
              <Link href={item.href} className="text-gray-300 hover:text-off-white font-medium text-xs uppercase tracking-wider">
                {item.label}
              </Link>
            ) : (
              <span className="text-off-white font-medium text-xs uppercase tracking-wider">{item.label}</span>
            )}
            {index < items.length - 1 && (
              <span className="text-gray-500">/</span>
            )}
          </div>
        ))}
      </nav>
    </>
  );
}
