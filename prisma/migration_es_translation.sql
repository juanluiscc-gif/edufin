-- Multilingual Translation Migration
-- Target Language: Spanish (Latin American) (es)
-- Generated: 2026-01-06T01:00:52.314Z
-- Inserts translations into ContentTranslation table

-- Delete existing translations for this language (if re-running)
DELETE FROM "ContentTranslation"
WHERE target_language = 'es';

-- ========================================
-- LESSON TRANSLATIONS
-- ========================================

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'sections[0].title',
  'en',
  'es',
  'Introduction',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'sections[0].content',
  'en',
  'es',
  '# What is Money?

Money is what we use to buy things we need and want. It''s a tool that makes trading easier!

**For Kids:** Money is like tickets at an arcade - you exchange them for prizes!

**For Adults:** Money serves as a medium of exchange, eliminating the inefficiencies of barter systems.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'sections[1].title',
  'en',
  'es',
  'History of Money',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'sections[1].content',
  'en',
  'es',
  '# How Money Started

Long ago, people traded items directly - like trading 5 apples for 1 chicken. This was called **bartering**.

But bartering had problems:
- What if you had apples but the other person didn''t want them?
- How many apples equal one chicken?

So humans invented money to solve these problems!',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'sections[2].title',
  'en',
  'es',
  'Why We Use Money',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'sections[2].content',
  'en',
  'es',
  '# Why Money is Useful

Money makes life easier because:

1. **Store of Value** - You can save it for later
2. **Unit of Account** - Everything has a clear price
3. **Medium of Exchange** - Everyone accepts it

Instead of carrying around chickens and apples, you carry money!',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'sections[3].title',
  'en',
  'es',
  'Modern Money',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'sections[3].content',
  'en',
  'es',
  '# Money Today

Today, money comes in many forms:
- **Physical:** Coins and bills you can touch
- **Digital:** Money in bank accounts and apps
- **Cryptocurrency:** New digital money on the internet

Most people use a mix of all three types!',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[0].question',
  'en',
  'es',
  'What is the main purpose of money?',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'To make trading easier',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'To be pretty',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'To collect',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'To burn',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Money was invented to make trading goods and services easier than bartering.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[1].question',
  'en',
  'es',
  'What was the old way of trading before money?',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'Selling',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Bartering',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Giving away',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'Stealing',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Bartering means trading items directly, like 5 apples for 1 chicken.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[2].question',
  'en',
  'es',
  'Which is NOT a form of modern money?',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Digital money',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Coins',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Rocks',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Cryptocurrency',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'While some ancient cultures used special rocks as money, regular rocks are not modern currency.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[3].question',
  'en',
  'es',
  'Money helps us "store value" means:',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'We can save it for later',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'We must spend it now',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'It loses value quickly',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'It takes up space',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '08c62923-3e17-43c5-8978-899c14386d93',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Storing value means money keeps its worth over time so you can save it.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'sections[0].title',
  'en',
  'es',
  'Coins and Bills',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'sections[0].content',
  'en',
  'es',
  '# Physical Money

**Coins** are made of metal and usually worth less. They''re good for small purchases like candy or parking meters.

**Bills (Banknotes)** are made of paper or plastic and worth more. They''re lighter and easier to carry than lots of coins.

💡 Fun fact: The ink and paper for bills cost less than 10 cents, but the bill might be worth $100!',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'sections[1].title',
  'en',
  'es',
  'Digital Money',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'sections[1].content',
  'en',
  'es',
  '# Money You Can''t Touch

Most money today is **digital** - it exists as numbers in a computer!

Examples:
- Money in your bank account
- Payment apps like PayPal, Venmo
- Credit card payments
- Mobile wallets like Apple Pay

You never touch this money, but you can still spend it!',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'sections[2].title',
  'en',
  'es',
  'Cryptocurrency Basics',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'sections[2].content',
  'en',
  'es',
  '# A New Kind of Money

**Cryptocurrency** is digital money that uses computer code to secure transactions.

Most famous examples:
- Bitcoin (BTC)
- Ethereum (ETH)

**Key differences:**
- No government controls it
- Works across all countries
- Very secure but can be risky
- Prices change a lot!

⚠️ For beginners, stick to regular money until you learn more!',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[0].question',
  'en',
  'es',
  'What are coins usually made of?',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Paper',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Metal',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Plastic',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Wood',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Coins are made of metal, which makes them durable and hard to counterfeit.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[1].question',
  'en',
  'es',
  'Which is an example of digital money?',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'A $10 bill',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'A quarter',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Your bank account balance',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'Gold bars',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Bank account balances are digital money - they exist as electronic records.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[2].question',
  'en',
  'es',
  'What is true about cryptocurrency?',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'It is controlled by governments',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'It never changes in value',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'It uses computer code for security',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'You can hold it in your hand',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Cryptocurrency uses advanced computer code (cryptography) to secure transactions.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[3].question',
  'en',
  'es',
  'Why is digital money convenient?',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'You can carry large amounts easily',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'It weighs a lot',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'It can get wet',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'You must count it manually',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9a116f11-efb6-4ad9-acc9-12c7117c8029',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Digital money is convenient because you can have millions in your account without physical storage.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'sections[0].title',
  'en',
  'es',
  'Supply and Demand',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'sections[0].content',
  'en',
  'es',
  '# What Makes Money Valuable?

Money has value because of **supply and demand**:

**Supply** = How much money exists
**Demand** = How many people want it

If everyone wants dollars and there aren''t many, dollars are valuable.
If there are too many dollars, each one is worth less.

Think of it like rare trading cards - rare cards are more valuable!',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'sections[1].title',
  'en',
  'es',
  'Government Role',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'sections[1].content',
  'en',
  'es',
  '# Who Controls Money?

Governments and central banks control how much money exists:

- **Print too much** = Money becomes less valuable (inflation)
- **Print too little** = Hard to do business (deflation)

They try to keep the amount "just right" so the economy stays healthy.

This is why you can''t just print money at home - it would make money worthless!',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'sections[2].title',
  'en',
  'es',
  'Trust in Money',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'sections[2].content',
  'en',
  'es',
  '# Why We Trust Money

Money only works if people trust it!

We trust money because:
1. The government says it''s legal
2. Stores accept it
3. We can pay taxes with it
4. It has security features (hard to fake)

If people stopped trusting it, money would become just paper or numbers.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[0].question',
  'en',
  'es',
  'What happens if a government prints too much money?',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Everyone becomes rich',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Money becomes less valuable',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Money becomes more valuable',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Nothing changes',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Printing too much money causes inflation - each dollar is worth less.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[1].question',
  'en',
  'es',
  'Supply and demand means:',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'How much exists and how many want it',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Where to buy things',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'How to save money',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'Types of currency',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Supply is how much exists, demand is how many people want it.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[2].question',
  'en',
  'es',
  'Why can''t you just print your own money?',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'It would make all money worthless',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Printers are expensive',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Paper is hard to find',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'You can, it''s allowed',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'If everyone could print money, there would be too much supply and it would lose value.',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[3].question',
  'en',
  'es',
  'Money has value primarily because:',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'It''s pretty',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'People trust and accept it',
  '',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'It''s made of precious materials',
  'Es elaborado con materiales preciosos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'It''s rare',
  'Es escaso',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Money''s value comes from collective trust and acceptance in society.',
  'El valor del dinero proviene de la confianza colectiva y la aceptación en la sociedad.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[4].question',
  'en',
  'es',
  'What role do governments play with money?',
  '¿Qué papel desempeñan los gobiernos con el dinero?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[4].options[0]',
  'en',
  'es',
  'They determine fashion trends',
  'Determinan las tendencias de moda',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[4].options[1]',
  'en',
  'es',
  'They control the supply',
  'Controlan la oferta',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[4].options[2]',
  'en',
  'es',
  'They force you to spend',
  'Te obligan a gastar',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[4].options[3]',
  'en',
  'es',
  'Nothing at all',
  'Nada en absoluto',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3c4c8be3-fa72-4c82-87f2-a04a9e32f34c',
  'quiz.questions[4].explanation',
  'en',
  'es',
  'Governments and central banks control how much money is in circulation.',
  'Los gobiernos y los bancos centrales controlan cuánto dinero está en circulación.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'sections[0].title',
  'en',
  'es',
  'Major Currencies',
  'Monedas Principales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'sections[0].content',
  'en',
  'es',
  '# World Money

Different countries use different money!

**Major World Currencies:**
- 🇺🇸 US Dollar (USD) - Most widely used
- 🇪🇺 Euro (EUR) - Used in many European countries
- 🇬🇧 British Pound (GBP) - Used in United Kingdom
- 🇯🇵 Japanese Yen (JPY) - Used in Japan
- 🇨🇳 Chinese Yuan (CNY) - Used in China

Each has its own symbol and value!',
  '# Dinero del Mundo

¡Diferentes países usan diferentes monedas!

**Principales Monedas Mundiales:**
- 🇺🇸 Dólar Estadounidense (USD) - La más utilizada
- 🇪🇺 Euro (EUR) - Usada en muchos países europeos
- 🇬🇧 Libra Esterlina (GBP) - Usada en el Reino Unido
- 🇯🇵 Yen Japonés (JPY) - Usada en Japón
- 🇨🇳 Yuan Chino (CNY) - Usada en China

¡Cada una tiene su propio símbolo y valor!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'sections[1].title',
  'en',
  'es',
  'Exchange Rates',
  'Tasas de Cambio',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'sections[1].content',
  'en',
  'es',
  '# Trading Money Between Countries

**Exchange rates** tell you how much one currency is worth in another.

Example:
1 USD = 0.85 EUR

This means one US dollar can be traded for 0.85 euros.

**Exchange rates change daily** based on:
- How strong each economy is
- Interest rates
- Political stability
- Supply and demand',
  '# Intercambiando Dinero Entre Países

**Los tipos de cambio** te indican cuánto vale una moneda en otra.

Ejemplo:
1 USD = 0.85 EUR

Esto significa que un dólar estadounidense puede intercambiarse por 0.85 euros.

**Los tipos de cambio cambian diariamente** según:
- Qué tan fuerte es cada economía
- Las tasas de interés
- La estabilidad política
- La oferta y la demanda',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'sections[2].title',
  'en',
  'es',
  'International Trade',
  'Comercio Internacional',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'sections[2].content',
  'en',
  'es',
  '# Why Exchange Rates Matter

When countries trade with each other, they need to exchange currencies:

- A US company buying products from Japan needs Yen
- A European tourist in America needs Dollars
- Online shopping from other countries requires conversion

**Strong currency** = Your money buys more in other countries
**Weak currency** = Your money buys less abroad

This affects travel, shopping, and business!',
  '# Por qué importan los tipos de cambio

Cuando los países comercian entre sí, necesitan intercambiar monedas:

- Una empresa estadounidense que compra productos de Japón necesita yenes
- Un turista europeo en América necesita dólares
- Las compras en línea de otros países requieren conversión

**Moneda fuerte** = Tu dinero compra más en otros países
**Moneda débil** = Tu dinero compra menos en el extranjero

¡Esto afecta los viajes, las compras y los negocios!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[0].question',
  'en',
  'es',
  'What is the currency used in most European countries?',
  '¿Cuál es la moneda utilizada en la mayoría de los países europeos?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Dollar',
  'Dólar',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Euro',
  'Euro',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Pound',
  'Libra',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Peso',
  'Peso',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'The Euro (EUR) is used by 20 European Union countries.',
  'El euro (EUR) es utilizado por 20 países de la Unión Europea.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[1].question',
  'en',
  'es',
  'What does an exchange rate tell you?',
  '¿Qué te indica una tasa de cambio?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'How fast money grows',
  'Qué tan rápido crece el dinero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Where to shop',
  'Dónde comprar',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'How much one currency is worth in another',
  'Cuánto vale una moneda en términos de otra',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'How to save money',
  'Cómo ahorrar dinero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Exchange rates show the value of one currency compared to another.',
  'Los tipos de cambio muestran el valor de una moneda en comparación con otra.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[2].question',
  'en',
  'es',
  'If 1 USD = 100 JPY, how many yen is $5?',
  'Si 1 USD = 100 JPY, ¿cuántos yenes son $5?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  '50 yen',
  '50 yenes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  '100 yen',
  '100 yenes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  '500 yen',
  '500 yenes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  '5 yen',
  '5 yenes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[2].explanation',
  'en',
  'es',
  '5 dollars × 100 yen per dollar = 500 yen.',
  '5 dólares × 100 yenes por dólar = 500 yenes.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[3].question',
  'en',
  'es',
  'When would you need to exchange currency?',
  '¿Cuándo necesitarías cambiar moneda?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'Traveling to another country',
  'Viajar a otro país',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Shopping at local stores',
  'Comprar en tiendas locales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Paying bills at home',
  'Pagar facturas en casa',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Saving money',
  'Ahorrar dinero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'You need to exchange currency when traveling abroad or buying from international sellers.',
  'Necesitas cambiar moneda cuando viajas al extranjero o compras a vendedores internacionales.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[4].question',
  'en',
  'es',
  'What makes a currency "strong"?',
  '¿Qué hace que una moneda sea "fuerte"?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[4].options[0]',
  'en',
  'es',
  'It''s made of strong materials',
  'Está hecha de materiales resistentes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[4].options[1]',
  'en',
  'es',
  'It buys more in other countries',
  'Compra más en otros países',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[4].options[2]',
  'en',
  'es',
  'It''s heavy',
  'Es pesada',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[4].options[3]',
  'en',
  'es',
  'It''s colorful',
  'Es colorida',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '729e7613-f36f-4863-8174-e2d503dc4ae3',
  'quiz.questions[4].explanation',
  'en',
  'es',
  'A strong currency has high purchasing power in international markets.',
  'Una moneda fuerte tiene un alto poder adquisitivo en los mercados internacionales.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'sections[0].title',
  'en',
  'es',
  'What is Inflation',
  '¿Qué es la Inflación?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'sections[0].content',
  'en',
  'es',
  '# When Things Get More Expensive

