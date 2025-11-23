import dotenv from 'dotenv';
import { defineConfig, env } from 'prisma/config';

// Load environment variables from .env file
dotenv.config();

export default defineConfig({
  schema: 'src/prisma/schema.prisma',
  migrations: {
    path: 'src/prisma/migrations',
  },
  datasource: {
    url: env('DATABASE_URL'),
  },
});
