'use client';

import { useState, useRef } from 'react';
import Link from 'next/link';

// ── PRIX À METTRE À JOUR AVANT LE LANCEMENT ──────────────────────────────────
// ── Déposer les photos dans /public/stock-mai-2026/{slug}.jpg ────────────────
const PRODUITS = [
  { slug: 'sofia',       nom: 'Sofia',       categorie: 'Salon',          prix: 2490 },
  { slug: 'baya',        nom: 'Baya',        categorie: 'Chambre',        prix: 3200 },
  { slug: 'goa',         nom: 'Goa',         categorie: 'Salle à manger', prix: 2850 },
  { slug: 'uluwatu',     nom: 'Uluwatu',     categorie: 'Extérieur',      prix: 3990 },
  { slug: 'lemani',      nom: 'Lemani',      categorie: 'Chambre',        prix: 2190 },
  { slug: 'cassandre',   nom: 'Cassandre',   categorie: 'Salon',          prix: 2750 },
  { slug: 'evolia-wavy', nom: 'Evolia Wavy', categorie: 'Salon',          prix: 2390 },
] as const;

type Produit = (typeof PRODUITS)[number];

function prixRemise(prix: number) {
  return Math.round(prix * 0.7);
}

function eur(n: number) {
  return n.toLocaleString('fr-FR') + ' €';
}

// ── Image produit avec fallback ───────────────────────────────────────────────
function ProductImage({ slug, nom }: { slug: string; nom: string }) {
  const [error, setError] = useState(false);

  if (error) {
    return (
      <div style={{
        width: '100%', height: '100%',
        display: 'flex', alignItems: 'center', justifyContent: 'center',
        background: 'linear-gradient(135deg, #E8DCC8 0%, #C9B89A 100%)',
        color: '#7A3A14',
        fontFamily: "'Bree Serif', Georgia, serif",
        fontSize: 18, opacity: 0.55,
      }}>
        {nom}
      </div>
    );
  }

  return (
    // eslint-disable-next-line @next/next/no-img-element
    <img
      src={"/stock-mai-2026/" + slug + ".jpg"}
      alt={nom}
      onError={() => setError(true)}
      style={{ width: '100%', height: '100%', objectFit: 'cover', display: 'block' }}
    />
  );
}