**Inflation** means prices go up over time.

Example:
- 1990: A candy bar cost $0.50
- 2025: The same candy costs $1.50

Your money buys less than it used to!

**Why it happens:**
- More money in circulation
- Higher demand for products
- Increased production costs

Some inflation (2-3% per year) is normal and healthy.',
  '# Cuando las cosas se vuelven más caras

**La inflación** significa que los precios suben con el tiempo.

Ejemplo:
- 1990: Una barra de chocolate costaba $0.50
- 2025: El mismo chocolate cuesta $1.50

¡Tu dinero compra menos de lo que solía comprar!

**Por qué ocurre:**
- Más dinero en circulación
- Mayor demanda de productos
- Aumento en los costos de producción

Algo de inflación (2-3% por año) es normal y saludable.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'sections[1].title',
  'en',
  'es',
  'How Inflation Affects You',
  'Cómo te afecta la inflación',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'sections[1].content',
  'en',
  'es',
  '# Your Money Loses Value

**Purchasing power** = What you can buy with your money

With inflation:
- $100 today buys more than $100 next year
- Savings lose value if just sitting in a jar
- Salaries need to increase to keep up

**Example:**
If inflation is 3% per year:
- $100 today = $97 of purchasing power next year
- $100 today = $94 of purchasing power in 2 years

That''s why grandparents say "things were cheaper in my day" - they were!',
  '# Tu Dinero Pierde Valor

**Poder adquisitivo** = Lo que puedes comprar con tu dinero

Con la inflación:
- $100 hoy compran más que $100 el próximo año
- Los ahorros pierden valor si solo están guardados en un frasco
- Los salarios necesitan aumentar para mantenerse al día

**Ejemplo:**
Si la inflación es del 3% al año:
- $100 hoy = $97 de poder adquisitivo el próximo año
- $100 hoy = $94 de poder adquisitivo en 2 años

¡Por eso los abuelos dicen "las cosas eran más baratas en mis tiempos" - lo eran!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'sections[2].title',
  'en',
  'es',
  'Protecting Against Inflation',
  'Protección Contra la Inflación',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'sections[2].content',
  'en',
  'es',
  '# How to Fight Inflation

Don''t let inflation eat your money! Here''s how:

**1. Put money in savings accounts with interest**
- Interest helps money grow
- Offsets some inflation

**2. Invest in stocks, bonds, or real estate**
- These often grow faster than inflation
- Riskier but protects purchasing power

**3. Increase your income**
- Ask for raises
- Learn new skills
- Start a side business

**4. Budget wisely**
- Track where money goes
- Find better deals
- Reduce unnecessary spending

Remember: Cash under your mattress loses value every year!',
  '# Cómo Combatir la Inflación

¡No dejes que la inflación se coma tu dinero! Así es cómo:

**1. Pon dinero en cuentas de ahorro con interés**
- El interés ayuda a que el dinero crezca
- Compensa parte de la inflación

**2. Invierte en acciones, bonos o bienes raíces**
- Estos a menudo crecen más rápido que la inflación
- Es más arriesgado pero protege el poder adquisitivo

**3. Aumenta tus ingresos**
- Pide aumentos de sueldo
- Aprende nuevas habilidades
- Inicia un negocio secundario

**4. Haz un presupuesto inteligente**
- Lleva un registro de a dónde va el dinero
- Busca mejores ofertas
- Reduce los gastos innecesarios

Recuerda: ¡El efectivo debajo de tu colchón pierde valor cada año!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[0].question',
  'en',
  'es',
  'What is inflation?',
  '¿Qué es la inflación?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'When prices go down',
  'Cuando los precios bajan',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'When prices go up over time',
  'Cuando los precios suben con el tiempo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'When money is printed',
  'Cuando se imprime dinero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'When people save money',
  'Cuando las personas ahorran dinero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Inflation is the general increase in prices over time.',
  'La inflación es el aumento general de los precios a lo largo del tiempo.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[1].question',
  'en',
  'es',
  'If inflation is 5% and you have $100 in cash for a year, what happens?',
  'Si la inflación es del 5% y tienes $100 en efectivo durante un año, ¿qué sucede?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'You can buy 5% more',
  'Puedes comprar 5% más',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'You can buy the same amount',
  'Puedes comprar la misma cantidad',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'You can buy 5% less',
  'Puedes comprar 5% menos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'Your money disappears',
  'Tu dinero desaparece',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'With 5% inflation, your $100 loses 5% of purchasing power.',
  'Con una inflación del 5%, tus $100 pierden el 5% de su poder adquisitivo.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[2].question',
  'en',
  'es',
  'Why do prices tend to increase over time?',
  '¿Por qué los precios tienden a aumentar con el tiempo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Stores want more profit only',
  'Las tiendas solo quieren más ganancias',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Due to inflation and increased costs',
  'Debido a la inflación y el aumento de costos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Because money becomes stronger',
  'Porque el dinero se vuelve más fuerte',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'It''s random',
  'Es aleatorio',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Prices increase due to inflation, which comes from various economic factors.',
  'Los precios aumentan debido a la inflación, que proviene de varios factores económicos.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[3].question',
  'en',
  'es',
  'What is a good way to protect against inflation?',
  '¿Cuál es una buena manera de protegerse contra la inflación?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'Hide cash under your mattress',
  'Esconder efectivo debajo del colchón',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Spend all your money immediately',
  'Gastar todo tu dinero inmediatamente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Invest in assets that grow',
  'Invertir en activos que crecen',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Do nothing',
  'No hacer nada',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Investing in growing assets helps maintain or increase purchasing power.',
  'Invertir en activos de crecimiento ayuda a mantener o aumentar el poder adquisitivo.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[4].question',
  'en',
  'es',
  'What is "purchasing power"?',
  '¿Qué es el "poder adquisitivo"?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[4].options[0]',
  'en',
  'es',
  'How strong you are',
  'Qué tan fuerte eres',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[4].options[1]',
  'en',
  'es',
  'What you can buy with your money',
  'El poder de compra que tienes con tu dinero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[4].options[2]',
  'en',
  'es',
  'Your job title',
  'Tu título de trabajo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[4].options[3]',
  'en',
  'es',
  'How much money you earn',
  'Cuánto dinero ganas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[4].explanation',
  'en',
  'es',
  'Purchasing power is what your money can actually buy.',
  'El poder adquisitivo es lo que tu dinero realmente puede comprar.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[5].question',
  'en',
  'es',
  'Is some inflation considered normal?',
  '¿Se considera normal algo de inflación?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[5].options[0]',
  'en',
  'es',
  'No, inflation is always bad',
  'No, la inflación siempre es mala',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[5].options[1]',
  'en',
  'es',
  'Yes, 2-3% annual inflation is normal',
  'Sí, una inflación anual del 2-3% es normal',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[5].options[2]',
  'en',
  'es',
  'Only in poor countries',
  'Solo en países pobres',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[5].options[3]',
  'en',
  'es',
  'Inflation never happens',
  'La inflación nunca ocurre',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '806561b5-ca3e-4507-a711-2d06e24ae0dc',
  'quiz.questions[5].explanation',
  'en',
  'es',
  'Moderate inflation of 2-3% per year is normal and indicates economic growth.',
  'La inflación moderada del 2-3% anual es normal e indica crecimiento económico.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'sections[0].title',
  'en',
  'es',
  'Jobs and Careers',
  'Trabajos y Carreras',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'sections[0].content',
  'en',
  'es',
  '# Working for Money

**Active income** = Money you earn by working

Types of jobs:
- **Employee:** Work for a company (steady paycheck)
- **Freelancer:** Work for yourself (multiple clients)
- **Contractor:** Work on specific projects

**For kids:** Chores, lawn mowing, pet sitting
**For adults:** Full-time jobs, part-time work, consulting',
  '# Trabajar por Dinero

**Ingreso activo** = Dinero que ganas al trabajar

Tipos de trabajos:
- **Empleado:** Trabajas para una empresa (sueldo fijo)
- **Trabajador independiente:** Trabajas por tu cuenta (múltiples clientes)
- **Contratista:** Trabajas en proyectos específicos

**Para niños:** Tareas domésticas, cortar el césped, cuidar mascotas
**Para adultos:** Trabajos de tiempo completo, trabajos de medio tiempo, consultoría',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'sections[1].title',
  'en',
  'es',
  'Self-Employment',
  'Autoempleo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'sections[1].content',
  'en',
  'es',
  '# Being Your Own Boss

**Self-employment** means working for yourself!

Examples:
- Start a small business
- Offer services (tutoring, cleaning, design)
- Sell products online
- Create content (YouTube, blog)

**Pros:** Flexibility, unlimited earning potential
**Cons:** No steady paycheck, more responsibility',
  '# Ser Tu Propio Jefe

**El trabajo por cuenta propia** significa trabajar para ti mismo.

Ejemplos:
- Iniciar un pequeño negocio
- Ofrecer servicios (tutorías, limpieza, diseño)
- Vender productos en línea
- Crear contenido (YouTube, blog)

**Ventajas:** Flexibilidad, potencial de ingresos ilimitado
**Desventajas:** No hay sueldo fijo, más responsabilidad',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'sections[2].title',
  'en',
  'es',
  'Passive Income',
  'Ingresos Pasivos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'sections[2].content',
  'en',
  'es',
  '# Money While You Sleep

**Passive income** = Earning money without active work

Examples:
- Rental properties (rent from tenants)
- Investments (dividends from stocks)
- Royalties (from books, music, patents)
- Online courses (sell once, earn forever)

Note: Usually requires upfront work or money to start!',
  '# Dinero Mientras Duermes

**Ingreso pasivo** = Ganar dinero sin trabajo activo

Ejemplos:
- Propiedades en alquiler (renta de inquilinos)
- Inversiones (dividendos de acciones)
- Regalías (de libros, música, patentes)
- Cursos en línea (vender una vez, ganar para siempre)

Nota: ¡Usualmente requiere trabajo o dinero inicial para comenzar!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[0].question',
  'en',
  'es',
  'What is active income?',
  '¿Qué es el ingreso activo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Money earned by working',
  'Dinero ganado al trabajar',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Money earned while sleeping',
  'Dinero ganado mientras duermes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Money from investments',
  'Dinero proveniente de inversiones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Money found on the street',
  'Dinero encontrado en la calle',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Active income is money earned through active work and effort.',
  'El ingreso activo es el dinero que se gana a través del trabajo y el esfuerzo activo.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[1].question',
  'en',
  'es',
  'Which is an example of passive income?',
  '¿Cuál es un ejemplo de ingreso pasivo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'Your salary from a job',
  'Tu salario de un trabajo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Payment for mowing a lawn',
  'Pago por cortar el césped',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Rent from a property you own',
  'Alquiler de una propiedad que posees',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'Allowance from parents',
  'Mesada de los padres',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Rental income is passive - you earn it without active daily work.',
  'Ingreso por alquiler es pasivo - lo ganas sin trabajo activo diario.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[2].question',
  'en',
  'es',
  'What does self-employment mean?',
  '¿Qué significa el autoempleo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Working for a big company',
  'Trabajar para una empresa grande',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Working for yourself',
  'Trabajar por cuenta propia',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Being unemployed',
  'Estar desempleado',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Working part-time',
  'Trabajar medio tiempo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Self-employment means you are your own boss and work for yourself.',
  'El autoempleo significa que eres tu propio jefe y trabajas para ti mismo.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[3].question',
  'en',
  'es',
  'Which is true about passive income?',
  '¿Cuál es verdadero sobre el ingreso pasivo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'It requires no effort ever',
  'No requiere ningún esfuerzo nunca',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Anyone can start immediately with no money',
  'Cualquier persona puede comenzar inmediatamente sin dinero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'It often requires upfront work or investment',
  'Frecuentemente requiere trabajo o inversión inicial',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'It always earns more than active income',
  'Siempre genera más ingresos que el ingreso activo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '616f29ef-d7df-494e-9ee9-520e542237c7',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Passive income streams usually require initial work or capital to establish.',
  'Los ingresos pasivos generalmente requieren trabajo inicial o capital para establecerse.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'sections[0].title',
  'en',
  'es',
  'Gross vs Net Income',
  'Ingreso Bruto vs Ingreso Neto',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'sections[0].content',
  'en',
  'es',
  '# How Much Do You Really Earn?

**Gross Income** = Total money before anything is taken out
**Net Income** = Money you actually take home (after taxes and deductions)

