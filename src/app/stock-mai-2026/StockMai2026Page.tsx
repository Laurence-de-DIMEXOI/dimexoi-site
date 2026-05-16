'use client';

import { useState, useEffect, useRef, useCallback } from 'react';
import Link from 'next/link';

// ── PRIX À METTRE À JOUR AVANT LE LANCEMENT ─────────────────────────────────
// ── Photos : /public/stock-mai-2026/{slug}.jpg (ou .png) ────────────────────
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

const INTERVAL = 5000;

function prixRemise(prix: number) { return Math.round(prix * 0.7); }
function eur(n: number) { return n.toLocaleString('fr-FR') + ' €'; }

// ── Image avec fallback jpg → png → placeholder ──────────────────────────────
function ProductImage({ slug, nom, active }: { slug: string; nom: string; active: boolean }) {
  const [ext, setExt] = useState<'png' | 'jpg' | 'none'>('png');

  return (
    <div style={{
      position: 'absolute', inset: 0,
      opacity: active ? 1 : 0,
      transition: 'opacity 0.7s ease',
      background: 'linear-gradient(145deg, #3B1F0A 0%, #7A3A14 100%)',
    }}>
      {ext !== 'none' ? (
        // eslint-disable-next-line @next/next/no-img-element
        <img
          src={"/stock-mai-2026/" + slug + "." + ext}
          alt={nom}
          onError={() => {
            if (ext === 'png') setExt('jpg');
            else setExt('none');
          }}
          style={{ width: '100%', height: '100%', objectFit: 'cover', display: 'block' }}
        />
      ) : (
        <div style={{
          width: '100%', height: '100%',
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontFamily: "'Bree Serif', Georgia, serif",
          fontSize: 'clamp(1.2rem, 3vw, 2rem)', color: 'rgba(255,217,168,0.4)',
          letterSpacing: '0.08em',
        }}>
          {nom}
        </div>
      )}
    </div>
  );
}

