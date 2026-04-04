import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

export function middleware(request: NextRequest) {
  const response = NextResponse.next();
  response.headers.set('X-Content-Type-Options', 'nosniff');
  response.headers.set('X-Frame-Options', 'DENY');
  response.headers.set('X-XSS-Protection', '1; mode=block');
  response.headers.set('Referrer-Policy', 'strict-origin-when-cross-origin');
  response.headers.set('Permissions-Policy', 'camera=(), microphone=(), geolocation=()');
  response.headers.set('Strict-Transport-Security', 'max-age=31536000; includeSubDomains; preload');
  response.headers.set(
    'Content-Security-Policy',
    "default-src 'self'; " +
    "script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.googletagmanager.com https://connect.facebook.net https://assets.calendly.com https://www.google.com https://googleads.g.doubleclick.net; " +
    "style-src 'self' 'unsafe-inline' https://fonts.googleapis.com https://assets.calendly.com; " +
    "img-src 'self' data: blob: https: ; " +
    "font-src 'self' https://fonts.gstatic.com data:; " +
    "connect-src 'self' https://www.google-analytics.com https://region1.google-analytics.com https://region1.analytics.google.com https://www.facebook.com https://kokpit-kappa.vercel.app https://calendly.com https://www.google.com https://googleads.g.doubleclick.net https://google.com https://googleleads.g.doubleclick.net; " +
    "frame-src https://www.google.com https://calendly.com https://td.doubleclick.net;"
  );
  return response;
}

export const config = {
  matcher: ['/((?!_next/static|_next/image|favicon.ico).*)'],
};
