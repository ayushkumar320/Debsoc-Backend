# Debsoc Backend

Backend API for the Debating Society platform.

## 🚀 Quick Start

### Prerequisites

- Node.js 18+
- PostgreSQL database
- npm or yarn

### Installation

```bash
# Install dependencies
npm install

# Copy environment variables
cp .env.example .env
# Then edit .env with your actual database URL and secrets

# Generate Prisma Client
npm run prisma:generate

# Run migrations (when you have models defined)
npm run prisma:migrate
```

### Development

```bash
# Start development server with hot reload
npm run dev
```

Server will start on `http://localhost:3000` (or your configured PORT)

### Production

```bash
# Build the project
npm run build

# Start production server
npm start
```

## 📝 Available Scripts

| Script                    | Description                                  |
| ------------------------- | -------------------------------------------- |
| `npm run dev`             | Start development server with hot reload     |
| `npm run build`           | Compile TypeScript to JavaScript             |
| `npm start`               | Run production server (requires build first) |
| `npm run format`          | Format code with Prettier                    |
| `npm run format:check`    | Check code formatting                        |
| `npm run prisma:generate` | Generate Prisma Client                       |
| `npm run prisma:migrate`  | Run database migrations                      |
| `npm run prisma:studio`   | Open Prisma Studio GUI                       |
| `npm run prisma:push`     | Push schema changes to database              |

## 🛠️ Tech Stack

- **Runtime**: Node.js
- **Framework**: Express.js
- **Database**: PostgreSQL
- **ORM**: Prisma 7
- **Language**: TypeScript
- **Auth**: JWT + bcrypt

## 📁 Project Structure

```
src/
├── index.ts           # Application entry point
├── lib/
│   └── prisma.ts      # Prisma client singleton
├── prisma/
│   └── schema.prisma  # Database schema
└── prisma.config.ts   # Prisma configuration
```

## 🔧 Environment Variables

See `.env.example` for required environment variables:

- `DATABASE_URL` - PostgreSQL connection string
- `PORT` - Server port (default: 3000)
- `NODE_ENV` - Environment (development/production)
- `JWT_SECRET` - Secret key for JWT tokens
- `JWT_EXPIRES_IN` - JWT expiration time

## 📦 Next Steps

1. Define your database models in `src/prisma/schema.prisma`
2. Create API routes in `src/routes/`
3. Add controllers in `src/controllers/`
4. Implement middleware in `src/middleware/`

## License

ISC