// ── Carousel (panneau gauche) ─────────────────────────────────────────────────
function CarouselPanel({ current, onNav }: { current: number; onNav: (i: number) => void }) {
  const p = PRODUITS[current];

  return (
    <div style={{ position: 'relative', width: '100%', height: '100%', background: '#2A1A0A', overflow: 'hidden' }}>

      {/* Toutes les images (fade) */}
      {PRODUITS.map((prod, i) => (
        <ProductImage key={prod.slug} slug={prod.slug} nom={prod.nom} active={i === current} />
      ))}

      {/* Gradients */}
      <div style={{
        position: 'absolute', inset: 0, zIndex: 1,
        background: 'linear-gradient(to top, rgba(20,8,2,0.93) 0%, rgba(20,8,2,0.3) 45%, transparent 65%)',
      }} />
      <div style={{
        position: 'absolute', inset: 0, zIndex: 1,
        background: 'linear-gradient(to bottom, rgba(20,8,2,0.45) 0%, transparent 22%)',
      }} />

      {/* Badge −30% */}
      <div style={{
        position: 'absolute', top: 18, left: 18, zIndex: 3,
        background: 'linear-gradient(135deg, #C0561E, #9A4A1A)',
        color: '#FAF6E8',
        fontFamily: "'Bree Serif', Georgia, serif",
        fontSize: 'clamp(14px, 2vw, 19px)', fontWeight: 700,
        padding: '6px 14px', borderRadius: 6,
        boxShadow: '0 3px 14px rgba(0,0,0,0.45)',
        animation: 'flashBadge 1.8s ease-in-out infinite',
      }}>
        &minus;30&nbsp;%
      </div>

      {/* Info produit */}
      <div style={{
        position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 2,
        padding: 'clamp(1rem, 3vw, 2rem) clamp(1rem, 3vw, 1.75rem) clamp(1.25rem, 3vw, 1.75rem)',
      }}>
        <p style={{
          fontFamily: "'Cabin', system-ui, sans-serif",
          fontSize: 11, color: 'rgba(255,217,168,0.8)',
          fontWeight: 700, letterSpacing: '0.12em',
          textTransform: 'uppercase', marginBottom: '0.2rem',
        }}>
          {p.categorie}&nbsp;&middot;&nbsp;En stock
        </p>
        <h2 style={{
          fontFamily: "'Bree Serif', Georgia, serif",
          fontSize: 'clamp(1.6rem, 3.5vw, 2.4rem)',
          color: '#FAF6E8', fontWeight: 'normal',
          marginBottom: '0.4rem', lineHeight: 1.1,
        }}>
          {p.nom}
        </h2>
        <div style={{ display: 'flex', alignItems: 'baseline', gap: '0.6rem', marginBottom: '1.25rem', flexWrap: 'wrap' }}>
          <span style={{
            fontFamily: "'Bree Serif', Georgia, serif",
            fontSize: 'clamp(1.4rem, 2.8vw, 2rem)',
            color: '#FFD9A8', fontWeight: 700,
            animation: 'flashPrice 1.8s ease-in-out infinite',
          }}>
            {eur(prixRemise(p.prix))}
          </span>
          <span style={{
            fontFamily: "'Cabin', system-ui, sans-serif",
            fontSize: 15, color: 'rgba(255,255,255,0.4)',
            textDecoration: 'line-through',
          }}>
            {eur(p.prix)}
          </span>
        </div>

        {/* Dots */}
        <div style={{ display: 'flex', gap: '0.45rem', alignItems: 'center' }}>
          {PRODUITS.map((_, i) => (
            <button
              key={i}
              type="button"
              onClick={() => onNav(i)}
              aria-label={"Produit " + (i + 1)}
              style={{
                border: 'none', cursor: 'pointer', padding: 0,
                borderRadius: '999px',
                width: i === current ? 26 : 7,
                height: 7,
                background: i === current ? '#FFD9A8' : 'rgba(255,255,255,0.3)',
                transition: 'all 0.35s',
              }}
            />
          ))}
          <span style={{
            marginLeft: '0.75rem',
            fontFamily: 'monospace', fontSize: 11,
            color: 'rgba(255,255,255,0.3)',
          }}>
            {String(current + 1).padStart(2, '0')}&nbsp;/&nbsp;{String(PRODUITS.length).padStart(2, '0')}
          </span>
        </div>
      </div>

      {/* Flèches */}
      {(['prev', 'next'] as const).map(dir => (
        <button
          key={dir}
          type="button"
          onClick={() => onNav(dir === 'prev'
            ? (current - 1 + PRODUITS.length) % PRODUITS.length
            : (current + 1) % PRODUITS.length
          )}
          aria-label={dir === 'prev' ? 'Précédent' : 'Suivant'}
          style={{
            position: 'absolute',
            [dir === 'prev' ? 'left' : 'right']: 12,
            top: '44%', transform: 'translateY(-50%)',
            zIndex: 3, width: 38, height: 38, borderRadius: '50%',
            background: 'rgba(255,255,255,0.1)',
            border: '1px solid rgba(255,255,255,0.18)',
            color: 'white', cursor: 'pointer',
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            backdropFilter: 'blur(4px)',
            transition: 'background 0.2s',
          }}
        >
          <svg width="16" height="16" fill="none" stroke="currentColor" strokeWidth={2.2} viewBox="0 0 24 24">
            {dir === 'prev'
              ? <path strokeLinecap="round" strokeLinejoin="round" d="M15 19l-7-7 7-7" />
              : <path strokeLinecap="round" strokeLinejoin="round" d="M9 5l7 7-7 7" />
            }
          </svg>
        </button>
      ))}
    </div>
  );
}

// ── Formulaire (panneau droit) ────────────────────────────────────────────────
interface FormPanelProps {
  produit: Produit;
  form: { prenom: string; nom: string; email: string; telephone: string; showroom: string; rgpd: boolean };
  setForm: React.Dispatch<React.SetStateAction<FormPanelProps['form']>>;
  status: 'idle' | 'loading' | 'success' | 'error';
  errorMsg: string;
  submittedProduit: Produit | null;
  onSubmit: (e: React.FormEvent) => void;
}

