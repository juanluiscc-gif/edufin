// Prisma configuration file
// Dotenv import removed - Prisma automatically reads .env files
import { defineConfig } from "prisma";

export default defineConfig({
  schema: "prisma/schema.prisma",
  seed: "tsx prisma/seed.ts",
});
