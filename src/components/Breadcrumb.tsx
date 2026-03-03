import Link from 'next/link';

interface BreadcrumbItem {
  label: string;
  href?: string;
}

interface BreadcrumbProps {
  items: BreadcrumbItem[];
}

export default function Breadcrumb({ items }: BreadcrumbProps) {
  return (
    <nav className="breadcrumb mb-6">
      {items.map((item, index) => (
        <div key={index} className="flex items-center gap-2">
          {item.href ? (
            <Link href={item.href} className="text-dark-olive hover:text-teak-brown font-medium text-xs uppercase tracking-wider">
              {item.label}
            </Link>
          ) : (
            <span className="text-dark-charcoal font-medium text-xs uppercase tracking-wider">{item.label}</span>
          )}
          {index < items.length - 1 && (
            <span className="breadcrumb-separator text-gray-300">/</span>
          )}
        </div>
      ))}
    </nav>
  );
}