function FormPanel({ produit, form, setForm, status, errorMsg, submittedProduit, onSubmit }: FormPanelProps) {
  if (status === 'success' && submittedProduit) {
    return (
      <div style={{
        display: 'flex', flexDirection: 'column',
        alignItems: 'center', justifyContent: 'center',
        minHeight: '100%', padding: '3rem 2rem', textAlign: 'center',
      }}>
        <div style={{
          width: 72, height: 72, borderRadius: '50%',
          background: '#EDF7E8', display: 'flex',
          alignItems: 'center', justifyContent: 'center',
          fontSize: 36, color: '#5A7A3B', marginBottom: '1.5rem',
        }}>
          &#10003;
        </div>
        <h2 style={{
          fontFamily: "'Bree Serif', Georgia, serif",
          fontSize: 26, color: '#3D5A2A',
          marginBottom: '0.75rem', fontWeight: 'normal',
        }}>
          Demande envoy&eacute;e&nbsp;!
        </h2>
        <p style={{ color: '#555', lineHeight: 1.75, fontSize: 15, maxWidth: 320 }}>
          Notre &eacute;quipe vous contacte sous{' '}
          <strong>24h ouvr&eacute;es</strong>.<br />
          Meuble&nbsp;:{' '}
          <strong>{submittedProduit.nom}</strong>{' '}
          &mdash;&nbsp;{eur(prixRemise(submittedProduit.prix))}
        </p>
        <p style={{ marginTop: '2rem', fontSize: 13, color: '#AAA' }}>
          Naviguez dans le carousel pour voir les autres meubles
        </p>
      </div>
    );
  }

  return (
    <div style={{ padding: 'clamp(1.5rem, 4vw, 2.5rem)', boxSizing: 'border-box' }}>

      {/* En-tête */}
      <div style={{ marginBottom: '1.6rem' }}>
        <h2 style={{
          fontFamily: "'Bree Serif', Georgia, serif",
          fontSize: 'clamp(1.3rem, 2.5vw, 1.7rem)',
          color: '#1A1A1A', fontWeight: 'normal', marginBottom: '0.25rem',
        }}>
          Recevoir un rappel
        </h2>
        <p style={{
          fontFamily: "'Cabin', system-ui, sans-serif",
          fontSize: 13, color: '#999',
        }}>
          Offre valable jusqu&apos;au 31 mai &middot; Rappel sous 24h ouvr&eacute;es
        </p>
      </div>

      {/* Produit sélectionné */}
      <div style={{
        background: '#FFF8F0',
        border: '1.5px solid #E8B88A',
        borderRadius: 8, padding: '0.85rem 1rem',
        marginBottom: '1.5rem',
        display: 'flex', alignItems: 'center', gap: '0.75rem',
      }}>
        <div style={{
          width: 9, height: 9, borderRadius: '50%',
          background: '#C0561E', flexShrink: 0,
          animation: 'flashBadge 1.8s ease-in-out infinite',
        }} />
        <div>
          <p style={{
            fontFamily: "'Cabin', system-ui, sans-serif",
            fontSize: 10, color: '#9A4A1A', fontWeight: 700,
            letterSpacing: '0.1em', textTransform: 'uppercase', marginBottom: '0.1rem',
          }}>
            S&eacute;lectionn&eacute;
          </p>
          <p style={{
            fontFamily: "'Bree Serif', Georgia, serif",
            fontSize: 16, color: '#1A1A1A',
            display: 'flex', alignItems: 'baseline', gap: '0.5rem', flexWrap: 'wrap',
          }}>
            {produit.nom}
            <span style={{ color: '#5A7A3B', fontWeight: 700 }}>
              {eur(prixRemise(produit.prix))}
            </span>
            <span style={{
              fontFamily: "'Cabin', system-ui, sans-serif",
              fontSize: 13, color: '#BBB', textDecoration: 'line-through',
            }}>
              {eur(produit.prix)}
            </span>
          </p>
        </div>
      </div>

      {/* Formulaire */}
      <form onSubmit={onSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '0.9rem' }}>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.75rem' }}>
          <div>
            <label style={labelStyle}>Pr&eacute;nom *</label>
            <input type="text" required className="sm26-input" placeholder="Jean"
              value={form.prenom} onChange={e => setForm(f => ({ ...f, prenom: e.target.value }))} />
          </div>
          <div>
            <label style={labelStyle}>Nom</label>
            <input type="text" className="sm26-input" placeholder="Dupont"
              value={form.nom} onChange={e => setForm(f => ({ ...f, nom: e.target.value }))} />
          </div>
        </div>

        <div>
          <label style={labelStyle}>Email *</label>
          <input type="email" required className="sm26-input" placeholder="jean.dupont@email.com"
            value={form.email} onChange={e => setForm(f => ({ ...f, email: e.target.value }))} />
        </div>

        <div>
          <label style={labelStyle}>T&eacute;l&eacute;phone</label>
          <input type="tel" className="sm26-input" placeholder="0692 XX XX XX"
            value={form.telephone} onChange={e => setForm(f => ({ ...f, telephone: e.target.value }))} />
        </div>

        <div>
          <label style={labelStyle}>Showroom *</label>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.6rem', marginTop: '0.4rem' }}>
            {([
              { code: 'SAINT_PIERRE', label: 'Saint-Pierre (Sud)' },
              { code: 'SAINT_DENIS',  label: 'Saint-Denis (Nord)' },
            ] as const).map(({ code, label }) => (
              <label key={code} style={{
                display: 'flex', alignItems: 'center', gap: '0.5rem',
                padding: '0.6rem 0.75rem',
                border: form.showroom === code ? '2px solid #9A4A1A' : '1.5px solid #D4B896',
                borderRadius: 6, cursor: 'pointer',
                background: form.showroom === code ? '#FFF3E0' : '#FEFCF4',
                fontFamily: "'Cabin', system-ui, sans-serif", fontSize: 13,
                fontWeight: form.showroom === code ? 600 : 400,
                transition: 'all 0.15s',
              }}>
                <input
                  type="radio" name="showroom" value={code} required
                  checked={form.showroom === code}
                  onChange={e => setForm(f => ({ ...f, showroom: e.target.value }))}
                  style={{ accentColor: '#9A4A1A' }}
                />
                {label}
              </label>
            ))}
          </div>
        </div>

        <label style={{ display: 'flex', alignItems: 'flex-start', gap: '0.6rem', cursor: 'pointer' }}>
          <input type="checkbox" required checked={form.rgpd}
            onChange={e => setForm(f => ({ ...f, rgpd: e.target.checked }))}
            style={{ marginTop: 3, accentColor: '#9A4A1A', flexShrink: 0 }} />
          <span style={{
            fontFamily: "'Cabin', system-ui, sans-serif",
            fontSize: 11, color: '#777', lineHeight: 1.55,
          }}>
            J&apos;accepte que DIMEXOI utilise mes coordonn&eacute;es pour me recontacter au sujet de ma demande.
          </span>
        </label>

        {status === 'error' && errorMsg && (
          <p style={{
            color: '#C0561E', fontSize: 13,
            background: '#FFF3E0', padding: '0.65rem', borderRadius: 6,
            border: '1px solid #F59E0B',
            fontFamily: "'Cabin', system-ui, sans-serif",
          }}>
            &#9888; {errorMsg}
          </p>
        )}

        <button
          type="submit"
          disabled={status === 'loading'}
          style={{
            padding: '0.9rem 1.5rem',
            background: 'linear-gradient(135deg, #9A4A1A 0%, #C0561E 100%)',
            color: '#FAF6E8', border: 'none', borderRadius: 8,
            fontFamily: "'Bree Serif', Georgia, serif",
            fontSize: 'clamp(15px, 2vw, 17px)',
            cursor: status === 'loading' ? 'wait' : 'pointer',
            boxShadow: '0 4px 18px rgba(154,74,26,0.4)',
            transition: 'opacity 0.2s',
            opacity: status === 'loading' ? 0.7 : 1,
            marginTop: '0.15rem',
          }}
        >
          {status === 'loading'
            ? 'Envoi en cours...'
            : "Recevoir un rappel →"}
        </button>

        <p style={{
          textAlign: 'center', fontSize: 11, color: '#CCC',
          fontFamily: "'Cabin', system-ui, sans-serif",
        }}>
          Rappel sous 24h &bull; Offre jusqu&apos;au 31 mai 2026
        </p>
      </form>
    </div>
  );
}