Example:
- Gross: $1,000
- Taxes: -$200
- Health insurance: -$50
- Retirement: -$50
- **Net (take-home): $700**

Always focus on net income when budgeting!',
  '# ¿Cuánto Ganas Realmente?

**Ingreso Bruto** = Dinero total antes de que se descuente algo
**Ingreso Neto** = Dinero que realmente recibes (después de impuestos y deducciones)

Ejemplo:
- Bruto: $1,000
- Impuestos: -$200
- Seguro médico: -$50
- Retiro: -$50
- **Neto (para llevar a casa): $700**

¡Siempre enfócate en el ingreso neto al hacer tu presupuesto!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'sections[1].title',
  'en',
  'es',
  'Salary vs Hourly',
  'Salario vs Por Hora',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'sections[1].content',
  'en',
  'es',
  '# Two Ways to Get Paid

**Salary:**
- Fixed amount per year
- Example: $50,000/year
- Same paycheck every month
- Often includes benefits

**Hourly:**
- Paid per hour worked
- Example: $15/hour
- Paycheck varies based on hours
- May get overtime pay (1.5x or 2x rate)

Neither is "better" - it depends on the job!',
  '# Dos formas de recibir pago

**Salario:**
- Cantidad fija por año
- Ejemplo: $50,000/año
- Mismo cheque de pago cada mes
- A menudo incluye beneficios

**Por hora:**
- Pago por hora trabajada
- Ejemplo: $15/hora
- El cheque de pago varía según las horas
- Puede recibir pago de horas extras (1.5x o 2x la tarifa)

Ninguna es "mejor" - ¡depende del trabajo!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'sections[2].title',
  'en',
  'es',
  'Benefits and Bonuses',
  'Beneficios y Bonificaciones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'sections[2].content',
  'en',
  'es',
  '# More Than Just Money

**Benefits** = Extra compensation beyond salary

Common benefits:
- Health insurance
- Retirement contributions (401k matching)
- Paid vacation days
- Sick leave
- Professional development

**Bonuses:**
- Extra payments for good performance
- Holiday bonuses
- Commission (sales-based earnings)
- Profit sharing

Benefits can be worth 20-30% of your salary!',
  '# Más que solo dinero

**Beneficios** = Compensación adicional más allá del salario

Beneficios comunes:
- Seguro médico
- Contribuciones para el retiro (aportación patronal)
- Días de vacaciones pagadas
- Permiso por enfermedad
- Desarrollo profesional

**Bonos:**
- Pagos adicionales por buen desempeño
- Bonos de fin de año
- Comisiones (ganancias basadas en ventas)
- Participación de utilidades

¡Los beneficios pueden valer entre el 20-30% de tu salario!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[0].question',
  'en',
  'es',
  'What is net income?',
  '¿Qué es el ingreso neto?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Total income before deductions',
  'Ingreso total antes de deducciones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Money you take home after deductions',
  'Dinero que te llevas a casa después de las deducciones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Money from the internet',
  'Dinero de internet',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Bonus payments',
  'Pagos de bonificación',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Net income is what you actually receive after taxes and deductions.',
  'El ingreso neto es lo que realmente recibes después de impuestos y deducciones.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[1].question',
  'en',
  'es',
  'If your gross income is $2,000 and $400 is deducted, what is your net income?',
  'Si tu ingreso bruto es $2,000 y se deducen $400, ¿cuál es tu ingreso neto?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  '$2,400',
  '$2,400',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  '$2,000',
  '$2,000',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  '$1,600',
  '$1,600',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  '$400',
  '$400',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Net income = Gross - Deductions = $2,000 - $400 = $1,600.',
  'Ingreso neto = Bruto - Deducciones = $2,000 - $400 = $1,600.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[2].question',
  'en',
  'es',
  'What is a benefit of hourly pay?',
  '¿Cuál es un beneficio del pago por hora?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Same paycheck every month',
  'Mismo cheque de pago cada mes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Can earn overtime pay',
  'Puedes ganar pago por horas extras',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Always includes health insurance',
  'Siempre incluye seguro médico',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Never changes',
  'Nunca cambia',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Hourly workers often earn overtime (extra pay) for working extra hours.',
  'Los trabajadores por hora a menudo ganan tiempo extra (pago adicional) por trabajar horas adicionales.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[3].question',
  'en',
  'es',
  'Which is NOT typically a job benefit?',
  '¿Cuál NO es típicamente un beneficio laboral?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'Health insurance',
  'Seguro médico',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Paid vacation',
  'Vacaciones pagadas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Free groceries',
  'Comestibles gratis',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  '401k matching',
  'Igualación de 401k',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '9c87f5fd-5d86-4958-947c-b1d215788d45',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Free groceries are not a standard job benefit, unlike insurance or retirement contributions.',
  'Los víveres gratuitos no son un beneficio laboral estándar, a diferencia del seguro o las contribuciones para el retiro.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'sections[0].title',
  'en',
  'es',
  'Finding Opportunities',
  'Encontrando Oportunidades',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'sections[0].content',
  'en',
  'es',
  '# Where to Look for Jobs

**For Young People:**
- Ask family and neighbors
- Check local stores for "Now Hiring" signs
- School job boards
- Community centers

**For Adults:**
- Online job boards (LinkedIn, Indeed)
- Company websites
- Networking events
- Recruitment agencies
- Professional connections

Tip: Many jobs are found through people you know!',
  '# Dónde Buscar Trabajo

**Para Jóvenes:**
- Pregunta a familiares y vecinos
- Revisa tiendas locales en busca de carteles de "Se Busca Personal"
- Bolsas de trabajo escolares
- Centros comunitarios

**Para Adultos:**
- Portales de empleo en línea (LinkedIn, Indeed)
- Sitios web de empresas
- Eventos de networking
- Agencias de reclutamiento
- Contactos profesionales

Tip: ¡Muchos trabajos se encuentran a través de personas que conoces!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'sections[1].title',
  'en',
  'es',
  'Interview Skills',
  'Habilidades para Entrevistas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'sections[1].content',
  'en',
  'es',
  '# Making a Good Impression

**Before the interview:**
- Research the company
- Prepare answers to common questions
- Choose appropriate clothing
- Arrive 10 minutes early

**During the interview:**
- Shake hands firmly
- Make eye contact
- Speak clearly and confidently
- Ask thoughtful questions
- Show enthusiasm

**After the interview:**
- Send a thank-you email within 24 hours
- Follow up if you haven''t heard back in a week',
  '# Causando una Buena Impresión

**Antes de la entrevista:**
- Investiga sobre la empresa
- Prepara respuestas a preguntas comunes
- Elige ropa apropiada
- Llega 10 minutos antes

**Durante la entrevista:**
- Estrecha la mano con firmeza
- Mantén contacto visual
- Habla con claridad y confianza
- Haz preguntas reflexivas
- Muestra entusiasmo

**Después de la entrevista:**
- Envía un correo electrónico de agradecimiento dentro de las 24 horas
- Haz seguimiento si no has recibido respuesta en una semana',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'sections[2].title',
  'en',
  'es',
  'First Day Tips',
  'Consejos para el Primer Día',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'sections[2].content',
  'en',
  'es',
  '# Starting Strong

**Your first day:**
- Arrive early
- Bring a notebook and pen
- Ask questions (it shows you care!)
- Learn coworkers'' names
- Observe workplace culture
- Take notes on processes

**First week/month:**
- Be reliable (show up on time)
- Take initiative
- Accept feedback gracefully
- Don''t be afraid to admit mistakes
- Build relationships with colleagues

Remember: Everyone was new once. People want you to succeed!',
  '# Comenzando con Fuerza

**Tu primer día:**
- Llega temprano
- Lleva un cuaderno y un bolígrafo
- Haz preguntas (¡demuestra que te importa!)
- Aprende los nombres de tus compañeros de trabajo
- Observa la cultura del lugar de trabajo
- Toma notas sobre los procesos

**Primera semana/mes:**
- Sé confiable (llega a tiempo)
- Toma la iniciativa
- Acepta la retroalimentación con gracia
- No tengas miedo de admitir errores
- Construye relaciones con tus colegas

Recuerda: Todos fuimos nuevos alguna vez. ¡La gente quiere que tengas éxito!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[0].question',
  'en',
  'es',
  'What should you do before a job interview?',
  '¿Qué debes hacer antes de una entrevista de trabajo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Nothing, just show up',
  'Nada, solo preséntate',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Research the company',
  'Investigar la empresa',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Memorize your resume',
  'Memorizar tu currículum',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Bring your parents',
  'Llevar a tus padres',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Researching the company shows you''re serious and helps you answer questions better.',
  'Investigar sobre la empresa demuestra que eres serio y te ayuda a responder las preguntas de mejor manera.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[1].question',
  'en',
  'es',
  'How early should you arrive for an interview?',
  '¿Con cuánta anticipación deberías llegar a una entrevista?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  '1 hour early',
  '1 hora antes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Exactly on time',
  'Exactamente a tiempo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  '10 minutes early',
  '10 minutos antes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  '10 minutes late',
  '10 minutos tarde',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Arriving 10 minutes early shows punctuality without being too early.',
  'Llegar 10 minutos antes demuestra puntualidad sin ser demasiado temprano.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[2].question',
  'en',
  'es',
  'What does "networking" mean when job hunting?',
  '¿Qué significa "hacer networking" al buscar trabajo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Using the internet',
  'Usar internet',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Building professional connections',
  'Construir conexiones profesionales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Working with computers',
  'Trabajar con computadoras',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Social media posting',
  'Publicar en redes sociales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Networking is building relationships with people who can help your career.',
  'Hacer networking es construir relaciones con personas que pueden ayudar a tu carrera.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[3].question',
  'en',
  'es',
  'On your first day, you should:',
  'En tu primer día, deberías:',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'Pretend to know everything',
  'Fingir que sabes todo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Stay quiet and don''t ask questions',
  'Mantenerte callado y no hacer preguntas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Ask questions and take notes',
  'Hacer preguntas y tomar notas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Leave early to avoid mistakes',
  'Irte temprano para evitar errores',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5955651c-67ce-4cfb-abab-edac88f942a5',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Asking questions and taking notes shows you want to learn and do well.',
  'Hacer preguntas y tomar notas demuestra que quieres aprender y hacerlo bien.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'sections[0].title',
  'en',
  'es',
  'Why Diversify',
  'Por qué diversificar',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'sections[0].content',
  'en',
  'es',
  '# Don''t Put All Eggs in One Basket

**Why multiple income streams matter:**

1. **Security:** If you lose one source, you have others
2. **Growth:** Multiple sources = more total income
3. **Freedom:** Less dependent on single employer
4. **Opportunities:** Learn new skills

**Real example:**
Sarah has:
- Full-time job: $50,000/year
- Weekend tutoring: $5,000/year
- Rental property: $10,000/year
- Total: $65,000/year with backup plans!',
  '# No Pongas Todos los Huevos en Una Sola Canasta

**Por qué importan múltiples fuentes de ingreso:**

1. **Seguridad:** Si pierdes una fuente, tienes otras
2. **Crecimiento:** Múltiples fuentes = más ingreso total
3. **Libertad:** Menos dependencia de un solo empleador
4. **Oportunidades:** Aprender nuevas habilidades

**Ejemplo real:**
Sarah tiene:
- Trabajo de tiempo completo: $50,000/año
- Tutorías los fines de semana: $5,000/año
- Propiedad en alquiler: $10,000/año
- Total: $65,000/año ¡con planes de respaldo!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'sections[1].title',
  'en',
  'es',
  'Side Hustles',
  'Trabajos Secundarios',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'sections[1].content',
  'en',
  'es',
  '# Extra Income Ideas

**Popular side hustles:**

**Online:**
- Freelance writing, design, programming
- Online tutoring
- Sell crafts on Etsy
- YouTube content creation
- Affiliate marketing

**Offline:**
- Ride-share driving (Uber, Lyft)
- Food delivery
- Pet sitting/dog walking
- Home repairs/handyman services
- Photography for events

**Tips:**
- Start small, grow gradually
- Choose something you enjoy
- Don''t burn yourself out
- Track income and expenses',
  '# Ideas para Generar Ingresos Extra

**Trabajos secundarios populares:**

**En línea:**
- Escritura freelance, diseño, programación
- Tutorías en línea
- Vender artesanías en Etsy
- Creación de contenido en YouTube
- Marketing de afiliados

**Fuera de línea:**
- Conducir para aplicaciones de transporte (Uber, Lyft)
- Entrega de comida a domicilio
- Cuidado de mascotas/paseo de perros
- Reparaciones del hogar/servicios de mantenimiento
- Fotografía para eventos

**Consejos:**
- Empieza pequeño, crece gradualmente
- Elige algo que disfrutes
- No te agotes
- Lleva registro de ingresos y gastos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'sections[2].title',
  'en',
  'es',
  'Investment Income',
  'Ingresos por Inversiones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'sections[2].content',
  'en',
  'es',
  '# Money Making Money

**Investment income types:**

**1. Dividends:**
- Companies pay shareholders
- Usually quarterly
- Can reinvest or take as cash

**2. Interest:**
- From savings accounts
- Bonds pay interest
- Generally lower risk

