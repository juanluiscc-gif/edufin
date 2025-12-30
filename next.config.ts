import type { NextConfig } from "next";
import createNextIntlPlugin from 'next-intl/plugin';

const withNextIntl = createNextIntlPlugin('./src/i18n.ts');

const nextConfig: NextConfig = {
  webpack: (config, { isServer }) => {
    if (!isServer) {
      // Exclude Prisma from client-side bundle
      config.resolve.alias = {
        ...config.resolve.alias,
        '@prisma/client': false,
      };
    }
    return config;
  },
  serverExternalPackages: ['@prisma/client'],
};

export default withNextIntl(nextConfig);
