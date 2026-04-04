'use client';

import Image from 'next/image';

interface GuideMockupProps {
  className?: string;
}

export default function GuideMockup({ className = '' }: GuideMockupProps) {
  return (
    <div className={`relative flex items-center justify-center ${className}`}>
      {/* Glow ambiance derrière */}
      <div
        className="absolute inset-0 rounded-3xl blur-3xl opacity-30"
        style={{ background: 'radial-gradient(ellipse at center, #C9A96E 0%, #0E6973 60%, transparent 100%)' }}
      />

      {/* Ombre portée du document */}
      <div
        className="absolute bottom-0 left-1/2 -translate-x-1/2 w-[55%] h-8 blur-2xl opacity-40 rounded-full"
        style={{ background: '#0E6973', transform: 'translateX(-50%) translateY(20px) scaleX(0.8)' }}
      />

      {/* Document principal en perspective 3D */}
      <div
        className="relative z-10"
        style={{
          perspective: '1000px',
        }}
      >
        <div
          className="relative"
          style={{
            transform: 'rotateY(-18deg) rotateX(4deg)',
            transformStyle: 'preserve-3d',
            borderRadius: '8px',
            boxShadow: '20px 30px 60px rgba(0,0,0,0.35), 4px 8px 20px rgba(0,0,0,0.2)',
          }}
        >
          {/* Spine du livre (côté gauche) */}
          <div
            className="absolute top-0 bottom-0 left-0 rounded-l-sm"
            style={{
              width: '12px',
              background: 'linear-gradient(to right, #8B6914, #C9A96E)',
              transform: 'translateX(-12px) rotateY(90deg)',
              transformOrigin: 'right center',
            }}
          />

          {/* Cover principale */}
          <div
            className="relative overflow-hidden"
            style={{
              width: 'min(280px, 65vw)',
              aspectRatio: '595/842',
              borderRadius: '4px 8px 8px 4px',
            }}
          >
            <Image
              src="/images/blog/guide-sdb-cover.png"
              alt="Guide - Aménager sa salle de bain en teck"
              fill
              className="object-cover"
              priority
            />

            {/* Reflet lumineux sur la cover */}
            <div
              className="absolute inset-0 pointer-events-none"
              style={{
                background: 'linear-gradient(135deg, rgba(255,255,255,0.15) 0%, transparent 50%, rgba(0,0,0,0.05) 100%)',
              }}
            />
          </div>

          {/* Pages effect (épaisseur) */}
          <div
            className="absolute top-1 bottom-1 right-0"
            style={{
              width: '8px',
              background: 'repeating-linear-gradient(to bottom, #e8e0d0 0px, #e8e0d0 2px, #f5f0e8 2px, #f5f0e8 4px)',
              borderRadius: '0 2px 2px 0',
              transform: 'translateX(8px)',
              transformOrigin: 'left center',
              opacity: 0.8,
            }}
          />
        </div>
      </div>

      {/* Badge "GUIDE OFFERT" */}
      <div
        className="absolute top-4 right-4 z-20 rounded-full text-white text-xs font-bold px-3 py-1.5 shadow-lg"
        style={{ background: '#0E6973', letterSpacing: '0.05em' }}
      >
        GUIDE OFFERT
      </div>

      {/* Badge nombre de pages */}
      <div
        className="absolute bottom-6 right-2 z-20 bg-white rounded-lg shadow-lg px-3 py-2 text-center"
        style={{ border: '1px solid rgba(201,169,110,0.3)' }}
      >
        <div className="text-2xl font-bold" style={{ color: '#0E6973', lineHeight: 1 }}>12</div>
        <div className="text-xs text-gray-500 leading-tight mt-0.5">conseils<br />experts</div>
      </div>
    </div>
  );
}