**3. Capital Gains:**
- Selling investments for profit
- Buy stock at $50, sell at $100 = $50 gain
- Can be risky

**4. Rental Income:**
- Own property, rent to tenants
- Requires significant upfront capital
- Ongoing maintenance needed

**Key:** Start investing early, even small amounts grow over time!',
  '# El Dinero Generando Dinero

**Tipos de ingresos por inversión:**

**1. Dividendos:**
- Las empresas pagan a los accionistas
- Usualmente trimestralmente
- Puedes reinvertir o recibir en efectivo

**2. Intereses:**
- De cuentas de ahorro
- Los bonos pagan intereses
- Generalmente de menor riesgo

**3. Ganancias de Capital:**
- Vender inversiones con ganancia
- Comprar acciones a $50, vender a $100 = $50 de ganancia
- Puede ser arriesgado

**4. Ingresos por Alquiler:**
- Poseer propiedades, alquilar a inquilinos
- Requiere capital inicial significativo
- Se necesita mantenimiento continuo

**Clave:** ¡Comienza a invertir temprano, incluso las pequeñas cantidades crecen con el tiempo!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[0].question',
  'en',
  'es',
  'Why is having multiple income streams beneficial?',
  '¿Por qué es beneficioso tener múltiples fuentes de ingresos?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'It''s more complicated',
  'Es más complicado',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Provides financial security if one source fails',
  'Proporciona seguridad financiera si una fuente falla',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'You work less',
  'Trabajas menos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'It''s required by law',
  'Es requerido por ley',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Multiple income streams provide security - if one stops, you still have others.',
  'Múltiples fuentes de ingresos proporcionan seguridad: si una se detiene, aún tienes otras.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[1].question',
  'en',
  'es',
  'What is a "side hustle"?',
  '¿Qué es un "side hustle" o trabajo adicional?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'Your main job',
  'Tu trabajo principal',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'A dance move',
  'Un movimiento de baile',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Extra work for additional income',
  'Trabajo extra para ingresos adicionales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'A type of investment',
  'Un tipo de inversión',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'A side hustle is extra work outside your main job to earn more money.',
  'Un side hustle es trabajo extra fuera de tu empleo principal para ganar más dinero.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[2].question',
  'en',
  'es',
  'What are dividends?',
  '¿Qué son los dividendos?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Money companies pay shareholders',
  'Dinero que las empresas pagan a los accionistas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Bank fees',
  'Tarifas bancarias',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Types of savings accounts',
  'Tipos de cuentas de ahorro',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Job bonuses',
  'Bonificaciones laborales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Dividends are payments companies make to shareholders from profits.',
  'Los dividendos son pagos que las empresas hacen a los accionistas a partir de sus ganancias.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[3].question',
  'en',
  'es',
  'Which is considered passive investment income?',
  '¿Cuál se considera ingreso pasivo de inversión?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'Salary from your job',
  'Salario de tu trabajo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Dividends from stocks',
  'Dividendos de acciones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Payment for freelance work',
  'Pago por trabajo independiente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Tips from waiting tables',
  'Propinas de mesero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Dividends are passive income - you earn them without active daily work.',
  'Los dividendos son ingresos pasivos: los ganas sin trabajo activo diario.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[4].question',
  'en',
  'es',
  'When starting a side hustle, you should:',
  'Al comenzar un negocio secundario, deberías:',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[4].options[0]',
  'en',
  'es',
  'Quit your main job immediately',
  'Renunciar a tu trabajo principal inmediatamente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[4].options[1]',
  'en',
  'es',
  'Start small and grow gradually',
  'Comenzar en pequeño y crecer gradualmente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[4].options[2]',
  'en',
  'es',
  'Ignore tracking income',
  'Ignorar el seguimiento de ingresos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[4].options[3]',
  'en',
  'es',
  'Never tell anyone',
  'Nunca contarle a nadie',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '7e095164-09e5-4dd8-a818-60830a1b7b30',
  'quiz.questions[4].explanation',
  'en',
  'es',
  'It''s smart to start small, test the market, and grow sustainably.',
  'Es inteligente empezar en pequeño, probar el mercado y crecer de manera sostenible.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'sections[0].title',
  'en',
  'es',
  'Essential Expenses',
  'Gastos Esenciales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'sections[0].content',
  'en',
  'es',
  '# What You Need to Survive

**Needs** = Things required for survival and basic well-being

True needs:
- Food and water
- Shelter (housing)
- Clothing (appropriate for weather)
- Healthcare
- Basic transportation (to work/school)
- Utilities (electricity, water, heat)

**For kids:** School supplies, healthy food
**For adults:** Mortgage/rent, insurance, basic groceries',
  '# Lo Que Necesitas Para Sobrevivir

**Necesidades** = Cosas requeridas para la supervivencia y el bienestar básico

Necesidades verdaderas:
- Comida y agua
- Vivienda (hogar)
- Ropa (apropiada para el clima)
- Atención médica
- Transporte básico (al trabajo/escuela)
- Servicios públicos (electricidad, agua, calefacción)

**Para niños:** Útiles escolares, comida saludable
**Para adultos:** Hipoteca/alquiler, seguro, alimentos básicos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'sections[1].title',
  'en',
  'es',
  'Discretionary Spending',
  'Gasto Discrecional',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'sections[1].content',
  'en',
  'es',
  '# Things That Make Life Better

**Wants** = Things that improve life but aren''t necessary for survival

Examples:
- Restaurant meals (you can cook at home)
- Latest phone (older model works)
- Designer clothes (regular clothes cover you)
- Streaming services
- Vacations
- Toys and games

Wants aren''t bad! But needs come first.',
  '# Cosas que mejoran la vida

**Deseos** = Cosas que mejoran la vida pero no son necesarias para sobrevivir

Ejemplos:
- Comidas en restaurantes (puedes cocinar en casa)
- Teléfono último modelo (un modelo anterior funciona)
- Ropa de marca (ropa regular te cubre)
- Servicios de streaming
- Vacaciones
- Juguetes y juegos

¡Los deseos no son malos! Pero las necesidades van primero.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'sections[2].title',
  'en',
  'es',
  'Making Choices',
  'Tomando Decisiones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'sections[2].content',
  'en',
  'es',
  '# The Tricky Middle Ground

Some purchases are both:

**Phone:**
- Need: Basic phone for safety/work
- Want: $1,200 flagship model

**Food:**
- Need: Nutritious meals
- Want: Expensive restaurant every day

**Clothing:**
- Need: Warm coat in winter
- Want: Designer brand coat

**Smart spending = Meet needs first, enjoy wants within budget**',
  '# La Zona Intermedia Complicada

Algunas compras son ambas cosas:

**Teléfono:**
- Necesidad: Teléfono básico para seguridad/trabajo
- Deseo: Modelo insignia de $1,200

**Comida:**
- Necesidad: Comidas nutritivas
- Deseo: Restaurante costoso todos los días

**Ropa:**
- Necesidad: Abrigo abrigado en invierno
- Deseo: Abrigo de marca de diseñador

**Gasto inteligente = Cubrir necesidades primero, disfrutar deseos dentro del presupuesto**',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[0].question',
  'en',
  'es',
  'Which of these is a true NEED?',
  '¿Cuál de estos es una NECESIDAD verdadera?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Designer sneakers',
  'Zapatillas de marca',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Basic shelter',
  'Refugio básico',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Video games',
  'Videojuegos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Vacation',
  'Vacaciones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Shelter is essential for survival, making it a need.',
  'El refugio es esencial para la supervivencia, lo que lo convierte en una necesidad.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[1].question',
  'en',
  'es',
  'Which is a WANT?',
  '¿Cuál es un DESEO?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'Medicine when sick',
  'Medicina cuando estás enfermo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Water to drink',
  'Agua para beber',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Streaming service subscription',
  'Suscripción a servicio de streaming',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'Winter coat in cold climate',
  'Abrigo de invierno en clima frío',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Streaming services are entertainment wants, not survival needs.',
  'Los servicios de streaming son deseos de entretenimiento, no necesidades de supervivencia.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[2].question',
  'en',
  'es',
  'Why is it important to identify needs vs wants?',
  '¿Por qué es importante identificar necesidades vs deseos?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'To never enjoy anything',
  'Para nunca disfrutar nada',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'To prioritize spending wisely',
  'Para priorizar los gastos de manera inteligente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Wants are illegal',
  'Wants are illegal

**Los deseos son ilegales**',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Needs are free',
  'Las necesidades son gratuitas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Identifying needs vs wants helps you spend money on essentials first.',
  'Identificar necesidades vs deseos te ayuda a gastar dinero en lo esencial primero.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[3].question',
  'en',
  'es',
  'A $1,200 phone when a $300 phone works is an example of:',
  'Un teléfono de $1,200 cuando un teléfono de $300 funciona es un ejemplo de:',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'A need',
  'Una necesidad',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Smart spending',
  'Gasto inteligente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Upgrading a need to a want',
  'Convertir una necesidad en un deseo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Required spending',
  'Gasto necesario',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3918e2c1-e1bc-44d8-9c16-49473ae6bd5c',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'The basic phone is the need; the expensive one adds want features.',
  'El teléfono básico es la necesidad; el costoso agrega características de deseos.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'sections[0].title',
  'en',
  'es',
  'Comparing Prices',
  'Comparar Precios',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'sections[0].content',
  'en',
  'es',
  '# Finding the Best Deal

**Price comparison tips:**

1. **Check multiple stores** - Same item, different prices
2. **Use price comparison websites** - Google Shopping, CamelCamelCamel
3. **Consider unit price** - Price per ounce, per item
4. **Watch for sales cycles** - Electronics drop in price before new models

**Example:**
Cereal A: $4 for 12 oz = $0.33/oz
Cereal B: $5 for 18 oz = $0.28/oz

Cereal B is the better deal!',
  '# Encontrando la Mejor Oferta

**Consejos para comparar precios:**

1. **Revisa múltiples tiendas** - Mismo artículo, precios diferentes
2. **Usa sitios web de comparación de precios** - Google Shopping, CamelCamelCamel
3. **Considera el precio unitario** - Precio por onza, por artículo
4. **Observa los ciclos de ofertas** - Los productos electrónicos bajan de precio antes de los nuevos modelos

**Ejemplo:**
Cereal A: $4 por 12 oz = $0.33/oz
Cereal B: $5 por 18 oz = $0.28/oz

¡El Cereal B es la mejor oferta!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'sections[1].title',
  'en',
  'es',
  'Coupons and Discounts',
  'Cupones y Descuentos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'sections[1].content',
  'en',
  'es',
  '# Free Money Savers

**Where to find deals:**
- Store apps and loyalty programs
- Email newsletters
- Coupon websites (RetailMeNot, Honey)
- Student/senior discounts
- Cashback credit cards
- Buy-one-get-one (BOGO) offers

**Coupon rules:**
✅ Only use for things you actually need
❌ Don''t buy just because it''s on sale
✅ Stack coupons when possible
❌ Don''t let coupons expire unused

Saving $1 on something you don''t need = wasting money!',
  '# Formas Gratuitas de Ahorrar Dinero

**Dónde encontrar ofertas:**
- Aplicaciones de tiendas y programas de lealtad
- Boletines informativos por correo electrónico
- Sitios web de cupones (RetailMeNot, Honey)
- Descuentos para estudiantes/adultos mayores
- Tarjetas de crédito con reembolso
- Ofertas de lleva uno y lleva otro gratis (BOGO)

**Reglas para usar cupones:**
✅ Úsalos solo para cosas que realmente necesitas
❌ No compres solo porque está en oferta
✅ Combina cupones cuando sea posible
❌ No dejes que los cupones se venzan sin usarlos

¡Ahorrar $1 en algo que no necesitas = desperdiciar dinero!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'sections[2].title',
  'en',
  'es',
  'Avoiding Impulse Buys',
  'Evitar las Compras Impulsivas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'sections[2].content',
  'en',
  'es',
  '# Stop and Think First

**Impulse buying** = Buying without planning, usually emotionally

**How to resist:**

1. **The 24-hour rule** - Wait a day before buying wants
2. **Make a list** - Only buy what''s on the list
3. **Avoid shopping when emotional** - Sad, happy, or bored
4. **Unsubscribe from marketing emails**
5. **Leave credit cards at home** - Use cash for discretionary shopping
6. **Calculate cost in hours worked** - "$100 shoes = 5 hours of work. Worth it?"

**Store tricks to watch for:**
- Candy at checkout (temptation)
- "Limited time offer!" (false urgency)
- Sale signs everywhere (not always deals)
- Pleasant smells/music (makes you linger)',
  '# Detente y piensa primero

**Compra impulsiva** = Comprar sin planificar, usualmente de forma emocional

**Cómo resistir:**

1. **La regla de las 24 horas** - Espera un día antes de comprar deseos
2. **Haz una lista** - Solo compra lo que está en la lista
3. **Evita comprar cuando estés emocional** - Triste, feliz o aburrido
4. **Cancela la suscripción a correos de marketing**
5. **Deja las tarjetas de crédito en casa** - Usa efectivo para compras discrecionales
6. **Calcula el costo en horas trabajadas** - "¿$100 en zapatos = 5 horas de trabajo. ¿Vale la pena?"

