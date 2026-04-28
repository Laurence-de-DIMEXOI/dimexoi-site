/**
 * Génère un export HTML standalone de /teck-days
 * Usage : node scripts/export-teck-days.mjs
 * Prérequis : `npm run dev` lancé sur :3003
 */
import fs from 'node:fs/promises';
import path from 'node:path';

const ORIGIN = 'http://localhost:3003';
const OUT = path.resolve('./teck-days-export');

async function fetchText(url) {
  const r = await fetch(url);
  if (!r.ok) throw new Error(`Fetch ${url} → ${r.status}`);
  return r.text();
}

async function main() {
  await fs.rm(OUT, { recursive: true, force: true });
  await fs.mkdir(OUT, { recursive: true });

  // 1. SSR HTML
  let html = await fetchText(`${ORIGIN}/teck-days`);

  // 2. Inline tous les <link rel="stylesheet" href="/_next/...">
  const cssLinks = [...html.matchAll(/<link rel="stylesheet"[^>]*href="(\/_next\/[^"]+\.css)"[^>]*>/g)];
  for (const [tag, href] of cssLinks) {
    try {
      const css = await fetchText(`${ORIGIN}${href}`);
      html = html.replace(tag, `<style data-from="${href}">${css}</style>`);
    } catch (e) {
      console.warn('CSS skip', href, e.message);
    }
  }

  // 3. Strip TOUS les scripts (HMR, React, etc.) — la page reste statique mais visuellement complète
  html = html.replace(/<script[\s\S]*?<\/script>/g, '');
  html = html.replace(/<link rel="preload"[^>]+as="script"[^>]*>/g, '');
  html = html.replace(/<link[^>]+_next\/static\/chunks[^>]*>/g, '');

  // 4. Copier les assets Teck Days
  await fs.cp(
    path.resolve('./public/teck-days'),
    path.join(OUT, 'teck-days'),
    { recursive: true }
  );

  // 5. Sauvegarder index.html
  await fs.writeFile(path.join(OUT, 'index.html'), html);

  // 6. README
  await fs.writeFile(
    path.join(OUT, 'README.txt'),
    [
      'Export statique de /teck-days — généré le ' + new Date().toISOString(),
      '',
      "Ouvrir index.html dans un navigateur (double-clic).",
      "La page est purement visuelle : pas de countdown live, pas de form actif,",
      "pas de widget Calendly chargé. C'est une preview pour partage.",
      '',
      'Pour héberger : zipper le dossier et envoyer, OU déposer sur Netlify Drop.',
    ].join('\n')
  );

  console.log(`✅ Export OK → ${OUT}`);
  console.log(`   Ouvrir : ${path.join(OUT, 'index.html')}`);
}

main().catch((e) => {
  console.error('❌ Export fail:', e);
  process.exit(1);
});
