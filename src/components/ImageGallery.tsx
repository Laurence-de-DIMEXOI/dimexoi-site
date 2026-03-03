'use client';

import Image from 'next/image';
import { useState } from 'react';

interface ImageGalleryProps {
  images: string[];
  alt: string;
}

export default function ImageGallery({ images, alt }: ImageGalleryProps) {
  const [selectedIndex, setSelectedIndex] = useState(0);

  if (!images || images.length === 0) {
    return (
      <div className="bg-warm-beige rounded-lg flex items-center justify-center" style={{ aspectRatio: '1' }}>
        <span className="text-gray-400">Pas d'image disponible</span>
      </div>
    );
  }

  return (
    <div>
      {/* Main Image */}
      <div className="gallery-main bg-warm-beige relative">
        <Image
          src={images[selectedIndex]}
          alt={alt}
          fill
          className="object-cover"
          sizes="(max-width: 768px) 100vw, 500px"
          unoptimized
          priority
        />
      </div>

      {/* Thumbnails */}
      {images.length > 1 && (
        <div className="gallery-thumbnails">
          {images.map((image, index) => (
            <button
              key={index}
              onClick={() => setSelectedIndex(index)}
              className={`gallery-thumbnail relative ${selectedIndex === index ? 'active' : ''}`}
            >
              <Image
                src={image}
                alt={`${alt} ${index + 1}`}
                fill
                className="object-cover"
                sizes="100px"
                unoptimized
              />
            </button>
          ))}
        </div>
      )}
    </div>
  );
}