**Trucos de las tiendas a los que debes prestar atención:**
- Dulces en la caja (tentación)
- "¡Oferta por tiempo limitado!" (urgencia falsa)
- Carteles de oferta por todas partes (no siempre son gangas)
- Aromas agradables/música (te hace quedarte más tiempo)',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[0].question',
  'en',
  'es',
  'What should you compare when shopping for the best deal?',
  '¿Qué debes comparar al buscar la mejor oferta?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Only the total price',
  'Solo el precio total',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Brand name only',
  'Solamente la marca',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Unit price and quality',
  'Precio unitario y calidad',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'The prettiest package',
  'El paquete más bonito',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Comparing unit price (price per unit) and quality gives you the best value.',
  'Comparar el precio unitario (precio por unidad) y la calidad te da el mejor valor.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[1].question',
  'en',
  'es',
  'What is the 24-hour rule?',
  '¿Qué es la regla de las 24 horas?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'Stores are open 24 hours',
  'Las tiendas están abiertas 24 horas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Wait a day before buying wants',
  'Espera un día antes de comprar deseos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Shop for 24 hours straight',
  'Comprar durante 24 horas seguidas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'Sales last 24 hours',
  'Las ofertas duran 24 horas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'The 24-hour rule means waiting a day to avoid impulse purchases.',
  'La regla de las 24 horas significa esperar un día para evitar compras impulsivas.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[2].question',
  'en',
  'es',
  'When should you use coupons?',
  '¿Cuándo deberías usar cupones?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'For everything on sale',
  'Para todo lo que esté en oferta',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Only for items you actually need',
  'Solo para artículos que realmente necesitas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Never',
  'Nunca',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Only on weekends',
  'Solo los fines de semana',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Coupons save money only if used for things you actually need.',
  'Los cupones ahorran dinero solo si se usan para cosas que realmente necesitas.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[3].question',
  'en',
  'es',
  'What is an impulse buy?',
  '¿Qué es una compra impulsiva?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'A planned purchase',
  'Una compra planificada',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Buying without planning, often emotionally',
  'Comprar sin planificar, frecuentemente de manera emocional',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Buying groceries',
  'Comprar alimentos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Using a coupon',
  'Usar un cupón',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '113416ff-e665-44cc-b3cc-a6777de4c761',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Impulse buying is unplanned purchasing driven by emotion rather than need.',
  'La compra impulsiva es una compra no planificada impulsada por la emoción en lugar de la necesidad.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'sections[0].title',
  'en',
  'es',
  'Price vs Quality',
  'Precio vs Calidad',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'sections[0].content',
  'en',
  'es',
  '# Good, Fast, Cheap - Pick Two

**Value = Quality ÷ Price**

**Sometimes expensive is worth it:**
- Shoes that last 5 years vs 6 months
- Durable tools vs ones that break
- Healthy food vs cheap junk food

**Sometimes cheap is fine:**
- Basic supplies (paper, pencils)
- Items you rarely use
- Trendy items that go out of style

**Example:**
$20 shoes (last 6 months) = $40/year
$80 shoes (last 3 years) = $27/year

Expensive shoes are actually cheaper!',
  '# Bueno, Rápido, Barato - Elige Dos

**Valor = Calidad ÷ Precio**

**A veces lo caro vale la pena:**
- Zapatos que duran 5 años vs 6 meses
- Herramientas duraderas vs las que se rompen
- Comida saludable vs comida chatarra barata

**A veces lo barato está bien:**
- Artículos básicos (papel, lápices)
- Artículos que usas raramente
- Artículos de moda que pasan de moda

**Ejemplo:**
Zapatos de $20 (duran 6 meses) = $40/año
Zapatos de $80 (duran 3 años) = $27/año

¡Los zapatos caros son en realidad más baratos!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'sections[1].title',
  'en',
  'es',
  'Long-term Cost',
  'Costo a largo plazo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'sections[1].content',
  'en',
  'es',
  '# Total Cost of Ownership

Look beyond the price tag!

**Consider:**
- Maintenance costs
- Repair costs
- Energy/fuel costs
- Lifespan
- Resale value

**Example: Two Cars**

**Car A: $15,000**
- Uses a lot of gas: $3,000/year
- Frequent repairs: $1,500/year
- 5 years = $15,000 + $22,500 = $37,500

**Car B: $22,000**
- Efficient gas use: $1,500/year
- Reliable, few repairs: $500/year
- 5 years = $22,000 + $10,000 = $32,000

Cheaper car actually costs $5,500 MORE!',
  '# Costo Total de Propiedad

¡Mira más allá del precio de etiqueta!

**Considera:**
- Costos de mantenimiento
- Costos de reparación
- Costos de energía/combustible
- Vida útil
- Valor de reventa

**Ejemplo: Dos Autos**

**Auto A: $15,000**
- Usa mucha gasolina: $3,000/año
- Reparaciones frecuentes: $1,500/año
- 5 años = $15,000 + $22,500 = $37,500

**Auto B: $22,000**
- Uso eficiente de gasolina: $1,500/año
- Confiable, pocas reparaciones: $500/año
- 5 años = $22,000 + $10,000 = $32,000

¡El auto más barato en realidad cuesta $5,500 MÁS!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'sections[2].title',
  'en',
  'es',
  'Brand vs Generic',
  'Marca vs Genérico',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'sections[2].content',
  'en',
  'es',
  '# When Brand Names Matter

**Generic/store brand often fine for:**
- Basic foods (flour, sugar, rice)
- Over-the-counter medicine (same ingredients)
- Cleaning supplies
- School supplies
- Basic clothing

**Brand might be worth it for:**
- Electronics (better support)
- Specialized tools
- Items with safety concerns
- Things you use daily

**How to decide:**
1. Check ingredients/materials
2. Read reviews
3. Try generic first
4. If generic works, stick with it!

Often, generic is made in the same factory as brand names!',
  '# Cuándo Importan las Marcas

**Los productos genéricos/de marca propia suelen ser buenos para:**
- Alimentos básicos (harina, azúcar, arroz)
- Medicamentos de venta libre (mismos ingredientes)
- Productos de limpieza
- Útiles escolares
- Ropa básica

**Las marcas pueden valer la pena para:**
- Electrónicos (mejor soporte)
- Herramientas especializadas
- Artículos con aspectos de seguridad
- Cosas que usas a diario

**Cómo decidir:**
1. Revisa ingredientes/materiales
2. Lee reseñas
3. Prueba lo genérico primero
4. ¡Si lo genérico funciona, quédate con eso!

¡A menudo, los productos genéricos se fabrican en la misma fábrica que las marcas!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[0].question',
  'en',
  'es',
  'What does "value" mean in shopping?',
  '¿Qué significa "valor" al hacer compras?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'The cheapest price',
  'El precio más barato',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Quality divided by price',
  'Calidad dividida por precio',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'The most expensive item',
  'El artículo más caro',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Brand name',
  'Marca reconocida',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Value is the balance between quality and price - best quality for the price paid.',
  'El valor es el equilibrio entre calidad y precio - la mejor calidad por el precio pagado.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[1].question',
  'en',
  'es',
  'Why might expensive shoes be a better value?',
  '¿Por qué unos zapatos costosos podrían ser una mejor inversión?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'They look better',
  'Se ven mejor',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'They last longer, costing less per year',
  'Duran más tiempo, costando menos por año',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Expensive is always better',
  'Caro siempre es mejor',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'They''re trendy',
  'Son de moda',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'If expensive shoes last much longer, the cost per year of use is often lower.',
  'Si los zapatos costosos duran mucho más tiempo, el costo por año de uso suele ser menor.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[2].question',
  'en',
  'es',
  'What is "total cost of ownership"?',
  '¿Qué es el "costo total de propiedad"?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Just the purchase price',
  'Solo el precio de compra',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'All costs including maintenance over time',
  'Todos los costos incluyendo el mantenimiento a lo largo del tiempo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'The price including tax',
  'El precio incluyendo impuestos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'What you can sell it for later',
  'Lo que puedes venderlo después',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Total cost includes purchase price plus all future costs like maintenance and fuel.',
  'El costo total incluye el precio de compra más todos los costos futuros como mantenimiento y combustible.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[3].question',
  'en',
  'es',
  'When is generic/store brand usually fine?',
  '¿Cuándo suele estar bien la marca genérica/de tienda?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'Never',
  'Nunca',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Always',
  'Siempre',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'For basic items like flour or medicine',
  'Para artículos básicos como harina o medicamentos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Only for food',
  'Solo para alimentos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '3b2fc54b-6810-4979-abad-7e78f0a53be8',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Generic brands often have the same quality as name brands for basic items.',
  'Las marcas genéricas a menudo tienen la misma calidad que las marcas reconocidas para artículos básicos.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'sections[0].title',
  'en',
  'es',
  'Marketing Tactics',
  'Tácticas de Marketing',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'sections[0].content',
  'en',
  'es',
  '# How Stores Make You Spend More

**Common tricks:**

1. **Anchor pricing:** "$200 $99!" - Makes $99 seem cheap
2. **Decoy pricing:** Small ($3), Medium ($5), Large ($5.50) - Everyone picks large
3. **Scarcity:** "Only 3 left!" - Creates false urgency
4. **Free shipping minimum:** "Free shipping over $50" - You spend $50 to save $5
5. **Bundles:** "Buy 3, save 10%" - You only needed 1

**How to resist:**
- Know your budget before shopping
- Research prices beforehand
- Don''t shop when emotional
- Question "deals" carefully',
  '# Cómo las tiendas te hacen gastar más

**Trucos comunes:**

1. **Precio de anclaje:** "¡$200 $99!" - Hace que $99 parezca barato
2. **Precio señuelo:** Pequeño ($3), Mediano ($5), Grande ($5.50) - Todos eligen el grande
3. **Escasez:** "¡Solo quedan 3!" - Crea urgencia falsa
4. **Mínimo para envío gratis:** "Envío gratis en compras mayores a $50" - Gastas $50 para ahorrar $5
5. **Paquetes:** "Compra 3 y ahorra 10%" - Solo necesitabas 1

**Cómo resistir:**
- Conoce tu presupuesto antes de comprar
- Investiga precios con anticipación
- No compres cuando estés emocional
- Cuestiona las "ofertas" cuidadosamente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'sections[1].title',
  'en',
  'es',
  'Subscription Traps',
  'Trampas de Suscripción',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'sections[1].content',
  'en',
  'es',
  '# The Slow Money Leak

**Subscription risks:**

**Free trials that aren''t free:**
- Require credit card
- Auto-renew after trial
- Hard to cancel
- You forget about them

**Monthly subscriptions add up:**
- Streaming: $15
- Music: $10
- Gaming: $15
- Software: $20
- Gym (unused): $40
- **Total: $100/month = $1,200/year!**

**Protection strategies:**
- Set calendar reminders for trial ends
- Review subscriptions monthly
- Use virtual cards that expire
- Ask yourself: "Used it this month? Keep it. Not used? Cancel it."
- Cancel immediately after free trials',
  '# La Fuga Lenta de Dinero

**Riesgos de las suscripciones:**

**Pruebas gratuitas que no son gratuitas:**
- Requieren tarjeta de crédito
- Se renuevan automáticamente después de la prueba
- Difíciles de cancelar
- Te olvidas de ellas

**Las suscripciones mensuales se acumulan:**
- Streaming: $15
- Música: $10
- Videojuegos: $15
- Software: $20
- Gimnasio (sin usar): $40
- **Total: $100/mes = $1,200/año!**

**Estrategias de protección:**
- Configura recordatorios en el calendario para cuando terminen las pruebas
- Revisa las suscripciones mensualmente
- Usa tarjetas virtuales que expiren
- Pregúntate: "¿Lo usé este mes? Consérvalo. ¿No lo usé? Cancélalo."
- Cancela inmediatamente después de las pruebas gratuitas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'sections[2].title',
  'en',
  'es',
  'Hidden Fees',
  'Tarifas Ocultas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'sections[2].content',
  'en',
  'es',
  '# Reading the Fine Print

**Watch out for:**

**Resort/Hotel fees:**
- Room: $100/night
- "Resort fee": $30/night
- Parking: $25/night
- **Real cost: $155/night!**

**Ticket fees:**
- Concert ticket: $50
- "Service charge": $15
- "Facility fee": $8
- **Real cost: $73**

**Banking fees:**
- Overdraft fees
- ATM fees
- Monthly maintenance fees
- Foreign transaction fees

**How to avoid:**
1. Read ALL terms before buying
2. Ask about total cost upfront
3. Look for "fee-free" alternatives
4. Calculate true cost before committing',
  '# Leyendo la Letra Pequeña

**Ten cuidado con:**

**Tarifas de resort/hotel:**
- Habitación: $100/noche
- "Tarifa de resort": $30/noche
- Estacionamiento: $25/noche
- **Costo real: $155/noche!**

**Tarifas de boletos:**
- Boleto de concierto: $50
- "Cargo por servicio": $15
- "Tarifa de instalaciones": $8
- **Costo real: $73**

**Tarifas bancarias:**
- Tarifas por sobregiro
- Tarifas de cajero automático
- Tarifas de mantenimiento mensual
- Tarifas por transacciones internacionales

