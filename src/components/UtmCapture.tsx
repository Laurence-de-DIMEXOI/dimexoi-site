'use client';

import { useEffect } from 'react';
import { captureUtm } from '@/src/lib/utm';

/**
 * Client component that captures UTM parameters on page load
 * Placed in layout to run on every page
 */
export default function UtmCapture() {
  useEffect(() => {
    captureUtm();
  }, []);

  return null;
}