const labelStyle: React.CSSProperties = {
  display: 'block',
  fontFamily: "'Cabin', system-ui, sans-serif",
  fontSize: 12, fontWeight: 600, color: '#444',
  marginBottom: '0.3rem',
};

// ── Page principale ───────────────────────────────────────────────────────────
export default function StockMai2026Page() {
  const [current, setCurrent] = useState(0);
  const pausedRef = useRef(false);
  const timerRef = useRef<ReturnType<typeof setInterval> | null>(null);

  const [form, setForm] = useState({
    prenom: '', nom: '', email: '', telephone: '', showroom: '', rgpd: false,
  });
  const [status, setStatus] = useState<'idle' | 'loading' | 'success' | 'error'>('idle');
  const [errorMsg, setErrorMsg] = useState('');
  const [submittedProduit, setSubmittedProduit] = useState<Produit | null>(null);

  const startTimer = useCallback(() => {
    if (timerRef.current) clearInterval(timerRef.current);
    timerRef.current = setInterval(() => {
      if (!pausedRef.current) {
        setCurrent(c => (c + 1) % PRODUITS.length);
      }
    }, INTERVAL);
  }, []);

  useEffect(() => {
    startTimer();
    return () => { if (timerRef.current) clearInterval(timerRef.current); };
  }, [startTimer]);

  function handleNav(i: number) {
    setCurrent(i);
    startTimer();
    // Permet de soumettre pour un autre produit après succès
    if (status === 'success') setStatus('idle');
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const produit = PRODUITS[current];
    setStatus('loading');
    setErrorMsg('');
    try {
      const res = await fetch('/api/leads/stock-mai-2026', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          prenom: form.prenom, nom: form.nom,
          email: form.email, telephone: form.telephone,
          showroom: form.showroom, rgpd: form.rgpd,
          meuble: produit.nom,
          meubleSlug: produit.slug,
        }),
      });
      if (!res.ok) throw new Error('Erreur serveur');
      setStatus('success');
      setSubmittedProduit(produit);
    } catch {
      setStatus('error');
      setErrorMsg("Une erreur s'est produite. Veuillez réessayer.");
    }
  }

  const produit = PRODUITS[current];

  return (
    <div style={{
      fontFamily: "'Cabin', system-ui, sans-serif",
      color: '#1A1A1A',
      display: 'flex',
      flexDirection: 'column',
      height: '100vh',
      background: '#1A1A1A',
      overflow: 'hidden',
    }}>
      <style>{`
        @import url('https://fonts.googleapis.com/css2?family=Cabin:wght@400;500;600;700&family=Bree+Serif&display=swap');

        @keyframes flashBadge {
          0%, 100% { opacity: 1; transform: scale(1); }
          50%       { opacity: 0.88; transform: scale(1.1); }
        }
        @keyframes flashPrice {
          0%, 100% { color: #FFD9A8; }
          50%       { color: #FFFFFF; }
        }

        .sm26-input {
          width: 100%;
          padding: 0.65rem 0.9rem;
          border: 1.5px solid #D4B896;
          border-radius: 6px;
          font-size: 14px;
          font-family: 'Cabin', system-ui, sans-serif;
          background: #FEFCF4;
          color: #1A1A1A;
          transition: border-color 0.2s;
          box-sizing: border-box;
        }
        .sm26-input:focus {
          outline: none;
          border-color: #9A4A1A;
          box-shadow: 0 0 0 3px rgba(154,74,26,0.1);
        }

        /* Layout split desktop */
        .sm26-body {
          display: flex;
          flex: 1;
          overflow: hidden;
          min-height: 0;
        }
        .sm26-left {
          flex: 0 0 55%;
          position: relative;
        }
        .sm26-right {
          flex: 1;
          background: #FAF6E8;
          overflow-y: auto;
          display: flex;
          flex-direction: column;
          justify-content: center;
        }

        /* Mobile : carousel haut + formulaire bas, scroll global */
        @media (max-width: 720px) {
          html, body { overflow: auto !important; }
          .sm26-body {
            flex-direction: column;
            overflow: visible;
            height: auto;
          }
          .sm26-left {
            flex: none;
            height: 58vmax;
            min-height: 300px;
            max-height: 480px;
          }
          .sm26-right {
            flex: none;
            overflow-y: visible;
            height: auto;
            justify-content: flex-start;
          }
        }
      `}</style>

      {/* ── Header ──────────────────────────────────────────────────────── */}
      <div style={{
        background: '#1A1A1A', padding: '0.8rem 1.5rem',
        display: 'flex', alignItems: 'center', justifyContent: 'space-between',
        flexShrink: 0, borderBottom: '1px solid rgba(255,255,255,0.08)',
      }}>
        <Link href="/" style={{
          color: '#FAF6E8', textDecoration: 'none',
          fontFamily: "'Bree Serif', Georgia, serif",
          fontSize: 20, letterSpacing: '0.12em',
        }}>
          DIMEXOI
        </Link>
        <span style={{
          fontFamily: "'Cabin', system-ui, sans-serif",
          fontSize: 13, color: '#FFD9A8', fontWeight: 500,
        }}>
          &#9889;&nbsp;Teck Days &middot; &minus;30&nbsp;% jusqu&apos;au 31 mai
        </span>
      </div>

      {/* ── Corps ───────────────────────────────────────────────────────── */}
      <div
        className="sm26-body"
        onMouseEnter={() => { pausedRef.current = true; }}
        onMouseLeave={() => { pausedRef.current = false; }}
      >
        {/* Gauche : carousel */}
        <div className="sm26-left">
          <CarouselPanel current={current} onNav={handleNav} />
        </div>

        {/* Droite : formulaire */}
        <div className="sm26-right">
          <FormPanel
            produit={produit}
            form={form}
            setForm={setForm}
            status={status}
            errorMsg={errorMsg}
            submittedProduit={submittedProduit}
            onSubmit={handleSubmit}
          />
        </div>
      </div>
    </div>
  );
}