**Cómo evitarlas:**
1. Lee TODOS los términos antes de comprar
2. Pregunta por el costo total por adelantado
3. Busca alternativas "sin tarifas"
4. Calcula el costo real antes de comprometerte',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[0].question',
  'en',
  'es',
  'What is "anchor pricing"?',
  '¿Qué es el "precio ancla"?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Selling boat anchors',
  'Vender anclas de barco',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Showing a high price crossed out to make sale price look better',
  'Mostrar un precio alto tachado para que el precio de oferta se vea mejor',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Giving discounts to sailors',
  'Dar descuentos a marineros',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Setting the lowest price',
  'Establecer el precio más bajo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Anchor pricing shows a high "original" price to make the sale price seem like a great deal.',
  'El precio ancla muestra un precio "original" alto para hacer que el precio de oferta parezca una gran oportunidad.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[1].question',
  'en',
  'es',
  'Why are "free trials" sometimes a trap?',
  '¿Por qué las "pruebas gratuitas" a veces son una trampa?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'They''re actually free',
  'Son realmente gratis',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'They auto-renew and charge your card',
  'Se renuevan automáticamente y cobran a tu tarjeta',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'They give you free stuff',
  'Te dan cosas gratis',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'They''re illegal',
  'Son ilegales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Free trials often auto-renew into paid subscriptions that charge your card.',
  'Las pruebas gratuitas a menudo se renuevan automáticamente en suscripciones pagadas que cargan tu tarjeta.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[2].question',
  'en',
  'es',
  'If you have 5 subscriptions at $15 each, how much per year?',
  'Si tienes 5 suscripciones a $15 cada una, ¿cuánto pagas al año?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  '$75',
  '$75',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  '$180',
  '$180',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  '$900',
  '$900',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  '$750',
  '$750',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[2].explanation',
  'en',
  'es',
  '5 × $15 = $75/month × 12 months = $900/year.',
  '5 × $15 = $75/mes × 12 meses = $900/año.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[3].question',
  'en',
  'es',
  'What are "hidden fees"?',
  '¿Qué son los "cargos ocultos"?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'Illegal charges',
  'Cargos ilegales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Additional costs not shown in advertised price',
  'Costos adicionales no mostrados en el precio anunciado',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Fees for hiding things',
  'Tarifas por esconder cosas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Discounts',
  'Descuentos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Hidden fees are extra costs added on top of the advertised price.',
  'Las tarifas ocultas son costos adicionales que se agregan al precio anunciado.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[4].question',
  'en',
  'es',
  'Best way to avoid subscription traps:',
  'Mejor manera de evitar trampas de suscripción:',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[4].options[0]',
  'en',
  'es',
  'Never subscribe to anything',
  'Nunca suscribirse a nada',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[4].options[1]',
  'en',
  'es',
  'Review and cancel unused subscriptions regularly',
  'Revisar y cancelar suscripciones no utilizadas regularmente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[4].options[2]',
  'en',
  'es',
  'Subscribe to everything',
  'Suscribirse a todo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[4].options[3]',
  'en',
  'es',
  'Ignore your bank statements',
  'Ignorar tus estados de cuenta bancarios',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '5f5b4583-e170-4021-aef1-dcb5863d2c09',
  'quiz.questions[4].explanation',
  'en',
  'es',
  'Regularly reviewing subscriptions helps you cancel ones you don''t use.',
  'Revisar regularmente las suscripciones te ayuda a cancelar aquellas que no usas.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'sections[0].title',
  'en',
  'es',
  'Emergency Fund',
  'Fondo de Emergencia',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'sections[0].content',
  'en',
  'es',
  '# Preparing for the Unexpected

**Emergency fund** = Money saved for unexpected problems

**Why you need it:**
- Car breaks down: $500 repair
- Medical emergency: $1,000 bill
- Job loss: Need 3-6 months expenses
- Home repair: Broken water heater

**Without emergency fund:**
- Go into debt (credit cards, loans)
- Can''t pay bills
- Stress and worry

**With emergency fund:**
- Handle problems calmly
- No debt needed
- Peace of mind

**Goal:** 3-6 months of living expenses',
  '# Preparándose para lo Inesperado

**Fondo de emergencia** = Dinero ahorrado para problemas inesperados

**Por qué lo necesitas:**
- El auto se descompone: reparación de $500
- Emergencia médica: cuenta de $1,000
- Pérdida de empleo: Necesitas gastos de 3-6 meses
- Reparación del hogar: Calentador de agua descompuesto

**Sin fondo de emergencia:**
- Te endeudas (tarjetas de crédito, préstamos)
- No puedes pagar las cuentas
- Estrés y preocupación

**Con fondo de emergencia:**
- Manejas los problemas con calma
- No necesitas endeudarte
- Tranquilidad mental

**Meta:** 3-6 meses de gastos de vida',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'sections[1].title',
  'en',
  'es',
  'Future Goals',
  'Metas Futuras',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'sections[1].content',
  'en',
  'es',
  '# Saving for What You Want

**Short-term goals (< 1 year):**
- New phone
- Birthday party
- School trip
- Holiday gifts

**Medium-term goals (1-5 years):**
- Car
- College
- Wedding
- Home down payment

**Long-term goals (5+ years):**
- Retirement
- Children''s education
- Dream vacation
- Starting a business

Saving lets you afford your dreams without debt!',
  '# Ahorrar para lo que Quieres

**Metas a corto plazo (< 1 año):**
- Teléfono nuevo
- Fiesta de cumpleaños
- Viaje escolar
- Regalos de festividades

**Metas a mediano plazo (1-5 años):**
- Automóvil
- Universidad
- Boda
- Cuota inicial de una vivienda

**Metas a largo plazo (5+ años):**
- Jubilación
- Educación de los hijos
- Vacaciones soñadas
- Iniciar un negocio

¡Ahorrar te permite alcanzar tus sueños sin deudas!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'sections[2].title',
  'en',
  'es',
  'Financial Security',
  'Seguridad Financiera',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'sections[2].content',
  'en',
  'es',
  '# Peace of Mind

**Financial security means:**
- Not living paycheck to paycheck
- Can handle emergencies
- Not stressed about money
- Freedom to make choices
- Can help others

**Benefits of saving:**
1. **Freedom** - Say no to bad jobs
2. **Opportunities** - Take chances on dreams
3. **Less stress** - Sleep better at night
4. **Independence** - Don''t rely on others
5. **Future you** - Will thank present you!

"Don''t save what''s left after spending; spend what''s left after saving." - Warren Buffett',
  '# Tranquilidad Mental

**La seguridad financiera significa:**
- No vivir de quincena en quincena
- Poder manejar emergencias
- No estar estresado por el dinero
- Libertad para tomar decisiones
- Poder ayudar a otros

**Beneficios de ahorrar:**
1. **Libertad** - Decir no a malos empleos
2. **Oportunidades** - Aprovechar oportunidades para cumplir sueños
3. **Menos estrés** - Dormir mejor por la noche
4. **Independencia** - No depender de otros
5. **Tu yo futuro** - ¡Te lo agradecerá!

"No ahorres lo que queda después de gastar; gasta lo que queda después de ahorrar." - Warren Buffett',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[0].question',
  'en',
  'es',
  'What is an emergency fund?',
  '¿Qué es un fondo de emergencia?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Money for vacations',
  'Dinero para vacaciones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Money saved for unexpected problems',
  'Dinero ahorrado para problemas inesperados',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Money for shopping',
  'Dinero para compras',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Money you never touch',
  'Dinero que nunca tocas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'An emergency fund is savings set aside for unexpected expenses or emergencies.',
  'Un fondo de emergencia es dinero ahorrado que se reserva para gastos inesperados o emergencias.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[1].question',
  'en',
  'es',
  'How many months of expenses should an emergency fund cover?',
  '¿Cuántos meses de gastos debe cubrir un fondo de emergencia?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  '1 week',
  '1 semana',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  '1 month',
  '1 mes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  '3-6 months',
  '3-6 meses',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  '10 years',
  '10 años',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Financial experts recommend 3-6 months of living expenses for emergencies.',
  'Los expertos financieros recomiendan tener ahorros equivalentes a 3-6 meses de gastos de vida para emergencias.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[2].question',
  'en',
  'es',
  'Which is a short-term savings goal?',
  '¿Cuál es una meta de ahorro a corto plazo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Retirement',
  'Jubilación',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'College in 10 years',
  'Universidad en 10 años',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'New video game in 3 months',
  'Videojuego nuevo en 3 meses',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Buying a house',
  'Comprar una casa',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Short-term goals are things you want to buy within a year.',
  'Los objetivos a corto plazo son cosas que quieres comprar en un plazo de un año.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[3].question',
  'en',
  'es',
  'What does Warren Buffett say about saving?',
  '¿Qué dice Warren Buffett sobre el ahorro?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'Spend first, save what''s left',
  'Gasta primero, ahorra lo que sobre',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Save first, spend what''s left',
  'Ahorra primero, gasta lo que sobra',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Never save anything',
  'Nunca ahorres nada',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Save everything',
  'Ahorra todo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'be722ff4-5b5e-4683-8a43-c05d1a3e5ebb',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Buffett advises to save first (pay yourself first), then spend what remains.',
  'Buffett aconseja ahorrar primero (págate a ti mismo primero), luego gastar lo que queda.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'sections[0].title',
  'en',
  'es',
  'SMART Goals',
  'Metas SMART',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'sections[0].content',
  'en',
  'es',
  '# Setting Goals That Work

**SMART = Specific, Measurable, Achievable, Relevant, Time-bound**

❌ Bad goal: "Save more money"
✅ SMART goal: "Save $1,200 for a new laptop by December 31st"

**Breaking it down:**
- **Specific:** New laptop
- **Measurable:** $1,200
- **Achievable:** $100/month for 12 months
- **Relevant:** Need for school/work
- **Time-bound:** By December 31st

**How to make SMART goals:**
1. Decide exactly what you want
2. Research the cost
3. Set a deadline
4. Calculate monthly savings needed
5. Make sure it''s realistic for your income',
  '# Estableciendo Metas que Funcionan

**SMART = Específica, Medible, Alcanzable, Relevante, con Plazo definido**

❌ Meta mala: "Ahorrar más dinero"
✅ Meta SMART: "Ahorrar $1,200 para una computadora portátil nueva para el 31 de diciembre"

**Desglosándola:**
- **Específica:** Computadora portátil nueva
- **Medible:** $1,200
- **Alcanzable:** $100/mes durante 12 meses
- **Relevante:** Necesaria para la escuela/trabajo
- **con Plazo definido:** Para el 31 de diciembre

**Cómo crear metas SMART:**
1. Decide exactamente qué quieres
2. Investiga el costo
3. Establece una fecha límite
4. Calcula el ahorro mensual necesario
5. Asegúrate de que sea realista para tus ingresos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'sections[1].title',
  'en',
  'es',
  'Short-term vs Long-term',
  'Corto plazo vs Largo plazo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'sections[1].content',
  'en',
  'es',
  '# Different Goals, Different Strategies

**Short-term (< 1 year):**
- Keep in savings account
- Easy access
- Lower risk
- Examples: New bike, concert tickets

**Medium-term (1-5 years):**
- High-yield savings or CDs
- Some growth, still accessible
- Low-medium risk
- Examples: Car, college, wedding

**Long-term (5+ years):**
- Can invest in stocks/bonds
- Higher growth potential
- Medium-high risk (time to recover losses)
- Examples: Retirement, house

Match your savings strategy to your timeline!',
  '# Diferentes Metas, Diferentes Estrategias

**Corto plazo (< 1 año):**
- Mantener en cuenta de ahorros
- Fácil acceso
- Menor riesgo
- Ejemplos: Bicicleta nueva, boletos para concierto

**Mediano plazo (1-5 años):**
- Ahorros de alto rendimiento o certificados de depósito
- Algo de crecimiento, aún accesible
- Riesgo bajo-medio
- Ejemplos: Auto, universidad, boda

**Largo plazo (5+ años):**
- Se puede invertir en acciones/bonos
- Mayor potencial de crecimiento
- Riesgo medio-alto (tiempo para recuperar pérdidas)
- Ejemplos: Jubilación, casa

¡Adapta tu estrategia de ahorro a tu plazo de tiempo!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'sections[2].title',
  'en',
  'es',
  'Tracking Progress',
  'Seguimiento del Progreso',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'sections[2].content',
  'en',
  'es',
  '# Stay Motivated

**Ways to track:**

1. **Visual trackers:**
   - Savings thermometer
   - Coloring chart (color in $10 increments)
   - Photo of goal item as phone wallpaper

2. **Apps and spreadsheets:**
   - Mint, YNAB, Personal Capital
   - Simple Excel/Google Sheets
   - Banking app savings goals

3. **Physical methods:**
   - Separate jar/envelope for each goal
   - Move money to separate account
   - Weekly check-ins with accountability partner

**Celebrate milestones:**
- 25% saved: Small treat
- 50% saved: Tell a friend
- 75% saved: Plan how you''ll use it
- 100%: Achievement unlocked! 🎉',
  '# Mantén la Motivación

**Formas de hacer seguimiento:**