// ── Carte produit ─────────────────────────────────────────────────────────────
function ProductCard({
  produit,
  selected,
  onSelect,
}: {
  produit: Produit;
  selected: boolean;
  onSelect: () => void;
}) {
  return (
    <article
      onClick={onSelect}
      style={{
        cursor: 'pointer',
        borderRadius: 10,
        overflow: 'hidden',
        border: selected ? '3px solid #5A7A3B' : '2px solid #D4B896',
        boxShadow: selected
          ? '0 0 0 4px rgba(90,122,59,0.18), 0 8px 28px rgba(0,0,0,0.15)'
          : '0 2px 14px rgba(0,0,0,0.09)',
        background: '#FDF9ED',
        transition: 'border-color 0.2s, box-shadow 0.2s',
        position: 'relative',
        display: 'flex',
        flexDirection: 'column',
      }}
    >
      {/* Checkmark sélection */}
      {selected && (
        <div style={{
          position: 'absolute', top: 10, right: 10, zIndex: 4,
          background: '#5A7A3B', color: 'white',
          borderRadius: '50%', width: 34, height: 34,
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontSize: 20, fontWeight: 700,
          boxShadow: '0 2px 10px rgba(0,0,0,0.25)',
        }}>
          &#10003;
        </div>
      )}

      {/* Badge -30% */}
      <div style={{
        position: 'absolute', top: 10, left: 10, zIndex: 4,
        background: 'linear-gradient(135deg, #C0561E, #9A4A1A)',
        color: '#FAF6E8',
        fontFamily: "'Bree Serif', Georgia, serif",
        fontSize: 16, fontWeight: 700,
        padding: '5px 12px', borderRadius: 4,
        boxShadow: '0 2px 10px rgba(0,0,0,0.3)',
        animation: 'flashBadge 1.8s ease-in-out infinite',
        letterSpacing: '0.02em',
      }}>
        &minus;30&nbsp;%
      </div>

      {/* Photo */}
      <div style={{
        width: '100%', aspectRatio: '4 / 3',
        background: 'linear-gradient(135deg, #E8DCC8 0%, #C9B89A 100%)',
        overflow: 'hidden',
        position: 'relative',
      }}>
        <ProductImage slug={produit.slug} nom={produit.nom} />
      </div>

      {/* Contenu */}
      <div style={{ padding: '1rem 1rem 1.25rem', flexGrow: 1, display: 'flex', flexDirection: 'column' }}>
        <p style={{
          fontFamily: "'Cabin', system-ui, sans-serif",
          fontSize: 11, color: '#9A4A1A', fontWeight: 700,
          letterSpacing: '0.1em', textTransform: 'uppercase', marginBottom: '0.2rem',
        }}>
          {produit.categorie}&nbsp;&middot;&nbsp;En stock
        </p>

        <h3 style={{
          fontFamily: "'Bree Serif', Georgia, serif",
          fontSize: 22, color: '#1A1A1A', fontWeight: 'normal',
          marginBottom: '0.85rem', flexGrow: 1,
        }}>
          {produit.nom}
        </h3>

        {/* Prix */}
        <div style={{ marginBottom: '1rem' }}>
          <div style={{ display: 'flex', alignItems: 'baseline', gap: '0.6rem', flexWrap: 'wrap' }}>
            <span style={{
              fontFamily: "'Bree Serif', Georgia, serif",
              fontSize: 28, fontWeight: 700,
              animation: 'flashPrice 1.8s ease-in-out infinite',
            }}>
              {eur(prixRemise(produit.prix))}
            </span>
            <span style={{
              fontFamily: "'Cabin', system-ui, sans-serif",
              fontSize: 16, color: '#999', textDecoration: 'line-through',
            }}>
              {eur(produit.prix)}
            </span>
          </div>
          <p style={{
            fontFamily: "'Cabin', system-ui, sans-serif",
            fontSize: 12, color: '#AAA', marginTop: '0.15rem',
          }}>
            Prix public conseill&eacute;
          </p>
        </div>

        <button
          type="button"
          onClick={(e) => { e.stopPropagation(); onSelect(); }}
          style={{
            width: '100%', padding: '0.75rem 1rem',
            background: selected ? '#3D5A2A' : '#9A4A1A',
            color: '#FAF6E8', border: 'none', borderRadius: 6,
            fontFamily: "'Cabin', system-ui, sans-serif",
            fontWeight: 700, fontSize: 15, cursor: 'pointer',
            transition: 'background 0.2s',
            letterSpacing: '0.01em',
          }}
        >
          {selected ? '✓ Sélectionné — voir le formulaire' : "Je suis intéressé(e)"}
        </button>
      </div>
    </article>
  );
}

// ── Style label réutilisable ──────────────────────────────────────────────────
const labelStyle: React.CSSProperties = {
  display: 'block',
  fontFamily: "'Cabin', system-ui, sans-serif",
  fontSize: 13, fontWeight: 600, color: '#333',
  marginBottom: '0.35rem',
};

