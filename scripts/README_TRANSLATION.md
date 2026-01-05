# 🌍 Automatic Content Translation System

This script automatically translates all educational content (lessons and games) from English to Spanish using Claude AI.

## 📋 What It Does

The script translates:

### **Lessons (18 lecciones):**
- ✅ Section titles
- ✅ Section content (full markdown with formatting)
- ✅ Quiz questions
- ✅ Quiz answer options
- ✅ Quiz explanations

### **Games (Juegos):**
- ✅ Game instructions
- ✅ Question text
- ✅ Answer options
- ✅ Answer explanations

## 🚀 How to Use

### Step 1: Get an Anthropic API Key

1. Go to [https://console.anthropic.com/](https://console.anthropic.com/)
2. Create an account or log in
3. Generate an API key
4. Copy the key (starts with `sk-ant-...`)

### Step 2: Install Dependencies

```bash
cd /workspace/cmjxrs873000ziloodjgwbxk0/edufin
npm install
```

This will install the `@anthropic-ai/sdk` package.

### Step 3: Set Environment Variable

**Option A: Export in terminal (temporary)**
```bash
export ANTHROPIC_API_KEY="sk-ant-api03-your-actual-key-here"
```

**Option B: Create .env.local file (permanent)**
```bash
echo "ANTHROPIC_API_KEY=sk-ant-api03-your-actual-key-here" > .env.local
```

### Step 4: Run the Translation Script

```bash
npm run translate
```

### Step 5: Review Output

The script generates two files:

1. **`prisma/migration_spanish_translation.sql`**
   - SQL script with all translations
   - Ready to execute in Neon SQL console

2. **`prisma/translation_log.json`**
   - Complete log of all translations
   - Useful for review and debugging

### Step 6: Execute SQL in Neon

1. Open your Neon SQL Console: [https://console.neon.tech/](https://console.neon.tech/)
2. Select your database
3. Copy the entire contents of `migration_spanish_translation.sql`
4. Paste into the SQL editor
5. Click **RUN**

### Step 7: Verify in Application

1. Restart your Next.js development server:
   ```bash
   npm run dev
   ```

2. Navigate to the Spanish version: `http://localhost:3000/es`

3. Click on any lesson or game to verify the content is now in Spanish

## 📊 Expected Results

After running the script, you should see:

```
🌍 Starting automatic content translation...

📚 Found 18 lessons to translate
📖 Translating lesson: What is Money?
  - Translating 4 sections...
  - Translating 4 quiz questions...
  ✓ Completed: What is Money?

📖 Translating lesson: Different Types of Currency
  ...

🎮 Found 1 games to translate
🎮 Translating game: 💰 Money Basics Quiz
  - Translating 10 questions...
  ✓ Completed: 💰 Money Basics Quiz

✨ Translation Complete!

📊 Summary:
  - Lessons translated: 18
  - Games translated: 1
  - Total strings translated: ~500+
```

## ⚙️ Technical Details

### Translation Quality

- **Engine:** Claude 3.5 Sonnet (Anthropic's most advanced model)
- **Context-aware:** Each translation includes context about the lesson/game
- **Preserves formatting:** Markdown, emojis, and structure are maintained
- **Educational tone:** Appropriate for both children and adults
- **Latin American Spanish:** Uses neutral Spanish understandable across all Spanish-speaking countries

### Rate Limiting

The script includes automatic delays (500ms) between API calls to respect rate limits and prevent errors.

### Error Handling

- If a translation fails, the script logs the error and continues
- Failed translations won't block the entire process
- Check the console output for any errors

### Cost Estimation

- **Claude 3.5 Sonnet pricing:** ~$3 per million input tokens, ~$15 per million output tokens
- **Estimated cost for this project:** $2-5 USD (approximate)
- **Processing time:** 15-30 minutes depending on API response times

## 🔧 Troubleshooting

### Error: "ANTHROPIC_API_KEY environment variable not set"

**Solution:** Make sure you've exported the API key:
```bash
export ANTHROPIC_API_KEY="your-key-here"
```

### Error: "Rate limit exceeded"

**Solution:** The script already includes delays, but if you hit limits:
1. Wait a few minutes
2. Increase the delay in `translate-content.ts` (line with `setTimeout`)
3. Run the script again

### Error: "Invalid API key"

**Solution:**
1. Verify your API key is correct
2. Check that it starts with `sk-ant-`
3. Generate a new key if needed

### Translations look wrong

**Solution:**
1. Check `translation_log.json` to see the original vs translated text
2. If specific translations are wrong, you can manually edit the SQL file before executing
3. Re-run the script if needed (it will re-translate everything)

## 📝 Script Architecture

```
translate-content.ts
├── translateWithClaude()     → Calls Claude API with context
├── translateLesson()          → Handles lesson structure
│   ├── Sections (title + content)
│   └── Quiz (questions + options + explanations)
├── translateGame()            → Handles game structure
│   ├── Instructions
│   └── Questions (text + options + explanations)
└── generateSQL()              → Creates SQL UPDATE statements
```

## 🎯 Next Steps After Translation

Once translations are applied, you'll need to update the application code to use the Spanish content:

1. **Modify the Lesson API** (`src/app/api/lessons/[lessonId]/route.ts`)
   - Currently returns content directly from database
   - No changes needed! Content is already in Spanish in the database

2. **Modify the Game component** (when you build it)
   - Load game description from database
   - Parse JSON content
   - Display in Spanish

3. **Optional: Implement language switching**
   - Store both EN and ES versions
   - Allow users to switch languages
   - This would require schema changes

## 🔄 Re-running the Script

The script can be run multiple times safely:

- It reads the current database content
- Translates everything again
- Generates a new SQL file
- Previous SQL files are overwritten

**Note:** If you've already applied translations and want to translate new content, you may want to:
1. Only translate new lessons/games
2. Or modify the script to check if content is already translated

## 📚 Related Files

- **Translation script:** `scripts/translate-content.ts`
- **Package configuration:** `package.json`
- **Database schema:** `prisma/schema.prisma`
- **Seed data (English):** `prisma/seed_lessons_complete.sql`
- **Lesson API:** `src/app/api/lessons/[lessonId]/route.ts`

## 💡 Tips

1. **Run during low-traffic hours:** API calls take time, run when you're not actively developing
2. **Review before applying:** Always check the SQL file before executing in production
3. **Backup your database:** Consider taking a Neon backup before running the SQL migration
4. **Test in development first:** If possible, test on a development database first

## ❓ Questions?

If you encounter issues:
1. Check the console output for specific error messages
2. Review `translation_log.json` for translation details
3. Verify your Anthropic API key is valid
4. Check your database connection string

## 🎉 Success!

Once complete, your entire EduFin application will be fully bilingual with:
- Spanish UI (already done via next-intl)
- Spanish lesson titles and descriptions (already done via JSON translations)
- **Spanish lesson content** (sections and quizzes) ✨ NEW
- **Spanish game content** (instructions and questions) ✨ NEW

Everything translated automatically with AI! 🚀