1. **Rastreadores visuales:**
   - Termómetro de ahorros
   - Tabla para colorear (colorea incrementos de $10)
   - Foto del artículo objetivo como fondo de pantalla del teléfono

2. **Aplicaciones y hojas de cálculo:**
   - Mint, YNAB, Personal Capital
   - Excel/Google Sheets simple
   - Metas de ahorro en la aplicación del banco

3. **Métodos físicos:**
   - Frasco/sobre separado para cada meta
   - Transferir dinero a una cuenta separada
   - Revisiones semanales con un compañero de rendición de cuentas

**Celebra los hitos:**
- 25% ahorrado: Pequeño premio
- 50% ahorrado: Cuéntale a un amigo
- 75% ahorrado: Planifica cómo lo usarás
- 100%: ¡Logro desbloqueado! 🎉',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[0].question',
  'en',
  'es',
  'What does SMART goals stand for?',
  '¿Qué significa la sigla SMART para las metas?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Simple, Money, Achievable, Real, Timely',
  'Simple, Dinero, Alcanzable, Real, Oportuno',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Specific, Measurable, Achievable, Relevant, Time-bound',
  'Específico, Medible, Alcanzable, Relevante, con Tiempo definido',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Save, Make, Acquire, Reach, Total',
  'Ahorrar, Hacer, Adquirir, Alcanzar, Total',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Spend, Manage, Allocate, Record, Track',
  'Gastar, Manejar, Asignar, Registrar, Rastrear',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'SMART is an acronym for Specific, Measurable, Achievable, Relevant, Time-bound.',
  'SMART es un acrónimo de Específico, Medible, Alcanzable, Relevante, con Tiempo límite.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[1].question',
  'en',
  'es',
  'For a goal 8 years away, where should you keep the money?',
  'Para una meta a 8 años de distancia, ¿dónde deberías guardar el dinero?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'Under your mattress',
  'Debajo de tu colchón',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'In your wallet',
  'En tu billetera',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Can invest in stocks for growth',
  'Puede invertir en acciones para crecimiento',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'In a piggy bank',
  'En una alcancía',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Long-term goals (5+ years) can be invested for higher growth potential.',
  'Las metas a largo plazo (5+ años) pueden invertirse para obtener un mayor potencial de crecimiento.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[2].question',
  'en',
  'es',
  'If you want to save $600 in 6 months, how much per month?',
  'Si quieres ahorrar $600 en 6 meses, ¿cuánto por mes?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  '$50',
  '$50',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  '$100',
  '$100',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  '$150',
  '$150',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  '$200',
  '$200',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[2].explanation',
  'en',
  'es',
  '$600 ÷ 6 months = $100 per month.',
  '$600 ÷ 6 meses = $100 por mes.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[3].question',
  'en',
  'es',
  'Why is tracking progress important?',
  '¿Por qué es importante dar seguimiento al progreso?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'It''s not important',
  'No es importante',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Helps you stay motivated and on track',
  'Te ayuda a mantenerte motivado y en el camino correcto',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Required by law',
  'Requerido por ley',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Banks force you to',
  'Los bancos te obligan a',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '39b8e772-03e3-4b0b-8f2a-98d6f61b386e',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Tracking progress keeps you motivated and helps ensure you reach your goal.',
  'Hacer seguimiento del progreso te mantiene motivado y ayuda a asegurar que alcances tu meta.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'sections[0].title',
  'en',
  'es',
  'Savings Accounts',
  'Cuentas de Ahorro',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'sections[0].content',
  'en',
  'es',
  '# Basic Savings at Banks

**Savings account features:**
- Earn interest (usually 0.01% to 0.50%)
- FDIC insured (up to $250,000)
- Easy access to money
- Low/no minimum balance
- May have withdrawal limits

**When to use:**
- Emergency fund
- Short-term goals
- Money you might need soon

**Tip:** Some accounts have fees if balance is too low. Choose fee-free accounts!',
  '# Ahorros Básicos en Bancos

**Características de la cuenta de ahorros:**
- Gana intereses (usualmente 0.01% a 0.50%)
- Asegurada por la FDIC (hasta $250,000)
- Fácil acceso al dinero
- Saldo mínimo bajo o nulo
- Puede tener límites de retiro

**Cuándo usar:**
- Fondo de emergencia
- Metas a corto plazo
- Dinero que podrías necesitar pronto

**Consejo:** Algunas cuentas cobran comisiones si el saldo es muy bajo. ¡Elige cuentas sin comisiones!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'sections[1].title',
  'en',
  'es',
  'Interest Rates',
  'Tasas de Interés',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'sections[1].content',
  'en',
  'es',
  '# How Your Money Grows

**Interest** = Money the bank pays you for keeping money there

**Example:**
- Save $1,000
- Interest rate: 5% per year
- After 1 year: $1,050
- After 2 years: $1,102.50 (compound interest!)

**Compound interest** = Earning interest on your interest

**Where to find higher interest:**
- Online banks (1% to 5%+)
- High-yield savings accounts
- Certificates of Deposit (CDs)
- Money market accounts

**Compare rates** - Small differences = big difference over time!

At 1%: $1,000 → $1,104 in 10 years
At 5%: $1,000 → $1,629 in 10 years',
  '# Cómo Crece Tu Dinero

**Interés** = Dinero que el banco te paga por mantener tu dinero allí

**Ejemplo:**
- Ahorras $1,000
- Tasa de interés: 5% por año
- Después de 1 año: $1,050
- Después de 2 años: $1,102.50 (¡interés compuesto!)

**Interés compuesto** = Ganar interés sobre tu interés

**Dónde encontrar interés más alto:**
- Bancos en línea (1% a 5%+)
- Cuentas de ahorro de alto rendimiento
- Certificados de Depósito (CDs)
- Cuentas del mercado monetario

**Compara las tasas** - ¡Pequeñas diferencias = gran diferencia con el tiempo!

Al 1%: $1,000 → $1,104 en 10 años
Al 5%: $1,000 → $1,629 en 10 años',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'sections[2].title',
  'en',
  'es',
  'Bank vs Credit Union',
  'Banco vs Cooperativa de Crédito',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'sections[2].content',
  'en',
  'es',
  '# Where to Open an Account

**Banks:**
- For-profit companies
- More locations and ATMs
- Better technology/apps
- Lower interest rates usually
- Examples: Chase, Bank of America

**Credit Unions:**
- Non-profit, member-owned
- Higher interest rates
- Lower fees
- Fewer locations
- May require membership
- Examples: Navy Federal, Local credit unions

**Both are safe** - FDIC (banks) or NCUA (credit unions) insured

**Choosing:**
- Need branches/ATMs? → Bank
- Want better rates? → Credit Union
- Can use online banking? → Online bank (best rates)',
  '# Dónde Abrir una Cuenta

**Bancos:**
- Empresas con fines de lucro
- Más ubicaciones y cajeros automáticos
- Mejor tecnología/aplicaciones
- Tasas de interés más bajas generalmente
- Ejemplos: Chase, Bank of America

**Cooperativas de Crédito:**
- Sin fines de lucro, propiedad de los miembros
- Tasas de interés más altas
- Tarifas más bajas
- Menos ubicaciones
- Pueden requerir membresía
- Ejemplos: Navy Federal, cooperativas de crédito locales

**Ambos son seguros** - asegurados por FDIC (bancos) o NCUA (cooperativas de crédito)

**Para Elegir:**
- ¿Necesitas sucursales/cajeros automáticos? → Banco
- ¿Quieres mejores tasas? → Cooperativa de Crédito
- ¿Puedes usar banca en línea? → Banco en línea (mejores tasas)',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[0].question',
  'en',
  'es',
  'What is FDIC insurance?',
  '¿Qué es el seguro de la FDIC?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Car insurance',
  'Seguro de automóvil',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Protection for bank deposits up to $250,000',
  'Protección para depósitos bancarios hasta $250,000',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Health insurance',
  'Seguro de salud',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'A type of savings account',
  'Una clase de cuenta de ahorros',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'FDIC insurance protects your bank deposits up to $250,000 if the bank fails.',
  'El seguro de la FDIC protege tus depósitos bancarios hasta $250,000 si el banco quiebra.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[1].question',
  'en',
  'es',
  'What is compound interest?',
  '¿Qué es el interés compuesto?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'Flat interest rate',
  'Tasa de interés fija',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Interest earned on both principal and previous interest',
  'Interés ganado sobre el capital inicial y los intereses previos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Interest you pay on loans',
  'Interés que pagas por préstamos',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'No interest',
  'Sin interés',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Compound interest means you earn interest on your interest, accelerating growth.',
  'El interés compuesto significa que ganas intereses sobre tus intereses, acelerando el crecimiento.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[2].question',
  'en',
  'es',
  'Where typically find the highest interest rates?',
  '¿Dónde se suelen encontrar las tasas de interés más altas?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Traditional bank branches',
  'Sucursales bancarias tradicionales',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Under your mattress',
  'Debajo de tu colchón',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Online banks and credit unions',
  'Bancos en línea y cooperativas de crédito',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Piggy banks',
  'Alcancías',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Online banks and credit unions often offer higher interest rates than traditional banks.',
  'Los bancos en línea y las cooperativas de crédito a menudo ofrecen tasas de interés más altas que los bancos tradicionales.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[3].question',
  'en',
  'es',
  'If you save $100 at 4% interest for 1 year, how much will you have?',
  'Si ahorras $100 al 4% de interés durante 1 año, ¿cuánto tendrás?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  '$100',
  '$100',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  '$104',
  '$104',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  '$400',
  '$400',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  '$140',
  '$140',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'cd864aa8-ed00-4126-b30e-61d94eb0f6f9',
  'quiz.questions[3].explanation',
  'en',
  'es',
  '$100 + ($100 × 0.04) = $104.',
  '$100 + ($100 × 0,04) = $104.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'sections[0].title',
  'en',
  'es',
  'Pay Yourself First',
  'Págate a Ti Mismo Primero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'sections[0].content',
  'en',
  'es',
  '# The Golden Rule of Saving

**"Pay yourself first"** = Save before spending on anything else

**How it works:**

❌ Old way:
1. Receive paycheck
2. Pay bills
3. Buy stuff
4. Save whatever is left (usually $0)

✅ New way:
1. Receive paycheck
2. **Immediately save 10-20%**
3. Pay bills
4. Buy stuff with what''s left

**Why it works:**
- Treats savings as a bill (non-negotiable)
- You adjust spending to what''s left
- Savings actually happen

"Don''t save what is left after spending; spend what is left after saving."',
  '# La Regla de Oro del Ahorro

**"Págate a ti mismo primero"** = Ahorra antes de gastar en cualquier otra cosa

**Cómo funciona:**

❌ Forma antigua:
1. Recibir el salario
2. Pagar las cuentas
3. Comprar cosas
4. Ahorrar lo que queda (usualmente $0)

✅ Forma nueva:
1. Recibir el salario
2. **Ahorrar inmediatamente el 10-20%**
3. Pagar las cuentas
4. Comprar cosas con lo que queda

**Por qué funciona:**
- Trata el ahorro como una cuenta (no negociable)
- Ajustas tus gastos a lo que queda
- El ahorro realmente sucede

"No ahorres lo que queda después de gastar; gasta lo que queda después de ahorrar."',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'sections[1].title',
  'en',
  'es',
  'Automatic Transfers',
  'Transferencias Automáticas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'sections[1].content',
  'en',
  'es',
  '# Set It and Forget It

**Automatic savings** = Money moves to savings without you doing anything

**How to set up:**

1. **Payroll split:**
   - Ask employer to deposit % to savings
   - Rest goes to checking
   - Happens every paycheck

2. **Bank auto-transfer:**
   - Set up recurring transfer
   - Every payday, $X moves to savings
   - Can adjust or pause anytime

3. **Save on a schedule:**
   - Weekly: Easier psychologically
   - Bi-weekly: Match paycheck schedule
   - Monthly: Simple, larger amounts

**Benefits:**
- No willpower needed
- No forgetting
- Consistent progress
- "Out of sight, out of mind"',
  '# Configúralo y Olvídate

**Ahorro automático** = El dinero se transfiere a ahorros sin que hagas nada

**Cómo configurarlo:**

1. **División de nómina:**
   - Solicita a tu empleador que deposite un % en ahorros
   - El resto va a cuenta corriente
   - Ocurre con cada pago de nómina

2. **Transferencia automática bancaria:**
   - Configura una transferencia recurrente
   - Cada día de pago, $X se transfiere a ahorros
   - Puedes ajustar o pausar en cualquier momento

3. **Ahorra según un calendario:**
   - Semanal: Más fácil psicológicamente
   - Quincenal: Coincide con el calendario de pago
   - Mensual: Simple, montos mayores

**Beneficios:**
- No se necesita fuerza de voluntad
- No se te olvida
- Progreso consistente
- "Ojos que no ven, corazón que no siente"',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'sections[2].title',
  'en',
  'es',
  'Round-up Apps',
  'Aplicaciones de Redondeo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'sections[2].content',
  'en',
  'es',
  '# Painless Micro-Savings

**Round-up apps** = Round purchases to nearest dollar, save the difference

**How they work:**