// ── Page principale ───────────────────────────────────────────────────────────
export default function StockMai2026Page() {
  const [selectedSlug, setSelectedSlug] = useState<string | null>(null);
  const [form, setForm] = useState({
    prenom: '',
    nom: '',
    email: '',
    telephone: '',
    showroom: '',
    rgpd: false,
  });
  const [status, setStatus] = useState<'idle' | 'loading' | 'success' | 'error'>('idle');
  const [errorMsg, setErrorMsg] = useState('');
  const formRef = useRef<HTMLDivElement>(null);

  const selectedProduit: Produit | null = PRODUITS.find(p => p.slug === selectedSlug) ?? null;

  function handleSelect(slug: string) {
    const next = slug === selectedSlug ? null : slug;
    setSelectedSlug(next);
    if (next) {
      setTimeout(() => {
        formRef.current?.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }, 150);
    }
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!selectedProduit) return;
    setStatus('loading');
    setErrorMsg('');
    try {
      const res = await fetch('/api/leads/stock-mai-2026', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          prenom: form.prenom,
          nom: form.nom,
          email: form.email,
          telephone: form.telephone,
          showroom: form.showroom,
          rgpd: form.rgpd,
          meuble: selectedProduit.nom,
          meubleSlug: selectedProduit.slug,
        }),
      });
      if (!res.ok) throw new Error('Erreur serveur');
      setStatus('success');
    } catch {
      setStatus('error');
      // TODO: remplacer par le vrai numéro DIMEXOI
      setErrorMsg("Une erreur s'est produite. Veuillez réessayer ou nous appeler directement.");
    }
  }

  return (
    <div style={{
      fontFamily: "'Cabin', system-ui, sans-serif",
      color: '#1A1A1A',
      background: '#FAF6E8',
      minHeight: '100vh',
    }}>
      <style>{`
        @import url('https://fonts.googleapis.com/css2?family=Cabin:wght@400;500;600;700&family=Bree+Serif&display=swap');

        @keyframes flashBadge {
          0%, 100% { opacity: 1; transform: scale(1); box-shadow: 0 2px 10px rgba(0,0,0,0.3); }
          50%       { opacity: 0.9; transform: scale(1.08); box-shadow: 0 4px 20px rgba(192,86,30,0.6); }
        }
        @keyframes flashPrice {
          0%, 100% { color: #3D5A2A; }
          50%       { color: #C0561E; }
        }

        .sm26-grid {
          display: grid;
          grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
          gap: 1.5rem;
        }
        @media (min-width: 900px) {
          .sm26-grid { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 580px) {
          .sm26-grid { grid-template-columns: repeat(2, 1fr); gap: 0.75rem; }
        }

        .sm26-input {
          width: 100%;
          padding: 0.75rem 1rem;
          border: 1.5px solid #D4B896;
          border-radius: 6px;
          font-size: 15px;
          font-family: 'Cabin', system-ui, sans-serif;
          background: #FEFCF4;
          color: #1A1A1A;
          transition: border-color 0.2s;
          box-sizing: border-box;
        }
        .sm26-input:focus {
          outline: none;
          border-color: #9A4A1A;
          box-shadow: 0 0 0 3px rgba(154,74,26,0.12);
        }
      `}</style>

      {/* ── Logo minimal ─────────────────────────────────────────────────── */}
      <div style={{
        background: '#1A1A1A', padding: '1rem 1.5rem',
        display: 'flex', alignItems: 'center', justifyContent: 'center',
      }}>
        <Link href="/" style={{
          color: '#FAF6E8', textDecoration: 'none',
          fontFamily: "'Bree Serif', Georgia, serif",
          fontSize: 24, letterSpacing: '0.12em',
        }}>
          DIMEXOI
        </Link>
      </div>

      {/* ── Hero ─────────────────────────────────────────────────────────── */}
      <div style={{
        background: 'linear-gradient(135deg, #3B1F0A 0%, #7A3A14 40%, #9A4A1A 70%, #6B2F0D 100%)',
        color: '#FAF6E8',
        padding: 'clamp(3rem, 8vw, 5.5rem) 1.5rem',
        textAlign: 'center',
      }}>
        <div style={{ marginBottom: '1.25rem' }}>
          <span style={{
            display: 'inline-block',
            background: '#FFD9A8', color: '#5C2A0A',
            fontFamily: "'Bree Serif', Georgia, serif",
            fontSize: 13, fontWeight: 700,
            letterSpacing: '0.1em', padding: '5px 18px',
            borderRadius: 4, textTransform: 'uppercase',
          }}>
            &#9889; Teck Days &middot; Prolong&eacute; jusqu&apos;au 31 mai 2026
          </span>
        </div>

        <h1 style={{
          fontFamily: "'Bree Serif', Georgia, serif",
          fontSize: 'clamp(2rem, 6vw, 3.5rem)',
          fontWeight: 'normal', lineHeight: 1.1,
          marginBottom: '1rem',
        }}>
          Mobilier en teck<br />
          <span style={{ color: '#FFD9A8' }}>en stock &agrave; La R&eacute;union</span>
        </h1>

        <p style={{
          fontSize: 'clamp(1rem, 2.5vw, 1.3rem)',
          color: 'rgba(255,255,255,0.88)',
          maxWidth: 560, margin: '0 auto 0.75rem',
        }}>
          7 meubles disponibles &bull; 2 showrooms &bull; &minus;30&nbsp;% jusqu&apos;au 31 mai
        </p>

        <p style={{
          fontSize: 'clamp(0.9rem, 2vw, 1.05rem)',
          color: 'rgba(255,217,168,0.92)',
        }}>
          Choisissez votre meuble ci-dessous &mdash; on vous rappelle sous 24h
        </p>

        <div style={{
          marginTop: '2rem',
          display: 'flex', gap: '1.5rem', justifyContent: 'center', flexWrap: 'wrap',
        }}>
          {['Disponible immédiatement', 'Livraison à domicile', 'Garantie 2 ans'].map(txt => (
            <span key={txt} style={{
              fontFamily: "'Cabin', system-ui, sans-serif",
              fontSize: 14, color: 'rgba(255,255,255,0.82)',
              display: 'flex', alignItems: 'center', gap: '0.4rem',
            }}>
              <span style={{ color: '#A8D878', fontWeight: 700 }}>&#10003;</span>
              {txt}
            </span>
          ))}
        </div>
      </div>

      {/* ── Produits ─────────────────────────────────────────────────────── */}
      <div style={{ maxWidth: 1120, margin: '0 auto', padding: '3rem 1.25rem 2rem' }}>
        <h2 style={{
          fontFamily: "'Bree Serif', Georgia, serif",
          fontSize: 'clamp(1.5rem, 3vw, 2rem)',
          color: '#7A3A14', textAlign: 'center',
          marginBottom: '0.5rem', fontWeight: 'normal',
        }}>
          Nos meubles disponibles
        </h2>
        <p style={{ textAlign: 'center', color: '#777', marginBottom: '2rem', fontSize: 15 }}>
          Cliquez sur le meuble qui vous int&eacute;resse pour le s&eacute;lectionner
        </p>

        <div className="sm26-grid">
          {PRODUITS.map(p => (
            <ProductCard
              key={p.slug}
              produit={p}
              selected={selectedSlug === p.slug}
              onSelect={() => handleSelect(p.slug)}
            />
          ))}
        </div>
      </div>

      {/* ── Formulaire ───────────────────────────────────────────────────── */}
      <div
        ref={formRef}
        style={{ maxWidth: 660, margin: '0 auto', padding: '0 1.25rem 5rem' }}
      >
        <div style={{
          background: '#FEFCF4',
          border: selectedProduit ? '2px solid #5A7A3B' : '2px solid #D4B896',
          borderRadius: 12,
          padding: 'clamp(1.5rem, 5vw, 2.5rem)',
          boxShadow: '0 4px 24px rgba(0,0,0,0.08)',
          transition: 'border-color 0.3s',
        }}>

          {status === 'success' ? (
            /* ── Succès ── */
            <div style={{ textAlign: 'center', padding: '2.5rem 0' }}>
              <div style={{ fontSize: 60, marginBottom: '1rem' }}>&#10003;</div>
              <h3 style={{
                fontFamily: "'Bree Serif', Georgia, serif",
                fontSize: 26, color: '#3D5A2A', marginBottom: '0.75rem', fontWeight: 'normal',
              }}>
                Votre demande est envoy&eacute;e&nbsp;!
              </h3>
              <p style={{ color: '#555', lineHeight: 1.75, fontSize: 16 }}>
                Notre &eacute;quipe vous contacte sous <strong>24h ouvrées</strong>.<br />
                {selectedProduit && (
                  <span>Meuble : <strong>{selectedProduit.nom}</strong> &mdash; {eur(prixRemise(selectedProduit.prix))}</span>
                )}
              </p>
            </div>
          ) : (
            /* ── Formulaire ── */
            <>
              {/* En-tête */}
              <div style={{ marginBottom: '1.75rem' }}>
                {selectedProduit ? (
                  <>
                    <p style={{
                      fontFamily: "'Cabin', system-ui, sans-serif",
                      fontSize: 12, color: '#5A7A3B', fontWeight: 700,
                      letterSpacing: '0.1em', textTransform: 'uppercase', marginBottom: '0.3rem',
                    }}>
                      Meuble s&eacute;lectionn&eacute;
                    </p>
                    <h2 style={{
                      fontFamily: "'Bree Serif', Georgia, serif",
                      fontSize: 26, color: '#1A1A1A', fontWeight: 'normal',
                      display: 'flex', alignItems: 'baseline', gap: '0.75rem', flexWrap: 'wrap',
                    }}>
                      {selectedProduit.nom}
                      <span style={{ color: '#5A7A3B', fontWeight: 700, fontSize: 22 }}>
                        {eur(prixRemise(selectedProduit.prix))}
                      </span>
                    </h2>
                    <p style={{ fontSize: 13, color: '#999', marginTop: '0.1rem' }}>
                      au lieu de{' '}
                      <span style={{ textDecoration: 'line-through' }}>
                        {eur(selectedProduit.prix)}
                      </span>
                      {' '}&mdash; offre valable jusqu&apos;au 31 mai 2026
                    </p>
                  </>
                ) : (
                  <div style={{ textAlign: 'center', padding: '0.75rem 0 0.5rem' }}>
                    <p style={{
                      fontFamily: "'Cabin', system-ui, sans-serif",
                      fontSize: 15, color: '#888',
                    }}>
                      &#x1F446; Choisissez un meuble ci-dessus pour continuer
                    </p>
                  </div>
                )}
              </div>

              <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.1rem' }}>
                {/* Prénom / Nom */}
                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1rem' }}>
                  <div>
                    <label style={labelStyle}>Pr&eacute;nom *</label>
                    <input
                      type="text"
                      required
                      className="sm26-input"
                      placeholder="Jean"
                      value={form.prenom}
                      onChange={e => setForm(f => ({ ...f, prenom: e.target.value }))}
                    />
                  </div>
                  <div>
                    <label style={labelStyle}>Nom</label>
                    <input
                      type="text"
                      className="sm26-input"
                      placeholder="Dupont"
                      value={form.nom}
                      onChange={e => setForm(f => ({ ...f, nom: e.target.value }))}
                    />
                  </div>
                </div>

                {/* Email */}
                <div>
                  <label style={labelStyle}>Email *</label>
                  <input
                    type="email"
                    required
                    className="sm26-input"
                    placeholder="jean.dupont@email.com"
                    value={form.email}
                    onChange={e => setForm(f => ({ ...f, email: e.target.value }))}
                  />
                </div>

                {/* Téléphone */}
                <div>
                  <label style={labelStyle}>T&eacute;l&eacute;phone</label>
                  <input
                    type="tel"
                    className="sm26-input"
                    placeholder="0692 XX XX XX"
                    value={form.telephone}
                    onChange={e => setForm(f => ({ ...f, telephone: e.target.value }))}
                  />
                </div>

                {/* Showroom */}
                <div>
                  <label style={labelStyle}>Showroom le plus proche *</label>
                  <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.75rem', marginTop: '0.5rem' }}>
                    {([
                      { code: 'SAINT_PIERRE', label: 'Saint-Pierre (Sud)' },
                      { code: 'SAINT_DENIS',  label: 'Saint-Denis (Nord)' },
                    ] as const).map(({ code, label }) => (
                      <label key={code} style={{
                        display: 'flex', alignItems: 'center', gap: '0.6rem',
                        padding: '0.75rem',
                        border: form.showroom === code ? '2px solid #9A4A1A' : '1.5px solid #D4B896',
                        borderRadius: 6, cursor: 'pointer',
                        background: form.showroom === code ? '#FFF3E0' : '#FEFCF4',
                        fontFamily: "'Cabin', system-ui, sans-serif",
                        fontSize: 14,
                        fontWeight: form.showroom === code ? 600 : 400,
                        transition: 'all 0.15s',
                      }}>
                        <input
                          type="radio"
                          name="showroom"
                          value={code}
                          required
                          checked={form.showroom === code}
                          onChange={e => setForm(f => ({ ...f, showroom: e.target.value }))}
                          style={{ accentColor: '#9A4A1A' }}
                        />
                        {label}
                      </label>
                    ))}
                  </div>
                </div>

                {/* RGPD */}
                <label style={{
                  display: 'flex', alignItems: 'flex-start', gap: '0.65rem',
                  cursor: 'pointer',
                }}>
                  <input
                    type="checkbox"
                    required
                    checked={form.rgpd}
                    onChange={e => setForm(f => ({ ...f, rgpd: e.target.checked }))}
                    style={{ marginTop: 3, accentColor: '#9A4A1A', flexShrink: 0 }}
                  />
                  <span style={{
                    fontFamily: "'Cabin', system-ui, sans-serif",
                    fontSize: 12, color: '#666', lineHeight: 1.6,
                  }}>
                    J&apos;accepte que DIMEXOI utilise mes coordonn&eacute;es pour me recontacter
                    au sujet de cette demande, conform&eacute;ment &agrave; sa{' '}
                    <Link href="/politique-de-confidentialite" style={{ color: '#9A4A1A' }}>
                      politique de confidentialit&eacute;
                    </Link>.
                  </span>
                </label>

                {status === 'error' && errorMsg && (
                  <p style={{
                    color: '#C0561E', fontSize: 14,
                    fontFamily: "'Cabin', system-ui, sans-serif",
                    padding: '0.75rem', background: '#FFF3E0',
                    borderRadius: 6, border: '1px solid #F59E0B',
                  }}>
                    &#9888; {errorMsg}
                  </p>
                )}

                <button
                  type="submit"
                  disabled={!selectedSlug || status === 'loading'}
                  style={{
                    padding: '1rem 2rem',
                    background: !selectedSlug
                      ? '#CCC'
                      : 'linear-gradient(135deg, #9A4A1A, #C0561E)',
                    color: !selectedSlug ? '#999' : '#FAF6E8',
                    border: 'none', borderRadius: 8,
                    fontFamily: "'Bree Serif', Georgia, serif",
                    fontSize: 18,
                    cursor: !selectedSlug ? 'not-allowed' : 'pointer',
                    boxShadow: selectedSlug ? '0 4px 16px rgba(154,74,26,0.4)' : 'none',
                    transition: 'all 0.2s',
                    marginTop: '0.5rem',
                    letterSpacing: '0.01em',
                  }}
                >
                  {status === 'loading'
                    ? 'Envoi en cours...'
                    : "Recevoir un rappel pour ce meuble →"}
                </button>

                <p style={{
                  textAlign: 'center', fontSize: 12, color: '#AAA',
                  fontFamily: "'Cabin', system-ui, sans-serif",
                }}>
                  Notre &eacute;quipe vous rappelle sous 24h ouvr&eacute;es
                  &bull; Offre valable jusqu&apos;au 31 mai 2026
                </p>
              </form>
            </>
          )}
        </div>
      </div>

      {/* ── Footer minimal ───────────────────────────────────────────────── */}
      <div style={{
        background: '#1A1A1A', color: 'rgba(255,255,255,0.45)',
        textAlign: 'center', padding: '1.5rem 1rem',
        fontFamily: "'Cabin', system-ui, sans-serif", fontSize: 13,
      }}>
        DIMEXOI &middot; Mobilier en teck depuis 1995 &middot; La R&eacute;union
        &nbsp;&middot;&nbsp;
        <Link href="/" style={{ color: 'rgba(255,255,255,0.45)', textDecoration: 'underline' }}>
          dimexoi.fr
        </Link>
      </div>
    </div>
  );
}
