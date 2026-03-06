interface TocItem {
  id: string;
  text: string;
}

function extractHeadings(html: string): TocItem[] {
  const regex = /<h2\s+id="([^"]+)"[^>]*>(.*?)<\/h2>/gi;
  const items: TocItem[] = [];
  let match;
  while ((match = regex.exec(html)) !== null) {
    // Strip HTML tags from heading text
    const text = match[2].replace(/<[^>]+>/g, '');
    items.push({ id: match[1], text });
  }
  return items;
}

export default function TableOfContents({ content }: { content: string }) {
  const headings = extractHeadings(content);

  if (headings.length === 0) return null;

  return (
    <nav className="bg-gray-50 border border-gray-100 p-6 mb-10">
      <p className="text-xs font-semibold uppercase tracking-wider text-gray-500 mb-4">
        Dans cet article
      </p>
      <ol className="space-y-0">
        {headings.map((heading, index) => (
          <li key={heading.id}>
            <a
              href={`#${heading.id}`}
              className="flex items-center gap-3 py-2.5 text-sm text-gray-600 hover:text-dark-olive transition-colors group border-b border-gray-100 last:border-0"
            >
              <span className="w-6 h-6 flex items-center justify-center text-[10px] font-bold text-gray-400 bg-gray-100 group-hover:bg-dark-olive group-hover:text-off-white transition-colors flex-shrink-0">
                {index + 1}
              </span>
              <span className="group-hover:translate-x-1 transition-transform duration-200">
                {heading.text}
              </span>
            </a>
          </li>
        ))}
      </ol>
    </nav>
  );
}