You buy coffee: $4.50
App rounds to: $5.00
Saves difference: $0.50

10 purchases × $0.50 avg = $5/day = $150/month!

**Popular apps:**
- Acorns
- Digit
- Qapital
- Chime (has this feature)
- Many banks offer this

**Other micro-saving tricks:**
- Save all $5 bills you receive
- Save all coins at end of day
- Save tax refund immediately
- Save bonuses/gifts before spending
- Save raises (increase auto-transfer when salary increases)

**Key:** Start small! $1/day = $365/year',
  '# Micro-ahorros sin dolor

**Apps de redondeo** = Redondean compras al dólar más cercano, ahorran la diferencia

**Cómo funcionan:**

Compras café: $4.50
App redondea a: $5.00
Ahorra la diferencia: $0.50

10 compras × $0.50 promedio = $5/día = $150/mes!

**Apps populares:**
- Acorns
- Digit
- Qapital
- Chime (tiene esta función)
- Muchos bancos ofrecen esto

**Otros trucos de micro-ahorro:**
- Ahorra todos los billetes de $5 que recibas
- Ahorra todas las monedas al final del día
- Ahorra el reembolso de impuestos inmediatamente
- Ahorra bonos/regalos antes de gastar
- Ahorra los aumentos (incrementa la transferencia automática cuando aumente el salario)

**Clave:** ¡Empieza pequeño! $1/día = $365/año',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[0].question',
  'en',
  'es',
  'What does "pay yourself first" mean?',
  '¿Qué significa "págate a ti primero"?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  'Buy things for yourself',
  'Comprar cosas para ti mismo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  'Save money before paying bills',
  'Ahorrar dinero antes de pagar las cuentas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  'Give yourself a paycheck',
  'Darte un sueldo a ti mismo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  'Save money before spending on other things',
  'Ahorrar dinero antes de gastarlo en otras cosas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Pay yourself first means saving a portion of income before spending on anything else.',
  'Pagarte a ti mismo primero significa ahorrar una parte de tus ingresos antes de gastar en cualquier otra cosa.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[1].question',
  'en',
  'es',
  'What is automatic savings?',
  '¿Qué es el ahorro automático?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'Money that appears magically',
  'Dinero que aparece mágicamente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Automatic transfers from checking to savings',
  'Transferencias automáticas de cuenta corriente a ahorros',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Savings that grow automatically',
  'Ahorros que crecen automáticamente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'A type of bank account',
  'Una cuenta bancaria',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'Automatic savings is when money automatically transfers from checking to savings.',
  'El ahorro automático es cuando el dinero se transfiere automáticamente de la cuenta corriente a la cuenta de ahorros.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[2].question',
  'en',
  'es',
  'How do round-up apps work?',
  '¿Cómo funcionan las aplicaciones de redondeo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  'Round down your balance',
  'Redondean hacia abajo tu saldo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  'Round purchases up and save the difference',
  'Redondean las compras hacia arriba y ahorran la diferencia',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  'Give you money',
  'Te dan dinero',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  'Round your interest',
  'Redondean tus intereses',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[2].explanation',
  'en',
  'es',
  'Round-up apps round each purchase up to the nearest dollar and save the difference.',
  'Las aplicaciones de redondeo redondean cada compra al dólar más cercano y ahorran la diferencia.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[3].question',
  'en',
  'es',
  'If a round-up app saves $0.50 per transaction and you make 200 transactions/month, how much saved?',
  'Si una aplicación de redondeo ahorra $0.50 por transacción y realizas 200 transacciones/mes, ¿cuánto ahorras?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  '$50',
  '$50',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  '$100',
  '$100',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  '$150',
  '$150',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  '$200',
  '$200',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '72ecbef6-7613-45ac-909b-295e02fb9f5f',
  'quiz.questions[3].explanation',
  'en',
  'es',
  '200 transactions × $0.50 = $100 saved per month.',
  '200 transacciones × $0.50 = $100 ahorrados por mes.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'sections[0].title',
  'en',
  'es',
  'How Much to Save',
  '¿Cuánto ahorrar?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'sections[0].content',
  'en',
  'es',
  '# Your Emergency Fund Target

**Standard recommendation: 3-6 months of expenses**

**Calculate your number:**

1. List monthly expenses:
   - Rent/mortgage: $1,000
   - Utilities: $150
   - Food: $400
   - Transportation: $200
   - Insurance: $150
   - Other essentials: $100
   - **Total: $2,000/month**

2. Multiply by 3-6:
   - Minimum: $6,000
   - Ideal: $12,000

**Factors to consider:**
- Job stability (unstable = 6+ months)
- Income sources (single income = more needed)
- Health (medical issues = more needed)
- Dependents (kids = more needed)',
  '# Tu Meta de Fondo de Emergencia

**Recomendación estándar: 3-6 meses de gastos**

**Calcula tu número:**

1. Lista de gastos mensuales:
   - Alquiler/hipoteca: $1,000
   - Servicios públicos: $150
   - Comida: $400
   - Transporte: $200
   - Seguro: $150
   - Otros gastos esenciales: $100
   - **Total: $2,000/mes**

2. Multiplica por 3-6:
   - Mínimo: $6,000
   - Ideal: $12,000

**Factores a considerar:**
- Estabilidad laboral (inestable = 6+ meses)
- Fuentes de ingreso (ingreso único = se necesita más)
- Salud (problemas médicos = se necesita más)
- Dependientes (hijos = se necesita más)',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'sections[1].title',
  'en',
  'es',
  'When to Use It',
  'Cuándo usarlo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'sections[1].content',
  'en',
  'es',
  '# True Emergencies Only

**Use emergency fund for:**

✅ **True emergencies:**
- Job loss
- Medical emergency
- Essential home repair (water heater, furnace)
- Essential car repair (can''t get to work)
- Family emergency

❌ **NOT emergencies:**
- Sale on TV
- Vacation
- New clothes
- Eating out
- Non-essential upgrades
- "I really want it"

**Rule of thumb:**
Ask: "If I don''t spend this money, will something bad happen?"
- Yes = Emergency
- No = Not an emergency

Having separate "fun money" helps avoid dipping into emergency fund!',
  '# Solo Emergencias Verdaderas

**Usa el fondo de emergencia para:**

✅ **Emergencias verdaderas:**
- Pérdida de empleo
- Emergencia médica
- Reparación esencial del hogar (calentador de agua, caldera)
- Reparación esencial del auto (no puedes llegar al trabajo)
- Emergencia familiar

❌ **NO son emergencias:**
- Oferta en un televisor
- Vacaciones
- Ropa nueva
- Salir a comer
- Mejoras no esenciales
- "Realmente lo quiero"

**Regla general:**
Pregunta: "Si no gasto este dinero, ¿pasará algo malo?"
- Sí = Emergencia
- No = No es una emergencia

¡Tener "dinero para diversión" por separado ayuda a evitar usar el fondo de emergencia!',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'sections[2].title',
  'en',
  'es',
  'Rebuilding After Use',
  'Reconstruyendo Después de Usar',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'sections[2].content',
  'en',
  'es',
  '# Getting Back on Track

**If you use your emergency fund:**

**1. Don''t feel guilty!**
- That''s what it''s for
- You planned ahead correctly
- Be proud you had it

**2. Pause other savings temporarily:**
- Focus on rebuilding emergency fund first
- Other goals can wait
- Emergency fund = priority #1

**3. Rebuild as fast as reasonably possible:**
- Start immediately (even $20 helps)
- Use any windfalls (tax refund, bonus)
- Temporarily cut discretionary spending
- Consider side income

**4. Review what happened:**
- Was it preventable?
- Need more insurance?
- Need bigger emergency fund?
- Adjust plan accordingly

**Example rebuild plan:**
- Used: $2,000
- Income: $3,000/month
- Can save: $500/month
- Rebuilt in: 4 months',
  '# Retomando el Camino

**Si usas tu fondo de emergencia:**

**1. ¡No te sientas culpable!**
- Para eso está
- Planificaste correctamente con anticipación
- Siéntete orgulloso de haberlo tenido

**2. Pausa otros ahorros temporalmente:**
- Enfócate primero en reconstruir el fondo de emergencia
- Otras metas pueden esperar
- Fondo de emergencia = prioridad #1

**3. Reconstruye tan rápido como sea razonablemente posible:**
- Comienza inmediatamente (incluso $20 ayuda)
- Usa cualquier ingreso extra (devolución de impuestos, bonificación)
- Reduce temporalmente gastos discrecionales
- Considera ingresos adicionales

**4. Revisa qué sucedió:**
- ¿Era prevenible?
- ¿Necesitas más seguro?
- ¿Necesitas un fondo de emergencia más grande?
- Ajusta tu plan según corresponda

**Ejemplo de plan de reconstrucción:**
- Usado: $2,000
- Ingreso: $3,000/mes
- Puedes ahorrar: $500/mes
- Reconstruido en: 4 meses',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[0].question',
  'en',
  'es',
  'How many months of expenses should an emergency fund cover?',
  '¿Cuántos meses de gastos debería cubrir un fondo de emergencia?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[0].options[0]',
  'en',
  'es',
  '1 week',
  '1 semana',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[0].options[1]',
  'en',
  'es',
  '1 month',
  '1 mes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[0].options[2]',
  'en',
  'es',
  '3-6 months',
  '3-6 meses',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[0].options[3]',
  'en',
  'es',
  '10 years',
  '10 años',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[0].explanation',
  'en',
  'es',
  'Financial experts recommend 3-6 months of living expenses.',
  'Los expertos financieros recomiendan tener ahorros para cubrir entre 3 y 6 meses de gastos de vida.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[1].question',
  'en',
  'es',
  'Which is a TRUE emergency for using your emergency fund?',
  '¿Cuál es una emergencia VERDADERA para usar tu fondo de emergencia?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[1].options[0]',
  'en',
  'es',
  'TV is on sale',
  'TV en oferta',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[1].options[1]',
  'en',
  'es',
  'Want to go on vacation',
  'Querer ir de vacaciones',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[1].options[2]',
  'en',
  'es',
  'Car breaks down and you can''t get to work',
  'El auto se descompone y no puedes llegar al trabajo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[1].options[3]',
  'en',
  'es',
  'New video game release',
  'Lanzamiento de un nuevo videojuego',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[1].explanation',
  'en',
  'es',
  'A car needed for work is a true emergency. Other examples are wants.',
  'Un automóvil necesario para el trabajo es una verdadera emergencia. Los otros ejemplos son deseos.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[2].question',
  'en',
  'es',
  'If your monthly expenses are $2,500, what''s a minimum emergency fund?',
  'Si tus gastos mensuales son $2,500, ¿cuál es el fondo de emergencia mínimo?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[2].options[0]',
  'en',
  'es',
  '$2,500',
  '$2,500',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[2].options[1]',
  'en',
  'es',
  '$5,000',
  '$5,000',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[2].options[2]',
  'en',
  'es',
  '$7,500',
  '$7,500',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[2].options[3]',
  'en',
  'es',
  '$25,000',
  '$25,000',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[2].explanation',
  'en',
  'es',
  '3 months × $2,500 = $7,500 minimum.',
  '3 meses × $2,500 = $7,500 mínimo.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[3].question',
  'en',
  'es',
  'After using emergency fund, what should you do?',
  'Después de usar el fondo de emergencia, ¿qué deberías hacer?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[3].options[0]',
  'en',
  'es',
  'Forget about it',
  'Olvidarte de ello',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[3].options[1]',
  'en',
  'es',
  'Immediately rebuild it',
  'Reconstruirlo inmediatamente',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[3].options[2]',
  'en',
  'es',
  'Wait a year to rebuild',
  'Esperar un año para reconstruirlo',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[3].options[3]',
  'en',
  'es',
  'Use it for other things',
  'Usarlo para otras cosas',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[3].explanation',
  'en',
  'es',
  'Rebuild your emergency fund as soon as possible after using it.',
  'Reconstruye tu fondo de emergencia lo antes posible después de usarlo.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[4].question',
  'en',
  'es',
  'Why might someone need 6+ months of expenses saved?',
  '¿Por qué alguien podría necesitar ahorrar gastos de 6+ meses?',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[4].options[0]',
  'en',
  'es',
  'They like big numbers',
  'Les gustan los números grandes',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[4].options[1]',
  'en',
  'es',
  'Unstable job or single income household',
  'Trabajo inestable o hogar con un solo ingreso',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[4].options[2]',
  'en',
  'es',
  'Banks require it',
  'Los bancos lo requieren',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[4].options[3]',
  'en',
  'es',
  'Everyone needs exactly 6 months',
  'Todos necesitan exactamente 6 meses',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  'a0116417-9d22-479e-9a4e-c2b4848050bf',
  'quiz.questions[4].explanation',
  'en',
  'es',
  'Less stable situations warrant larger emergency funds for more protection.',
  'Las situaciones menos estables requieren fondos de emergencia más grandes para mayor protección.',
  '2026-01-06T01:00:52.314Z',
  '2027-01-06T01:00:52.314Z'
);

-- ========================================
-- VERIFICATION
-- ========================================
SELECT 'Translation completed for es!' as message;
SELECT COUNT(*) as total_translations
FROM "ContentTranslation"
WHERE target_language = 'es';
