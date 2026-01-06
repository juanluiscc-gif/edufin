# EduFin

EduFin is a comprehensive financial education application designed for both children and adults, featuring interactive games, structured lessons, and multi-language support.

**Live Deployment:** https://edufin-02.vercel.app
**Repository:** https://github.com/juanluiscc-gif/edufin

---

## Features

- **Multi-language Support:** 9 languages (English, Spanish, German, French, Japanese, Chinese, Hindi, Italian, Portuguese)
- **18 Interactive Lessons:** Across 8 categories covering money basics, earning, spending, saving, budgeting, investing, business, and credit
- **Educational Games:**
  - Quiz: Question-and-answer format with time bonuses
  - Scenario: Chat-based financial simulations with budget consequences
- **OAuth Authentication:** Google sign-in integration
- **Leaderboard System:** Track progress and compete with other users
- **Age-Adaptive Content:** Separate content paths for kids and adults

---

## Tech Stack

- **Framework:** Next.js 16.1.1 with App Router
- **Database:** Prisma ORM with Neon PostgreSQL
- **Internationalization:** next-intl for locale-based routing
- **Authentication:** OAuth (Google)
- **UI:** React with TypeScript, Tailwind CSS
- **Deployment:** Vercel

---

## Development Setup

### Prerequisites

- Node.js 18+ and npm
- Neon PostgreSQL database account
- Google OAuth credentials

### Installation

```bash
# Clone repository
git clone https://github.com/juanluiscc-gif/edufin.git
cd edufin

# Install dependencies
npm install

# Set up environment variables
# Create .env.local file with required variables (see below)

# Run database migrations
npx prisma generate
npx prisma db push

# Seed database (optional)
# Execute neon_seed_final.sql in Neon SQL Editor

# Start development server
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

---

## Environment Variables

Create a `.env.local` file in the project root with the following variables:

```env
# Database
DATABASE_URL="postgresql://user:password@host/database?sslmode=require"
POSTGRES_URL="postgresql://user:password@host/database?sslmode=require"

# OAuth - Google
GOOGLE_CLIENT_ID="your_client_id.apps.googleusercontent.com"
GOOGLE_CLIENT_SECRET="your_client_secret"

# Application URL
NEXT_PUBLIC_APP_URL="http://localhost:3000"

# Security
JWT_SECRET="generate_random_secret_here"
```

### How to Obtain Credentials

**Database URLs:**
1. Create a database at [Neon Console](https://console.neon.tech/)
2. Copy the connection string from your database dashboard
3. Use the same URL for both `DATABASE_URL` and `POSTGRES_URL`
4. Ensure the URL includes `?sslmode=require`

**Google OAuth Credentials:**
1. Go to [Google Cloud Console](https://console.cloud.google.com/apis/credentials)
2. Create a new project or select an existing one
3. Create OAuth 2.0 Client ID (Web application type)
4. Add authorized redirect URI: `http://localhost:3000/api/auth/callback`
5. Copy the Client ID and Client Secret

**JWT Secret:**
Generate a secure random secret:
```bash
openssl rand -base64 32
```

---

## Deployment to Vercel

### Steps

1. **Push code to GitHub repository**
2. **Import project in Vercel:**
   - Go to [Vercel Dashboard](https://vercel.com/dashboard)
   - Click "New Project"
   - Import your GitHub repository
3. **Configure environment variables:**
   - In Vercel project settings, go to "Environment Variables"
   - Add all variables from `.env.local`
   - Update `NEXT_PUBLIC_APP_URL` to your Vercel domain (e.g., `https://your-app.vercel.app`)
4. **Update Google OAuth redirect URI:**
   - In Google Cloud Console, add your Vercel domain to authorized redirect URIs
   - Format: `https://your-app.vercel.app/api/auth/callback`
5. **Deploy**

### Important Notes

- Environment variable changes require redeployment to take effect
- The Google OAuth redirect URI must match `NEXT_PUBLIC_APP_URL` exactly
- Database URL should include SSL mode for production

---

## Available Scripts

```bash
npm run dev           # Start development server
npm run build         # Build for production
npm run start         # Start production server
npm run lint          # Run ESLint

# Translation scripts
npm run translate:es  # Translate to Spanish
npm run translate:fr  # Translate to French
npm run translate:de  # Translate to German
npm run translate:ja  # Translate to Japanese
npm run translate:zh  # Translate to Chinese
npm run translate:hi  # Translate to Hindi
npm run translate:it  # Translate to Italian
npm run translate:pt  # Translate to Portuguese
```

---

## Project Structure

```
edufin/
├── src/
│   ├── app/              # Next.js App Router pages and API routes
│   │   ├── [locale]/     # Locale-based routing
│   │   └── api/          # API endpoints
│   ├── components/       # React components
│   │   ├── games/        # Game components (Quiz, Scenario)
│   │   ├── lessons/      # Lesson display components
│   │   └── ui/           # Reusable UI components
│   ├── lib/              # Core utilities
│   │   ├── auth.ts       # Authentication logic
│   │   ├── prisma.ts     # Database client
│   │   └── scoring.ts    # Game scoring calculations
│   ├── locales/          # i18n translations (9 languages)
│   └── types/            # TypeScript type definitions
├── prisma/
│   ├── schema.prisma     # Database schema
│   └── seed files        # Database seeding scripts
├── scripts/              # Translation automation
├── docs/                 # Documentation
├── public/               # Static assets
└── neon_seed_final.sql   # Authoritative database seed file
```

---

## Database Schema

The application uses Prisma ORM with the following main models:

- **User:** OAuth authentication, age category, language preferences
- **Lesson:** 18 lessons across 8 categories
- **UserLessonProgress:** Track lesson completion
- **Game:** Quiz and Scenario games
- **GameScore:** Individual game scores
- **Leaderboard:** Global rankings
- **Expense/Budget:** Adult financial tracking features
- **ExternalIntegration:** Future integration with financial platforms

To seed the database with initial data, execute `neon_seed_final.sql` in your Neon SQL Editor.

---

## Translation System

EduFin uses `next-intl` for internationalization with complete translations for 9 languages.

**Translation files are located in:**
- `src/locales/[language]/`
  - `common.json` - UI text and navigation
  - `games.json` - Game content
  - `learning.json` - Lesson content
  - `expenses.json` - Expense tracking features
  - `integrations.json` - External integration features

To add or update translations, modify the English files in `src/locales/en/` and run the appropriate translation script.

---

## Contact

**Juan Luis Cortés Cervantes**
- Email: juanluiscortescervantes@gmail.com
- LinkedIn: [linkedin.com/in/juan-luis-cortés-cervantes](https://www.linkedin.com/in/juan-luis-cortés-cervantes)
- Telegram: [@JuanLCC](https://t.me/JuanLCC)

---

## License

This project is privately developed. For collaboration or usage inquiries, please contact the author.
