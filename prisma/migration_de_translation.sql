-- Multilingual Translation Migration
-- Inserts translations into ContentTranslation table

-- STEP 1: Drop foreign key constraints to allow insertion
ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_lesson_fkey";

ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_game_fkey";

DELETE FROM "ContentTranslation"
WHERE target_language = 'de';

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
  'de',
  'Introduction',
  'Einleitung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# What is Money?

Money is what we use to buy things we need and want. It''s a tool that makes trading easier!

**For Kids:** Money is like tickets at an arcade - you exchange them for prizes!

**For Adults:** Money serves as a medium of exchange, eliminating the inefficiencies of barter systems.',
  '# Was ist Geld?

Geld ist das, was wir benutzen, um Dinge zu kaufen, die wir brauchen und wollen. Es ist ein Werkzeug, das den Handel einfacher macht!

**Für Kinder:** Geld ist wie Spielmarken in einer Spielhalle - du tauschst sie gegen Preise ein!

**Für Erwachsene:** Geld dient als Tauschmittel und beseitigt die Ineffizienzen von Tauschhandelssystemen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'History of Money',
  'Geschichte des Geldes',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# How Money Started

Long ago, people traded items directly - like trading 5 apples for 1 chicken. This was called **bartering**.

But bartering had problems:
- What if you had apples but the other person didn''t want them?
- How many apples equal one chicken?

So humans invented money to solve these problems!',
  '# Wie Geld entstand

Vor langer Zeit tauschten Menschen Gegenstände direkt - wie zum Beispiel 5 Äpfel gegen 1 Huhn. Dies nannte man **Tauschhandel**.

Aber der Tauschhandel hatte Probleme:
- Was ist, wenn du Äpfel hattest, aber die andere Person sie nicht wollte?
- Wie viele Äpfel entsprechen einem Huhn?

Also erfanden die Menschen Geld, um diese Probleme zu lösen!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why We Use Money',
  'Warum wir Geld verwenden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Why Money is Useful

Money makes life easier because:

1. **Store of Value** - You can save it for later
2. **Unit of Account** - Everything has a clear price
3. **Medium of Exchange** - Everyone accepts it

Instead of carrying around chickens and apples, you carry money!',
  '# Warum Geld nützlich ist

Geld macht das Leben einfacher, weil:

1. **Wertaufbewahrungsmittel** - Du kannst es für später sparen
2. **Recheneinheit** - Alles hat einen klaren Preis
3. **Tauschmittel** - Jeder akzeptiert es

Anstatt Hühner und Äpfel mit dir herumzutragen, trägst du Geld bei dir!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Modern Money',
  'Modernes Geld',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Money Today

Today, money comes in many forms:
- **Physical:** Coins and bills you can touch
- **Digital:** Money in bank accounts and apps
- **Cryptocurrency:** New digital money on the internet

Most people use a mix of all three types!',
  '# Geld heute

Heute gibt es Geld in vielen Formen:
- **Physisch:** Münzen und Scheine, die du anfassen kannst
- **Digital:** Geld auf Bankkonten und in Apps
- **Kryptowährung:** Neues digitales Geld im Internet

Die meisten Menschen nutzen eine Mischung aus allen drei Arten!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is the main purpose of money?',
  'Was ist der Hauptzweck von Geld?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'To make trading easier',
  'Um den Handel zu erleichtern',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'To be pretty',
  'Um hübsch auszusehen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'To collect',
  'Zum Sammeln',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'To burn',
  'Zum Verbrennen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money was invented to make trading goods and services easier than bartering.',
  'Geld wurde erfunden, um den Handel mit Waren und Dienstleistungen einfacher zu machen als Tauschhandel.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What was the old way of trading before money?',
  'Was war die alte Art des Handelns vor dem Geld?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Selling',
  'Verkaufen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Bartering',
  'Tauschhandel',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Giving away',
  'Verschenken',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Stealing',
  'Stehlen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Bartering means trading items directly, like 5 apples for 1 chicken.',
  'Tauschhandel bedeutet, Gegenstände direkt zu tauschen, zum Beispiel 5 Äpfel gegen 1 Huhn.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which is NOT a form of modern money?',
  'Welches ist KEINE Form von modernem Geld?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Digital money',
  'Digitales Geld',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Coins',
  'Münzen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Rocks',
  'Steine',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Cryptocurrency',
  'Kryptowährung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'While some ancient cultures used special rocks as money, regular rocks are not modern currency.',
  'Obwohl einige alte Kulturen besondere Steine als Geld verwendeten, sind normale Steine keine moderne Währung.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money helps us "store value" means:',
  'Geld hilft uns, „Wert zu speichern" bedeutet:',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'We can save it for later',
  'Wir können es für später sparen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'We must spend it now',
  'Wir müssen es jetzt ausgeben',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It loses value quickly',
  'Es verliert schnell an Wert',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It takes up space',
  'Es nimmt Platz weg',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Storing value means money keeps its worth over time so you can save it.',
  'Wertaufbewahrung bedeutet, dass Geld seinen Wert über die Zeit behält, sodass du es sparen kannst.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Coins and Bills',
  'Münzen und Geldscheine',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Physical Money

**Coins** are made of metal and usually worth less. They''re good for small purchases like candy or parking meters.

**Bills (Banknotes)** are made of paper or plastic and worth more. They''re lighter and easier to carry than lots of coins.

💡 Fun fact: The ink and paper for bills cost less than 10 cents, but the bill might be worth $100!',
  '# Physisches Geld

**Münzen** bestehen aus Metall und haben normalerweise einen geringeren Wert. Sie eignen sich gut für kleine Einkäufe wie Süßigkeiten oder Parkuhren.

**Geldscheine (Banknoten)** bestehen aus Papier oder Plastik und haben einen höheren Wert. Sie sind leichter und einfacher zu transportieren als viele Münzen.

💡 Wissenswertes: Die Tinte und das Papier für Geldscheine kosten weniger als 10 Cent, aber der Schein kann 100 $ wert sein!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Digital Money',
  'Digitales Geld',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Money You Can''t Touch

Most money today is **digital** - it exists as numbers in a computer!

Examples:
- Money in your bank account
- Payment apps like PayPal, Venmo
- Credit card payments
- Mobile wallets like Apple Pay

You never touch this money, but you can still spend it!',
  '# Geld, das du nicht anfassen kannst

Das meiste Geld ist heute **digital** - es existiert als Zahlen in einem Computer!

Beispiele:
- Geld auf deinem Bankkonto
- Bezahl-Apps wie PayPal, Venmo
- Kreditkartenzahlungen
- Mobile Geldbörsen wie Apple Pay

Du kannst dieses Geld nie anfassen, aber du kannst es trotzdem ausgeben!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Cryptocurrency Basics',
  '# Grundlagen der Kryptowährung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Eine neue Art von Geld

**Kryptowährung** ist digitales Geld, das Computercode verwendet, um Transaktionen zu sichern.

Bekannteste Beispiele:
- Bitcoin (BTC)
- Ethereum (ETH)

**Hauptunterschiede:**
- Keine Regierung kontrolliert es
- Funktioniert in allen Ländern
- Sehr sicher, aber kann riskant sein
- Preise ändern sich stark!

⚠️ Für Anfänger gilt: Bleiben Sie bei normalem Geld, bis Sie mehr gelernt haben!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What are coins usually made of?',
  'Woraus werden Münzen üblicherweise hergestellt?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Paper',
  'Papier',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Metal',
  'Metall',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Plastic',
  'Plastik',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Wood',
  'Holz',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Coins are made of metal, which makes them durable and hard to counterfeit.',
  'Münzen bestehen aus Metall, was sie langlebig und schwer zu fälschen macht.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which is an example of digital money?',
  'Welches ist ein Beispiel für digitales Geld?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A $10 bill',
  'Ein 10-Dollar-Schein',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A quarter',
  'Ein Vierteldollar',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Your bank account balance',
  'Dein Kontostand',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Gold bars',
  'Goldbarren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Bank account balances are digital money - they exist as electronic records.',
  'Kontoguthaben sind digitales Geld - sie existieren als elektronische Aufzeichnungen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is true about cryptocurrency?',
  'Was stimmt über Kryptowährung?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It is controlled by governments',
  'Es wird von Regierungen kontrolliert',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It never changes in value',
  'Es verändert sich nie im Wert',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It uses computer code for security',
  'Es verwendet Computercode für die Sicherheit',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'You can hold it in your hand',
  'Du kannst es in der Hand halten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Cryptocurrency uses advanced computer code (cryptography) to secure transactions.',
  'Kryptowährung verwendet fortgeschrittenen Computercode (Kryptographie), um Transaktionen zu sichern.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why is digital money convenient?',
  'Warum ist digitales Geld bequem?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'You can carry large amounts easily',
  'Sie können große Mengen leicht mit sich führen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It weighs a lot',
  'Es wiegt viel',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It can get wet',
  'Es kann nass werden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'You must count it manually',
  'Sie müssen es manuell zählen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Digital money is convenient because you can have millions in your account without physical storage.',
  'Digitales Geld ist praktisch, weil du Millionen auf deinem Konto haben kannst, ohne es physisch aufbewahren zu müssen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Supply and Demand',
  'Angebot und Nachfrage',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# What Makes Money Valuable?

Money has value because of **supply and demand**:

**Supply** = How much money exists
**Demand** = How many people want it

If everyone wants dollars and there aren''t many, dollars are valuable.
If there are too many dollars, each one is worth less.

Think of it like rare trading cards - rare cards are more valuable!',
  '# Was macht Geld wertvoll?

Geld hat Wert aufgrund von **Angebot und Nachfrage**:

**Angebot** = Wie viel Geld existiert
**Nachfrage** = Wie viele Menschen es haben wollen

Wenn alle Dollars haben wollen und es nicht viele gibt, sind Dollars wertvoll.
Wenn es zu viele Dollars gibt, ist jeder einzelne weniger wert.

Denk daran wie bei seltenen Sammelkarten - seltene Karten sind wertvoller!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Government Role',
  'Rolle der Regierung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Who Controls Money?

Governments and central banks control how much money exists:

- **Print too much** = Money becomes less valuable (inflation)
- **Print too little** = Hard to do business (deflation)

They try to keep the amount "just right" so the economy stays healthy.

This is why you can''t just print money at home - it would make money worthless!',
  '# Wer kontrolliert Geld?

Regierungen und Zentralbanken kontrollieren, wie viel Geld existiert:

- **Zu viel drucken** = Geld wird weniger wertvoll (Inflation)
- **Zu wenig drucken** = Geschäfte zu machen wird schwierig (Deflation)

Sie versuchen, die Menge genau richtig zu halten, damit die Wirtschaft gesund bleibt.

Deshalb kannst du nicht einfach zu Hause Geld drucken - es würde Geld wertlos machen!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Trust in Money',
  'Vertrauen in Geld',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Why We Trust Money

Money only works if people trust it!

We trust money because:
1. The government says it''s legal
2. Stores accept it
3. We can pay taxes with it
4. It has security features (hard to fake)

If people stopped trusting it, money would become just paper or numbers.',
  '# Warum wir Geld vertrauen

Geld funktioniert nur, wenn die Menschen ihm vertrauen!

Wir vertrauen Geld, weil:
1. Die Regierung es für rechtsgültig erklärt
2. Geschäfte es akzeptieren
3. Wir damit Steuern bezahlen können
4. Es Sicherheitsmerkmale hat (schwer zu fälschen)

Wenn die Menschen aufhören würden, ihm zu vertrauen, würde Geld zu bloßem Papier oder Zahlen werden.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What happens if a government prints too much money?',
  'Was passiert, wenn eine Regierung zu viel Geld druckt?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Everyone becomes rich',
  'Jeder wird reich',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money becomes less valuable',
  'Geld wird weniger wertvoll',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money becomes more valuable',
  'Geld wird wertvoller',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Nothing changes',
  'Nichts ändert sich',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Printing too much money causes inflation - each dollar is worth less.',
  'Das Drucken von zu viel Geld verursacht Inflation - jeder Dollar ist weniger wert.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Supply and demand means:',
  'Angebot und Nachfrage bedeutet:',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How much exists and how many want it',
  'Wie viel vorhanden ist und wie viele es haben wollen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Where to buy things',
  'Wo man Dinge kaufen kann',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How to save money',
  'Wie man Geld spart',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Types of currency',
  'Arten von Währung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Supply is how much exists, demand is how many people want it.',
  'Angebot ist, wie viel vorhanden ist, Nachfrage ist, wie viele Menschen es wollen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why can''t you just print your own money?',
  'Warum kannst du nicht einfach dein eigenes Geld drucken?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It would make all money worthless',
  'Es würde alles Geld wertlos machen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Printers are expensive',
  'Drucker sind teuer',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Paper is hard to find',
  'Papier ist schwer zu finden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'You can, it''s allowed',
  'Du kannst es, es ist erlaubt',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If everyone could print money, there would be too much supply and it would lose value.',
  'Wenn jeder Geld drucken könnte, gäbe es zu viel davon und es würde seinen Wert verlieren.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money has value primarily because:',
  'Geld hat hauptsächlich Wert, weil:',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s pretty',
  'Es ist hübsch',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'People trust and accept it',
  'Menschen ihm vertrauen und es akzeptieren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s made of precious materials',
  'Es aus wertvollen Materialien hergestellt ist',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s rare',
  'Es ist selten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money''s value comes from collective trust and acceptance in society.',
  'Der Wert von Geld entsteht durch kollektives Vertrauen und gesellschaftliche Akzeptanz.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What role do governments play with money?',
  'Welche Rolle spielen Regierungen beim Geld?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They determine fashion trends',
  'Sie bestimmen Modetrends',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They control the supply',
  'Sie kontrollieren die Geldmenge',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They force you to spend',
  'Sie zwingen dich zum Ausgeben',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Nothing at all',
  'Gar keine Rolle',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Governments and central banks control how much money is in circulation.',
  'Regierungen und Zentralbanken kontrollieren, wie viel Geld im Umlauf ist.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Major Currencies',
  'Wichtige Währungen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# World Money

Different countries use different money!

**Major World Currencies:**
- 🇺🇸 US Dollar (USD) - Most widely used
- 🇪🇺 Euro (EUR) - Used in many European countries
- 🇬🇧 British Pound (GBP) - Used in United Kingdom
- 🇯🇵 Japanese Yen (JPY) - Used in Japan
- 🇨🇳 Chinese Yuan (CNY) - Used in China

Each has its own symbol and value!',
  '# Weltgeld

Verschiedene Länder verwenden unterschiedliches Geld!

**Wichtige Weltwährungen:**
- 🇺🇸 US-Dollar (USD) - Am weitesten verbreitet
- 🇪🇺 Euro (EUR) - Wird in vielen europäischen Ländern verwendet
- 🇬🇧 Britisches Pfund (GBP) - Wird im Vereinigten Königreich verwendet
- 🇯🇵 Japanischer Yen (JPY) - Wird in Japan verwendet
- 🇨🇳 Chinesischer Yuan (CNY) - Wird in China verwendet

Jede hat ihr eigenes Symbol und ihren eigenen Wert!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Exchange Rates',
  'Wechselkurse',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Geldwechsel zwischen Ländern

**Wechselkurse** sagen dir, wie viel eine Währung in einer anderen wert ist.

Beispiel:
1 USD = 0,85 EUR

Das bedeutet, ein US-Dollar kann gegen 0,85 Euro getauscht werden.

**Wechselkurse ändern sich täglich** basierend auf:
- Wie stark jede Wirtschaft ist
- Zinssätze
- Politische Stabilität
- Angebot und Nachfrage',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'International Trade',
  'Internationaler Handel',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Why Exchange Rates Matter

When countries trade with each other, they need to exchange currencies:

- A US company buying products from Japan needs Yen
- A European tourist in America needs Dollars
- Online shopping from other countries requires conversion

**Strong currency** = Your money buys more in other countries
**Weak currency** = Your money buys less abroad

This affects travel, shopping, and business!',
  '# Warum Wechselkurse wichtig sind

Wenn Länder miteinander handeln, müssen sie Währungen tauschen:

- Ein US-Unternehmen, das Produkte aus Japan kauft, braucht Yen
- Ein europäischer Tourist in Amerika braucht Dollar
- Online-Shopping aus anderen Ländern erfordert eine Umrechnung

**Starke Währung** = Dein Geld kann mehr in anderen Ländern kaufen
**Schwache Währung** = Dein Geld kann im Ausland weniger kaufen

Das beeinflusst Reisen, Einkaufen und Geschäfte!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is the currency used in most European countries?',
  'Was ist die Währung, die in den meisten europäischen Ländern verwendet wird?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Dollar',
  'Dollar',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Euro',
  'Euro',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Pound',
  'Pfund',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Peso',
  'Peso',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'The Euro (EUR) is used by 20 European Union countries.',
  'Der Euro (EUR) wird von 20 Ländern der Europäischen Union verwendet.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What does an exchange rate tell you?',
  'Was sagt dir ein Wechselkurs?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How fast money grows',
  'Wie schnell Geld wächst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Where to shop',
  'Wo man einkaufen kann',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How much one currency is worth in another',
  'Wie viel eine Währung in einer anderen wert ist',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How to save money',
  'Wie man Geld spart',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Exchange rates show the value of one currency compared to another.',
  'Wechselkurse zeigen den Wert einer Währung im Vergleich zu einer anderen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If 1 USD = 100 JPY, how many yen is $5?',
  'Wenn 1 USD = 100 JPY ist, wie viele Yen sind 5 $?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '50 yen',
  '50 Yen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '100 yen',
  '100 Yen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '500 yen',
  '500 Yen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '5 yen',
  '5 Yen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '5 dollars × 100 yen per dollar = 500 yen.',
  '5 Dollar × 100 Yen pro Dollar = 500 Yen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'When would you need to exchange currency?',
  'Wann müsstest du Geld umtauschen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Traveling to another country',
  'Reisen in ein anderes Land',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Shopping at local stores',
  'Beim Einkaufen in lokalen Geschäften',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Paying bills at home',
  'Rechnungen zu Hause bezahlen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Saving money',
  'Geld sparen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'You need to exchange currency when traveling abroad or buying from international sellers.',
  'Du musst Währungen umtauschen, wenn du ins Ausland reist oder bei internationalen Händlern einkaufst.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What makes a currency "strong"?',
  'Was macht eine Währung „stark"?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s made of strong materials',
  'Es besteht aus robusten Materialien',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It buys more in other countries',
  'Es kauft mehr in anderen Ländern',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s heavy',
  'Es ist schwer',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s colorful',
  'Es ist farbenfroh',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A strong currency has high purchasing power in international markets.',
  'Eine starke Währung hat eine hohe Kaufkraft auf internationalen Märkten.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is Inflation',
  'Was ist Inflation',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Wenn Dinge teurer werden

**Inflation** bedeutet, dass die Preise im Laufe der Zeit steigen.

Beispiel:
- 1990: Ein Schokoriegel kostete 0,50 €
- 2025: Derselbe Schokoriegel kostet 1,50 €

Dein Geld kann weniger kaufen als früher!

**Warum das passiert:**
- Mehr Geld im Umlauf
- Höhere Nachfrage nach Produkten
- Gestiegene Produktionskosten

Eine gewisse Inflation (2-3% pro Jahr) ist normal und gesund.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How Inflation Affects You',
  '# Wie Inflation dich betrifft',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Dein Geld verliert an Wert

**Kaufkraft** = Was du mit deinem Geld kaufen kannst

Bei Inflation:
- 100 € heute kaufen mehr als 100 € nächstes Jahr
- Ersparnisse verlieren an Wert, wenn sie nur im Glas liegen
- Gehälter müssen steigen, um mitzuhalten

**Beispiel:**
Wenn die Inflation 3% pro Jahr beträgt:
- 100 € heute = 97 € Kaufkraft nächstes Jahr
- 100 € heute = 94 € Kaufkraft in 2 Jahren

Deshalb sagen Großeltern „zu meiner Zeit war alles billiger" - das stimmte auch!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Protecting Against Inflation',
  '# Schutz vor Inflation',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Wie man Inflation bekämpft

Lass nicht zu, dass die Inflation dein Geld auffrisst! So geht''s:

**1. Geld auf Sparkonten mit Zinsen anlegen**
- Zinsen helfen dem Geld zu wachsen
- Gleicht einen Teil der Inflation aus

**2. In Aktien, Anleihen oder Immobilien investieren**
- Diese wachsen oft schneller als die Inflation
- Riskanter, aber schützt die Kaufkraft

**3. Dein Einkommen erhöhen**
- Um Gehaltserhöhungen bitten
- Neue Fähigkeiten erlernen
- Ein Nebengewerbe starten

**4. Klug haushalten**
- Verfolgen, wohin das Geld fließt
- Bessere Angebote finden
- Unnötige Ausgaben reduzieren

Denk daran: Bargeld unter deiner Matratze verliert jedes Jahr an Wert!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is inflation?',
  'Was ist Inflation?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'When prices go down',
  'Wenn die Preise sinken',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'When prices go up over time',
  'Wenn die Preise im Laufe der Zeit steigen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'When money is printed',
  'Wenn Geld gedruckt wird',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'When people save money',
  'Wenn Menschen Geld sparen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Inflation is the general increase in prices over time.',
  'Inflation ist der allgemeine Anstieg der Preise im Laufe der Zeit.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If inflation is 5% and you have $100 in cash for a year, what happens?',
  'Wenn die Inflation 5% beträgt und du ein Jahr lang 100 $ in bar hast, was passiert?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'You can buy 5% more',
  'Du kannst 5% mehr kaufen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'You can buy the same amount',
  'Du kannst die gleiche Menge kaufen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'You can buy 5% less',
  'Du kannst 5% weniger kaufen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Your money disappears',
  'Dein Geld verschwindet',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'With 5% inflation, your $100 loses 5% of purchasing power.',
  'Bei 5 % Inflation verlieren Ihre 100 $ 5 % an Kaufkraft.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why do prices tend to increase over time?',
  'Warum steigen die Preise im Laufe der Zeit tendenziell an?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Stores want more profit only',
  'Geschäfte wollen nur mehr Gewinn',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Due to inflation and increased costs',
  'Aufgrund von Inflation und gestiegenen Kosten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Because money becomes stronger',
  'Weil Geld stärker wird',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s random',
  'Es ist zufällig',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Prices increase due to inflation, which comes from various economic factors.',
  'Preise steigen aufgrund von Inflation, die aus verschiedenen wirtschaftlichen Faktoren entsteht.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is a good way to protect against inflation?',
  'Was ist ein guter Weg, um sich gegen Inflation zu schützen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Hide cash under your mattress',
  'Bargeld unter der Matratze verstecken',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Spend all your money immediately',
  'Gib dein ganzes Geld sofort aus',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Invest in assets that grow',
  'Investiere in Vermögenswerte, die wachsen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Do nothing',
  'Nichts tun',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Investing in growing assets helps maintain or increase purchasing power.',
  'Investitionen in wachsende Vermögenswerte helfen, die Kaufkraft zu erhalten oder zu steigern.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is "purchasing power"?',
  'Was ist „Kaufkraft"?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How strong you are',
  'Wie stark du bist',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What you can buy with your money',
  'Was du mit deinem Geld kaufen kannst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Your job title',
  'Deine Berufsbezeichnung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How much money you earn',
  'Wie viel Geld du verdienst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Purchasing power is what your money can actually buy.',
  'Kaufkraft ist das, was man mit seinem Geld tatsächlich kaufen kann.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Is some inflation considered normal?',
  'Gilt etwas Inflation als normal?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'No, inflation is always bad',
  'Nein, Inflation ist immer schlecht',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Yes, 2-3% annual inflation is normal',
  'Ja, 2-3% jährliche Inflation ist normal',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Only in poor countries',
  'Nur in armen Ländern',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Inflation never happens',
  'Inflation passiert niemals',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Moderate inflation of 2-3% per year is normal and indicates economic growth.',
  'Moderate Inflation von 2-3% pro Jahr ist normal und zeigt wirtschaftliches Wachstum an.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Jobs and Careers',
  'Berufe und Karrieren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Working for Money

**Active income** = Money you earn by working

Types of jobs:
- **Employee:** Work for a company (steady paycheck)
- **Freelancer:** Work for yourself (multiple clients)
- **Contractor:** Work on specific projects

**For kids:** Chores, lawn mowing, pet sitting
**For adults:** Full-time jobs, part-time work, consulting',
  '# Für Geld arbeiten

**Aktives Einkommen** = Geld, das du durch Arbeit verdienst

Arten von Jobs:
- **Angestellter:** Arbeit für ein Unternehmen (regelmäßiges Gehalt)
- **Freiberufler:** Arbeit für dich selbst (mehrere Auftraggeber)
- **Auftragnehmer:** Arbeit an bestimmten Projekten

**Für Kinder:** Hausarbeiten, Rasenmähen, Haustierbetreuung
**Für Erwachsene:** Vollzeitjobs, Teilzeitarbeit, Beratung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Self-Employment',
  'Selbstständigkeit',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Being Your Own Boss

**Self-employment** means working for yourself!

Examples:
- Start a small business
- Offer services (tutoring, cleaning, design)
- Sell products online
- Create content (YouTube, blog)

**Pros:** Flexibility, unlimited earning potential
**Cons:** No steady paycheck, more responsibility',
  '# Dein eigener Chef sein

**Selbstständigkeit** bedeutet, für sich selbst zu arbeiten!

Beispiele:
- Ein kleines Unternehmen gründen
- Dienstleistungen anbieten (Nachhilfe, Reinigung, Design)
- Produkte online verkaufen
- Inhalte erstellen (YouTube, Blog)

**Vorteile:** Flexibilität, unbegrenztes Verdienstpotenzial
**Nachteile:** Kein festes Gehalt, mehr Verantwortung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Passive Income',
  'Passives Einkommen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '# Money While You Sleep

**Passive income** = Earning money without active work

Examples:
- Rental properties (rent from tenants)
- Investments (dividends from stocks)
- Royalties (from books, music, patents)
- Online courses (sell once, earn forever)

Note: Usually requires upfront work or money to start!',
  '# Geld im Schlaf verdienen

**Passives Einkommen** = Geld verdienen ohne aktive Arbeit

Beispiele:
- Mietobjekte (Miete von Mietern)
- Investitionen (Dividenden aus Aktien)
- Lizenzgebühren (aus Büchern, Musik, Patenten)
- Online-Kurse (einmal verkaufen, für immer verdienen)

Hinweis: Erfordert normalerweise anfängliche Arbeit oder Geld zum Start!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is active income?',
  'Was ist aktives Einkommen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money earned by working',
  'Geld, das durch Arbeit verdient wird',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money earned while sleeping',
  'Geld, das im Schlaf verdient wird',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money from investments',
  'Geld aus Investitionen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money found on the street',
  'Geld, das auf der Straße gefunden wird',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Active income is money earned through active work and effort.',
  'Aktives Einkommen ist Geld, das durch aktive Arbeit und Anstrengung verdient wird.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which is an example of passive income?',
  'Welches ist ein Beispiel für passives Einkommen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Your salary from a job',
  'Dein Gehalt aus einem Job',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Payment for mowing a lawn',
  'Bezahlung für das Rasenmähen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Rent from a property you own',
  'Mieteinnahmen aus einer Immobilie, die dir gehört',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Allowance from parents',
  'Taschengeld von den Eltern',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Rental income is passive - you earn it without active daily work.',
  'Mieteinnahmen sind passiv – du verdienst sie ohne aktive tägliche Arbeit.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What does self-employment mean?',
  'Was bedeutet Selbstständigkeit?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Working for a big company',
  'Für ein großes Unternehmen arbeiten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Working for yourself',
  'Für sich selbst arbeiten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Being unemployed',
  'Arbeitslos sein',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Working part-time',
  'Teilzeitarbeit',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Self-employment means you are your own boss and work for yourself.',
  'Selbstständigkeit bedeutet, dass du dein eigener Chef bist und für dich selbst arbeitest.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which is true about passive income?',
  'Welche Aussage über passives Einkommen ist richtig?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It requires no effort ever',
  'Es erfordert niemals Aufwand',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Anyone can start immediately with no money',
  'Jeder kann sofort ohne Geld beginnen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It often requires upfront work or investment',
  'Es erfordert oft anfängliche Arbeit oder Investitionen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It always earns more than active income',
  'Es verdient immer mehr als aktives Einkommen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Passive income streams usually require initial work or capital to establish.',
  'Passive Einkommensströme erfordern in der Regel anfängliche Arbeit oder Kapital, um sie aufzubauen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Gross vs Net Income',
  '# Bruttoeinkommen vs. Nettoeinkommen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Wie viel verdienst du wirklich?

**Bruttogehalt** = Gesamtbetrag vor allen Abzügen
**Nettogehalt** = Geld, das du tatsächlich ausgezahlt bekommst (nach Steuern und Abzügen)

Beispiel:
- Brutto: 1.000 €
- Steuern: -200 €
- Krankenversicherung: -50 €
- Altersvorsorge: -50 €
- **Netto (Auszahlungsbetrag): 700 €**

Konzentriere dich beim Budgetieren immer auf das Nettogehalt!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Salary vs Hourly',
  'Gehalt vs Stundenlohn',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Zwei Arten der Bezahlung

**Gehalt:**
- Fester Betrag pro Jahr
- Beispiel: 50.000 €/Jahr
- Jeden Monat derselbe Gehaltscheck
- Beinhaltet oft zusätzliche Leistungen

**Stundenlohn:**
- Bezahlung pro gearbeiteter Stunde
- Beispiel: 15 €/Stunde
- Gehaltscheck variiert je nach Arbeitsstunden
- Eventuell Überstundenzuschlag (1,5-facher oder 2-facher Satz)

Keine Variante ist „besser" - es hängt vom Job ab!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Benefits and Bonuses',
  'Zusatzleistungen und Prämien',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Mehr als nur Geld

**Zusatzleistungen** = Zusätzliche Vergütung über das Gehalt hinaus

Übliche Zusatzleistungen:
- Krankenversicherung
- Rentenbeiträge (Arbeitgeberzuschuss zur Altersvorsorge)
- Bezahlte Urlaubstage
- Krankheitstage
- Berufliche Weiterbildung

**Prämien:**
- Zusätzliche Zahlungen für gute Leistungen
- Weihnachtsgeld
- Provision (umsatzbasierte Vergütung)
- Gewinnbeteiligung

Zusatzleistungen können 20-30% deines Gehalts ausmachen!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is net income?',
  'Was ist das Nettoeinkommen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Total income before deductions',
  'Gesamteinkommen vor Abzügen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money you take home after deductions',
  'Geld, das du nach Abzügen mit nach Hause nimmst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money from the internet',
  'Geld aus dem Internet',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Bonus payments',
  'Bonuszahlungen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Net income is what you actually receive after taxes and deductions.',
  'Nettoeinkommen ist das, was du tatsächlich nach Abzug von Steuern und Abgaben erhältst.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If your gross income is $2,000 and $400 is deducted, what is your net income?',
  'Wenn dein Bruttoeinkommen 2.000 $ beträgt und 400 $ abgezogen werden, wie hoch ist dein Nettoeinkommen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$2,400',
  '$2.400',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$2,000',
  '$2.000',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$1,600',
  '$1.600',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$400',
  '$400',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Net income = Gross - Deductions = $2,000 - $400 = $1,600.',
  'Nettoeinkommen = Brutto - Abzüge = 2.000 $ - 400 $ = 1.600 $.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is a benefit of hourly pay?',
  'Was ist ein Vorteil von Stundenlohn?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Same paycheck every month',
  'Gleiches Gehalt jeden Monat',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Can earn overtime pay',
  'Kann Überstundenvergütung verdienen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Always includes health insurance',
  'Beinhaltet immer eine Krankenversicherung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Never changes',
  'Ändert sich nie',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Hourly workers often earn overtime (extra pay) for working extra hours.',
  'Stundenlohnempfänger erhalten oft Überstundenvergütung (zusätzliche Bezahlung) für zusätzlich geleistete Arbeitsstunden.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which is NOT typically a job benefit?',
  'Welches ist NICHT typischerweise eine Leistung des Arbeitgebers?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Health insurance',
  'Krankenversicherung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Paid vacation',
  'Bezahlter Urlaub',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Free groceries',
  'Kostenlose Lebensmittel',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '401k matching',
  '401k-Matching',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Free groceries are not a standard job benefit, unlike insurance or retirement contributions.',
  'Kostenlose Lebensmittel sind keine übliche Arbeitgeberleistung, im Gegensatz zu Versicherungen oder Rentenbeiträgen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Finding Opportunities',
  'Chancen finden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Wo man nach Jobs suchen kann

**Für junge Menschen:**
- Familie und Nachbarn fragen
- Lokale Geschäfte nach „Wir stellen ein"-Schildern durchsuchen
- Jobbörsen in der Schule
- Gemeindezentren

**Für Erwachsene:**
- Online-Jobbörsen (LinkedIn, Indeed)
- Unternehmenswebseiten
- Networking-Veranstaltungen
- Personalvermittlungen
- Berufliche Kontakte

Tipp: Viele Jobs findet man über Menschen, die man kennt!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Interview Skills',
  'Vorstellungsgesprächs-Fähigkeiten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Einen guten Eindruck hinterlassen

**Vor dem Vorstellungsgespräch:**
- Informiere dich über das Unternehmen
- Bereite Antworten auf häufige Fragen vor
- Wähle angemessene Kleidung
- Komme 10 Minuten früher an

**Während des Vorstellungsgesprächs:**
- Gib einen festen Händedruck
- Halte Blickkontakt
- Sprich klar und selbstbewusst
- Stelle durchdachte Fragen
- Zeige Begeisterung

**Nach dem Vorstellungsgespräch:**
- Sende innerhalb von 24 Stunden eine Dankes-E-Mail
- Frage nach, wenn du nach einer Woche nichts gehört hast',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'First Day Tips',
  'Tipps für den ersten Tag',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Stark starten

**Dein erster Tag:**
- Komm früh an
- Bring ein Notizbuch und einen Stift mit
- Stell Fragen (das zeigt, dass es dir wichtig ist!)
- Lern die Namen deiner Kollegen
- Beobachte die Arbeitsplatzkultur
- Mach dir Notizen über Abläufe

**Erste Woche/erster Monat:**
- Sei zuverlässig (komm pünktlich)
- Zeig Initiative
- Nimm Feedback mit Dankbarkeit an
- Hab keine Angst, Fehler zuzugeben
- Bau Beziehungen zu Kollegen auf

Denk daran: Jeder war mal neu. Die Leute möchten, dass du erfolgreich bist!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What should you do before a job interview?',
  'Was solltest du vor einem Vorstellungsgespräch tun?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Nothing, just show up',
  'Nichts, einfach erscheinen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Research the company',
  'Informiere dich über das Unternehmen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Memorize your resume',
  'Lebenslauf auswendig lernen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Bring your parents',
  'Bringe deine Eltern mit',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Researching the company shows you''re serious and helps you answer questions better.',
  'Die Recherche über das Unternehmen zeigt, dass du es ernst meinst, und hilft dir, Fragen besser zu beantworten.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How early should you arrive for an interview?',
  'Wie früh solltest du zu einem Vorstellungsgespräch erscheinen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '1 hour early',
  '1 Stunde früher',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Exactly on time',
  'Genau pünktlich',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '10 minutes early',
  '10 Minuten früher',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '10 minutes late',
  '10 Minuten zu spät',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Arriving 10 minutes early shows punctuality without being too early.',
  'Arriving 10 minutes early shows punctuality without being too early.

---

10 Minuten früher anzukommen zeigt Pünktlichkeit, ohne zu früh zu sein.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What does "networking" mean when job hunting?',
  'Was bedeutet "Networking" bei der Jobsuche?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Using the internet',
  'Das Internet nutzen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Building professional connections',
  'Aufbau beruflicher Kontakte',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Working with computers',
  'Arbeit mit Computern',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Social media posting',
  'Social-Media-Beiträge',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Networking is building relationships with people who can help your career.',
  'Networking bedeutet, Beziehungen zu Menschen aufzubauen, die deiner Karriere helfen können.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'On your first day, you should:',
  'An deinem ersten Tag solltest du:',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Pretend to know everything',
  'Vorgeben, alles zu wissen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Stay quiet and don''t ask questions',
  'Ruhig bleiben und keine Fragen stellen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Ask questions and take notes',
  'Fragen stellen und Notizen machen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Leave early to avoid mistakes',
  'Früh gehen, um Fehler zu vermeiden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Asking questions and taking notes shows you want to learn and do well.',
  'Fragen zu stellen und sich Notizen zu machen zeigt, dass du lernen und gute Arbeit leisten möchtest.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why Diversify',
  'Warum Diversifizieren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Lege nicht alle Eier in einen Korb

**Warum mehrere Einkommensquellen wichtig sind:**

1. **Sicherheit:** Wenn du eine Quelle verlierst, hast du noch andere
2. **Wachstum:** Mehrere Quellen = mehr Gesamteinkommen
3. **Freiheit:** Weniger abhängig von einem einzelnen Arbeitgeber
4. **Chancen:** Neue Fähigkeiten erlernen

**Praktisches Beispiel:**
Sarah hat:
- Vollzeitjob: 50.000 $/Jahr
- Nachhilfe am Wochenende: 5.000 $/Jahr
- Mietimmobilie: 10.000 $/Jahr
- Gesamt: 65.000 $/Jahr mit Absicherung!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Side Hustles',
  'Nebenverdienste',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Ideen für Zusatzeinkommen

**Beliebte Nebentätigkeiten:**

**Online:**
- Freiberufliches Schreiben, Design, Programmieren
- Online-Nachhilfe
- Handgemachtes auf Etsy verkaufen
- YouTube-Content-Erstellung
- Affiliate-Marketing

**Offline:**
- Fahrdienste (Uber, Lyft)
- Essenslieferung
- Tierbetreuung/Gassi gehen
- Hausreparaturen/Handwerkerdienstleistungen
- Fotografie für Veranstaltungen

**Tipps:**
- Klein anfangen, schrittweise wachsen
- Etwas wählen, das Ihnen Spaß macht
- Sich nicht überarbeiten
- Einnahmen und Ausgaben nachverfolgen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Investment Income',
  'Investitionseinkommen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Geld verdient Geld

**Arten von Kapitalerträgen:**

**1. Dividenden:**
- Unternehmen zahlen an Aktionäre
- Normalerweise vierteljährlich
- Können reinvestiert oder als Bargeld genommen werden

**2. Zinsen:**
- Aus Sparkonten
- Anleihen zahlen Zinsen
- Generell geringeres Risiko

**3. Kapitalgewinne:**
- Verkauf von Anlagen mit Gewinn
- Aktie für 50 $ kaufen, für 100 $ verkaufen = 50 $ Gewinn
- Kann riskant sein

**4. Mieteinnahmen:**
- Eigene Immobilie, Vermietung an Mieter
- Erfordert erhebliches Startkapital
- Laufende Instandhaltung erforderlich

**Wichtig:** Früh mit dem Investieren beginnen, auch kleine Beträge wachsen mit der Zeit!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why is having multiple income streams beneficial?',
  'Warum ist es vorteilhaft, mehrere Einkommensströme zu haben?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s more complicated',
  'Es ist komplizierter',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Provides financial security if one source fails',
  'Bietet finanzielle Sicherheit, wenn eine Quelle wegfällt',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'You work less',
  'Sie arbeiten weniger',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s required by law',
  'Es ist gesetzlich vorgeschrieben',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Multiple income streams provide security - if one stops, you still have others.',
  'Mehrere Einkommensquellen bieten Sicherheit – wenn eine versiegt, hast du noch andere.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is a "side hustle"?',
  'Was ist ein "Side Hustle"?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Your main job',
  'Dein Hauptberuf',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A dance move',
  'Ein Tanzschritt',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Extra work for additional income',
  'Zusätzliche Arbeit für zusätzliches Einkommen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A type of investment',
  'Eine Art von Investition',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A side hustle is extra work outside your main job to earn more money.',
  'Ein Side Hustle ist zusätzliche Arbeit neben deinem Hauptjob, um mehr Geld zu verdienen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What are dividends?',
  'Was sind Dividenden?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money companies pay shareholders',
  'Geld, das Unternehmen an Aktionäre zahlen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Bank fees',
  'Bankgebühren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Types of savings accounts',
  'Arten von Sparkonten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Job bonuses',
  'Arbeitsprämien',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Dividends are payments companies make to shareholders from profits.',
  'Dividenden sind Zahlungen, die Unternehmen aus ihren Gewinnen an ihre Aktionäre leisten.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which is considered passive investment income?',
  'Welches gilt als passives Anlageeinkommen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Salary from your job',
  'Gehalt aus deinem Job',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Dividends from stocks',
  'Dividenden aus Aktien',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Payment for freelance work',
  'Bezahlung für freiberufliche Arbeit',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Tips from waiting tables',
  'Trinkgelder vom Kellnern',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Dividends are passive income - you earn them without active daily work.',
  'Dividenden sind passives Einkommen - man verdient sie ohne aktive tägliche Arbeit.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'When starting a side hustle, you should:',
  'Wenn du einen Nebenverdienst startest, solltest du:',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Quit your main job immediately',
  'Deinen Hauptjob sofort kündigen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Start small and grow gradually',
  'Klein anfangen und schrittweise wachsen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Ignore tracking income',
  'Einnahmen nicht nachverfolgen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Never tell anyone',
  'Niemals jemandem davon erzählen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s smart to start small, test the market, and grow sustainably.',
  'Es ist klug, klein anzufangen, den Markt zu testen und nachhaltig zu wachsen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Essential Expenses',
  'Wesentliche Ausgaben',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Was du zum Überleben brauchst

**Bedürfnisse** = Dinge, die für das Überleben und grundlegendes Wohlbefinden erforderlich sind

Echte Bedürfnisse:
- Essen und Wasser
- Unterkunft (Wohnung)
- Kleidung (angemessen für das Wetter)
- Gesundheitsversorgung
- Grundlegende Transportmittel (zur Arbeit/Schule)
- Versorgungsleistungen (Strom, Wasser, Heizung)

**Für Kinder:** Schulmaterial, gesunde Ernährung
**Für Erwachsene:** Hypothek/Miete, Versicherung, grundlegende Lebensmittel',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Discretionary Spending',
  'Ermessensspielraum bei Ausgaben',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Dinge, die das Leben schöner machen

**Wünsche** = Dinge, die das Leben verbessern, aber nicht zum Überleben notwendig sind

Beispiele:
- Restaurantbesuche (du kannst zu Hause kochen)
- Neuestes Handy (älteres Modell funktioniert auch)
- Designerkleidung (normale Kleidung bedeckt dich auch)
- Streaming-Dienste
- Urlaube
- Spielzeug und Spiele

Wünsche sind nicht schlecht! Aber Bedürfnisse kommen zuerst.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Making Choices',
  'Entscheidungen treffen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Der knifflige Mittelweg

Manche Ausgaben sind beides:

**Telefon:**
- Bedürfnis: Einfaches Telefon für Sicherheit/Arbeit
- Wunsch: 1.200 € Spitzenmodell

**Essen:**
- Bedürfnis: Nahrhafte Mahlzeiten
- Wunsch: Jeden Tag teures Restaurant

**Kleidung:**
- Bedürfnis: Warmer Mantel im Winter
- Wunsch: Designermantel

**Kluges Ausgeben = Erst Bedürfnisse erfüllen, dann Wünsche im Rahmen des Budgets genießen**',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which of these is a true NEED?',
  'Welches davon ist ein echtes BEDÜRFNIS?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Designer sneakers',
  'Designer-Sneakers',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Basic shelter',
  'Grundlegende Unterkunft',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Video games',
  'Videospiele',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Vacation',
  'Urlaub',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Shelter is essential for survival, making it a need.',
  'Unterkunft ist lebensnotwendig und daher ein Bedürfnis.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which is a WANT?',
  'Welches ist ein WUNSCH?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Medicine when sick',
  'Medikamente bei Krankheit',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Water to drink',
  'Wasser zum Trinken',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Streaming service subscription',
  'Streaming-Dienst-Abonnement',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Winter coat in cold climate',
  'Wintermantel in kaltem Klima',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Streaming services are entertainment wants, not survival needs.',
  'Streaming-Dienste sind Unterhaltungswünsche, keine Überlebensbedürfnisse.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why is it important to identify needs vs wants?',
  'Warum ist es wichtig, Bedürfnisse von Wünschen zu unterscheiden?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'To never enjoy anything',
  'Um niemals etwas zu genießen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'To prioritize spending wisely',
  'Um Ausgaben klug zu priorisieren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Wants are illegal',
  'Wünsche sind illegal',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Needs are free',
  'Bedürfnisse sind kostenlos',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Identifying needs vs wants helps you spend money on essentials first.',
  'Die Unterscheidung zwischen Bedürfnissen und Wünschen hilft dir, dein Geld zuerst für das Wesentliche auszugeben.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A $1,200 phone when a $300 phone works is an example of:',
  'Ein 1.200-$-Telefon, wenn ein 300-$-Telefon ausreicht, ist ein Beispiel für:',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A need',
  'Ein Bedürfnis',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Smart spending',
  'Kluges Ausgeben',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Upgrading a need to a want',
  'Aufwertung eines Bedürfnisses zu einem Wunsch',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Required spending',
  'Notwendige Ausgaben',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'The basic phone is the need; the expensive one adds want features.',
  'Das einfache Handy ist das Bedürfnis; das teure fügt Wunsch-Funktionen hinzu.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Comparing Prices',
  'Preise vergleichen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Den besten Deal finden

**Tipps zum Preisvergleich:**

1. **Mehrere Geschäfte prüfen** - Gleicher Artikel, unterschiedliche Preise
2. **Preisvergleichswebseiten nutzen** - Google Shopping, CamelCamelCamel
3. **Grundpreis beachten** - Preis pro Unze, pro Stück
4. **Verkaufszyklen beobachten** - Elektronik wird günstiger vor neuen Modellen

**Beispiel:**
Müsli A: 4 $ für 12 oz = 0,33 $/oz
Müsli B: 5 $ für 18 oz = 0,28 $/oz

Müsli B ist das bessere Angebot!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Coupons and Discounts',
  '# Gutscheine und Rabatte',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Kostenlose Geldsparer

**Wo man Angebote findet:**
- Shop-Apps und Treueprogramme
- E-Mail-Newsletter
- Gutschein-Websites (RetailMeNot, Honey)
- Studenten-/Seniorenrabatte
- Cashback-Kreditkarten
- Kaufe-eins-bekomme-eins (BOGO) Angebote

**Gutschein-Regeln:**
✅ Nur für Dinge verwenden, die du wirklich brauchst
❌ Nicht kaufen, nur weil es im Angebot ist
✅ Gutscheine kombinieren, wenn möglich
❌ Gutscheine nicht ungenutzt verfallen lassen

1 € bei etwas sparen, das du nicht brauchst = Geldverschwendung!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Avoiding Impulse Buys',
  'Impulskäufe vermeiden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Stopp und denk erst nach

**Impulskauf** = Kaufen ohne Planung, meist emotional

**Wie du widerstehen kannst:**

1. **Die 24-Stunden-Regel** - Warte einen Tag, bevor du Wünsche kaufst
2. **Erstelle eine Liste** - Kaufe nur, was auf der Liste steht
3. **Vermeide Einkaufen in emotionalen Momenten** - Traurig, glücklich oder gelangweilt
4. **Melde dich von Werbe-E-Mails ab**
5. **Lass Kreditkarten zu Hause** - Verwende Bargeld für nicht notwendige Einkäufe
6. **Berechne die Kosten in Arbeitsstunden** - „100 € Schuhe = 5 Stunden Arbeit. Lohnt es sich?"

**Laden-Tricks, auf die du achten solltest:**
- Süßigkeiten an der Kasse (Versuchung)
- „Nur für kurze Zeit!" (falsche Dringlichkeit)
- Überall Schilder mit Sonderangeboten (nicht immer echte Schnäppchen)
- Angenehme Düfte/Musik (bringt dich dazu, länger zu bleiben)',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What should you compare when shopping for the best deal?',
  'Was solltest du vergleichen, wenn du nach dem besten Angebot suchst?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Only the total price',
  'Nur den Gesamtpreis',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Brand name only',
  'Nur den Markennamen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Unit price and quality',
  'Stückpreis und Qualität',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'The prettiest package',
  'Die hübscheste Verpackung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Comparing unit price (price per unit) and quality gives you the best value.',
  'Der Vergleich von Grundpreis (Preis pro Einheit) und Qualität bietet dir das beste Preis-Leistungs-Verhältnis.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is the 24-hour rule?',
  'Was ist die 24-Stunden-Regel?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Stores are open 24 hours',
  'Geschäfte haben 24 Stunden geöffnet',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Wait a day before buying wants',
  'Warte einen Tag, bevor du Wünsche kaufst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Shop for 24 hours straight',
  'Kaufe 24 Stunden am Stück ein',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Sales last 24 hours',
  'Verkäufe dauern 24 Stunden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'The 24-hour rule means waiting a day to avoid impulse purchases.',
  'Die 24-Stunden-Regel bedeutet, einen Tag zu warten, um Spontankäufe zu vermeiden.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'When should you use coupons?',
  'Wann solltest du Gutscheine verwenden?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'For everything on sale',
  'Für alles im Angebot',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Only for items you actually need',
  'Nur für Artikel, die du wirklich brauchst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Never',
  'Niemals',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Only on weekends',
  'Nur am Wochenende',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Coupons save money only if used for things you actually need.',
  'Gutscheine sparen nur dann Geld, wenn sie für Dinge verwendet werden, die man tatsächlich braucht.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is an impulse buy?',
  'Was ist ein Impulskauf?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A planned purchase',
  'Ein geplanter Kauf',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Buying without planning, often emotionally',
  'Kaufen ohne Planung, oft emotional',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Buying groceries',
  'Lebensmittel einkaufen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Using a coupon',
  'Einen Gutschein verwenden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Impulse buying is unplanned purchasing driven by emotion rather than need.',
  'Impulskäufe sind ungeplante Einkäufe, die von Emotionen und nicht von Bedürfnissen getrieben werden.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Price vs Quality',
  'Preis vs Qualität',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Gut, Schnell, Günstig - Wähle Zwei

**Wert = Qualität ÷ Preis**

**Manchmal lohnt sich teuer:**
- Schuhe, die 5 Jahre halten vs. 6 Monate
- Langlebiges Werkzeug vs. solches, das kaputt geht
- Gesundes Essen vs. billiges Junkfood

**Manchmal ist günstig in Ordnung:**
- Grundausstattung (Papier, Stifte)
- Dinge, die man selten benutzt
- Trendige Artikel, die aus der Mode kommen

**Beispiel:**
20€ Schuhe (halten 6 Monate) = 40€/Jahr
80€ Schuhe (halten 3 Jahre) = 27€/Jahr

Teure Schuhe sind tatsächlich günstiger!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Long-term Cost',
  'Langfristige Kosten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Gesamtkosten des Besitzes

Schau über den Preis hinaus!

**Berücksichtige:**
- Wartungskosten
- Reparaturkosten
- Energie-/Kraftstoffkosten
- Lebensdauer
- Wiederverkaufswert

**Beispiel: Zwei Autos**

**Auto A: 15.000 €**
- Verbraucht viel Benzin: 3.000 €/Jahr
- Häufige Reparaturen: 1.500 €/Jahr
- 5 Jahre = 15.000 € + 22.500 € = 37.500 €

**Auto B: 22.000 €**
- Effizienter Benzinverbrauch: 1.500 €/Jahr
- Zuverlässig, wenige Reparaturen: 500 €/Jahr
- 5 Jahre = 22.000 € + 10.000 € = 32.000 €

Das günstigere Auto kostet tatsächlich 5.500 € MEHR!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Brand vs Generic',
  'Marke vs. Eigenmarke',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Wann Markennamen wichtig sind

**Generische/Handelsmarken oft ausreichend für:**
- Grundnahrungsmittel (Mehl, Zucker, Reis)
- Rezeptfreie Medikamente (gleiche Inhaltsstoffe)
- Reinigungsmittel
- Schulsachen
- Einfache Kleidung

**Markenprodukte können sich lohnen bei:**
- Elektronik (besserer Support)
- Spezialwerkzeugen
- Artikeln mit Sicherheitsbedenken
- Dingen, die du täglich benutzt

**So entscheidest du:**
1. Inhaltsstoffe/Materialien prüfen
2. Bewertungen lesen
3. Erst Generika ausprobieren
4. Wenn Generika funktioniert, dabei bleiben!

Oft werden Generika in derselben Fabrik wie Markenprodukte hergestellt!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What does "value" mean in shopping?',
  'Was bedeutet "Wert" beim Einkaufen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'The cheapest price',
  'Der günstigste Preis',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Quality divided by price',
  'Qualität geteilt durch Preis',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'The most expensive item',
  'Der teuerste Artikel',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Brand name',
  'Markenname',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Value is the balance between quality and price - best quality for the price paid.',
  'Wert ist das Gleichgewicht zwischen Qualität und Preis - beste Qualität für den bezahlten Preis.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why might expensive shoes be a better value?',
  'Warum könnten teure Schuhe ein besserer Wert sein?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They look better',
  'Sie sehen besser aus',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They last longer, costing less per year',
  'Sie halten länger und kosten dadurch weniger pro Jahr',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Expensive is always better',
  'Teuer ist immer besser',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They''re trendy',
  'Sie sind trendy',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If expensive shoes last much longer, the cost per year of use is often lower.',
  'Wenn teure Schuhe viel länger halten, sind die Kosten pro Jahr der Nutzung oft niedriger.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is "total cost of ownership"?',
  'Was ist „Gesamtbetriebskosten" (Total Cost of Ownership)?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Just the purchase price',
  'Nur der Kaufpreis',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'All costs including maintenance over time',
  'Alle Kosten einschließlich Wartung über die Zeit',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'The price including tax',
  'Der Preis inklusive Steuern',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What you can sell it for later',
  'Was man später dafür bekommen kann',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Total cost includes purchase price plus all future costs like maintenance and fuel.',
  'Gesamtkosten umfassen den Kaufpreis plus alle zukünftigen Kosten wie Wartung und Kraftstoff.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'When is generic/store brand usually fine?',
  'Wann ist eine Handelsmarke/Eigenmarke normalerweise in Ordnung?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Never',
  'Niemals',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Always',
  'Immer',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'For basic items like flour or medicine',
  'Für grundlegende Artikel wie Mehl oder Medikamente',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Only for food',
  'Nur für Lebensmittel',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Generic brands often have the same quality as name brands for basic items.',
  'Generische Marken haben bei Grundprodukten oft die gleiche Qualität wie Markenprodukte.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Marketing Tactics',
  'Marketingtaktiken',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Wie Geschäfte dich dazu bringen, mehr auszugeben

**Häufige Tricks:**

1. **Ankerpreise:** „200 € 99 €!" - Lässt 99 € günstig erscheinen
2. **Köderpreise:** Klein (3 €), Mittel (5 €), Groß (5,50 €) - Alle wählen groß
3. **Verknappung:** „Nur noch 3 verfügbar!" - Erzeugt künstliche Dringlichkeit
4. **Mindestbetrag für kostenlosen Versand:** „Kostenloser Versand ab 50 €" - Du gibst 50 € aus, um 5 € zu sparen
5. **Bündelangebote:** „Kaufe 3, spare 10 %" - Du brauchtest nur 1

**So widerstehst du:**
- Kenne dein Budget vor dem Einkaufen
- Recherchiere Preise im Voraus
- Kaufe nicht ein, wenn du emotional bist
- Hinterfrage „Angebote" kritisch',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Subscription Traps',
  'Abo-Fallen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Das langsame Geldleck

**Abonnement-Risiken:**

**Kostenlose Testversionen, die nicht kostenlos sind:**
- Erfordern Kreditkarte
- Automatische Verlängerung nach Testphase
- Schwer zu kündigen
- Man vergisst sie

**Monatliche Abonnements summieren sich:**
- Streaming: 15 €
- Musik: 10 €
- Gaming: 15 €
- Software: 20 €
- Fitnessstudio (ungenutzt): 40 €
- **Gesamt: 100 €/Monat = 1.200 €/Jahr!**

**Schutzstrategien:**
- Kalender-Erinnerungen für Testphasen-Enden setzen
- Abonnements monatlich überprüfen
- Virtuelle Karten verwenden, die ablaufen
- Frag dich selbst: „Diesen Monat genutzt? Behalten. Nicht genutzt? Kündigen."
- Sofort nach kostenlosen Testphasen kündigen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Hidden Fees',
  'Versteckte Gebühren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Das Kleingedruckte lesen

**Achten Sie auf:**

**Resort-/Hotelgebühren:**
- Zimmer: 100 €/Nacht
- „Resortgebühr": 30 €/Nacht
- Parkplatz: 25 €/Nacht
- **Tatsächliche Kosten: 155 €/Nacht!**

**Ticketgebühren:**
- Konzertticket: 50 €
- „Servicegebühr": 15 €
- „Veranstaltungsgebühr": 8 €
- **Tatsächliche Kosten: 73 €**

**Bankgebühren:**
- Überziehungsgebühren
- Geldautomatengebühren
- Monatliche Kontoführungsgebühren
- Auslandseinsatzgebühren

**So vermeiden Sie diese:**
1. Lesen Sie ALLE Bedingungen vor dem Kauf
2. Fragen Sie vorab nach den Gesamtkosten
3. Suchen Sie nach „gebührenfreien" Alternativen
4. Berechnen Sie die tatsächlichen Kosten vor der Verpflichtung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is "anchor pricing"?',
  'Was ist "Ankerpreisbildung"?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Selling boat anchors',
  'Bootsanker verkaufen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Showing a high price crossed out to make sale price look better',
  'Anzeige eines durchgestrichenen hohen Preises, um den Verkaufspreis besser aussehen zu lassen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Giving discounts to sailors',
  'Rabatte für Seeleute gewähren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Setting the lowest price',
  'Den niedrigsten Preis festlegen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Anchor pricing shows a high "original" price to make the sale price seem like a great deal.',
  'Ankerpreisgestaltung zeigt einen hohen „ursprünglichen" Preis, um den Verkaufspreis wie ein tolles Schnäppchen erscheinen zu lassen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why are "free trials" sometimes a trap?',
  'Warum sind "kostenlose Testversionen" manchmal eine Falle?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They''re actually free',
  'Sie sind tatsächlich kostenlos',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They auto-renew and charge your card',
  'Sie verlängern sich automatisch und belasten deine Karte',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They give you free stuff',
  'Sie geben dir kostenlose Sachen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They''re illegal',
  'Sie sind illegal',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Free trials often auto-renew into paid subscriptions that charge your card.',
  'Kostenlose Testversionen verlängern sich oft automatisch in kostenpflichtige Abonnements, die von deiner Karte abgebucht werden.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If you have 5 subscriptions at $15 each, how much per year?',
  'Wenn du 5 Abonnements zu je 15 $ hast, wie viel pro Jahr?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$75',
  '$75',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$180',
  '$180',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$900',
  '$900',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$750',
  '$750',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '5 × $15 = $75/month × 12 months = $900/year.',
  '5 × 15 $ = 75 $/Monat × 12 Monate = 900 $/Jahr.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What are "hidden fees"?',
  'Was sind „versteckte Gebühren"?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Illegal charges',
  'Illegale Gebühren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Additional costs not shown in advertised price',
  'Zusätzliche Kosten, die nicht im beworbenen Preis angegeben sind',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Fees for hiding things',
  'Gebühren für das Verstecken von Dingen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Discounts',
  'Rabatte',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Hidden fees are extra costs added on top of the advertised price.',
  'Versteckte Gebühren sind zusätzliche Kosten, die zum beworbenen Preis hinzukommen.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Best way to avoid subscription traps:',
  'Bester Weg, um Abo-Fallen zu vermeiden:',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Never subscribe to anything',
  'Niemals etwas abonnieren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Review and cancel unused subscriptions regularly',
  'Überprüfen und kündigen Sie regelmäßig ungenutzte Abonnements',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Subscribe to everything',
  'Alles abonnieren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Ignore your bank statements',
  'Ignoriere deine Kontoauszüge',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Regularly reviewing subscriptions helps you cancel ones you don''t use.',
  'Regelmäßiges Überprüfen von Abonnements hilft dir, solche zu kündigen, die du nicht nutzt.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Emergency Fund',
  'Notfallfonds',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Auf Unerwartetes vorbereitet sein

**Notfallfonds** = Geld, das für unerwartete Probleme gespart wird

**Warum du ihn brauchst:**
- Auto geht kaputt: 500 $ Reparatur
- Medizinischer Notfall: 1.000 $ Rechnung
- Jobverlust: 3-6 Monate Ausgaben nötig
- Hausreparatur: Kaputte Warmwasserheizung

**Ohne Notfallfonds:**
- Schulden machen (Kreditkarten, Kredite)
- Rechnungen können nicht bezahlt werden
- Stress und Sorgen

**Mit Notfallfonds:**
- Probleme ruhig bewältigen
- Keine Schulden nötig
- Seelenfrieden

**Ziel:** 3-6 Monate Lebenshaltungskosten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Future Goals',
  'Zukünftige Ziele',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Sparen für das, was du willst

**Kurzfristige Ziele (< 1 Jahr):**
- Neues Handy
- Geburtstagsfeier
- Klassenfahrt
- Weihnachtsgeschenke

**Mittelfristige Ziele (1-5 Jahre):**
- Auto
- Studium
- Hochzeit
- Anzahlung für ein Eigenheim

**Langfristige Ziele (5+ Jahre):**
- Ruhestand
- Ausbildung der Kinder
- Traumurlaub
- Ein Unternehmen gründen

Sparen ermöglicht es dir, deine Träume ohne Schulden zu verwirklichen!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Financial Security',
  'Finanzielle Sicherheit',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Seelenfrieden

**Finanzielle Sicherheit bedeutet:**
- Nicht von Gehaltsscheck zu Gehaltsscheck leben
- Notfälle bewältigen können
- Kein Stress wegen Geld
- Freiheit, Entscheidungen zu treffen
- Anderen helfen können

**Vorteile des Sparens:**
1. **Freiheit** - Nein zu schlechten Jobs sagen
2. **Möglichkeiten** - Träume wagen
3. **Weniger Stress** - Nachts besser schlafen
4. **Unabhängigkeit** - Nicht auf andere angewiesen sein
5. **Zukünftiges Ich** - Wird dem heutigen Ich danken!

„Spare nicht, was nach dem Ausgeben übrig bleibt; gib aus, was nach dem Sparen übrig bleibt." - Warren Buffett',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is an emergency fund?',
  'Was ist ein Notfallfonds?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money for vacations',
  'Geld für Urlaube',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money saved for unexpected problems',
  'Geld, das für unerwartete Probleme gespart wird',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money for shopping',
  'Geld zum Einkaufen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money you never touch',
  'Geld, das du niemals anrührst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'An emergency fund is savings set aside for unexpected expenses or emergencies.',
  'Ein Notfallfonds ist Erspartes, das für unerwartete Ausgaben oder Notfälle zurückgelegt wird.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How many months of expenses should an emergency fund cover?',
  'Wie viele Monate an Ausgaben sollte ein Notfallfonds abdecken?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '1 week',
  '1 Woche',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '1 month',
  '1 Monat',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '3-6 months',
  '3-6 Monate',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '10 years',
  '10 Jahre',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Financial experts recommend 3-6 months of living expenses for emergencies.',
  'Finanzexperten empfehlen 3-6 Monate an Lebenshaltungskosten für Notfälle.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which is a short-term savings goal?',
  'Welches ist ein kurzfristiges Sparziel?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Retirement',
  'Ruhestand',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'College in 10 years',
  'Studium in 10 Jahren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'New video game in 3 months',
  'Neues Videospiel in 3 Monaten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Buying a house',
  'Ein Haus kaufen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Short-term goals are things you want to buy within a year.',
  'Kurzfristige Ziele sind Dinge, die du innerhalb eines Jahres kaufen möchtest.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What does Warren Buffett say about saving?',
  'Was sagt Warren Buffett über das Sparen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Spend first, save what''s left',
  'Zuerst ausgeben, den Rest sparen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Save first, spend what''s left',
  'Spare zuerst, gib aus, was übrig bleibt',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Never save anything',
  'Spare niemals etwas',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Save everything',
  'Spare alles',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Buffett advises to save first (pay yourself first), then spend what remains.',
  'Buffett rät dazu, zuerst zu sparen (sich selbst zuerst zu bezahlen) und dann auszugeben, was übrig bleibt.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'SMART Goals',
  'SMART-Ziele',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Ziele setzen, die funktionieren

**SMART = Spezifisch, Messbar, Erreichbar, Relevant, Terminiert**

❌ Schlechtes Ziel: „Mehr Geld sparen"
✅ SMART-Ziel: „1.200 € für einen neuen Laptop bis zum 31. Dezember sparen"

**Die Aufschlüsselung:**
- **Spezifisch:** Neuer Laptop
- **Messbar:** 1.200 €
- **Erreichbar:** 100 €/Monat für 12 Monate
- **Relevant:** Benötigt für Schule/Arbeit
- **Terminiert:** Bis zum 31. Dezember

**So setzt du SMART-Ziele:**
1. Entscheide genau, was du möchtest
2. Recherchiere die Kosten
3. Setze eine Frist
4. Berechne die benötigten monatlichen Ersparnisse
5. Stelle sicher, dass es realistisch für dein Einkommen ist',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Short-term vs Long-term',
  'Kurzfristige vs Langfristige',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Unterschiedliche Ziele, unterschiedliche Strategien

**Kurzfristig (< 1 Jahr):**
- Auf Sparkonto aufbewahren
- Einfacher Zugriff
- Geringeres Risiko
- Beispiele: Neues Fahrrad, Konzerttickets

**Mittelfristig (1-5 Jahre):**
- Hochverzinstes Sparkonto oder Festgeld
- Etwas Wachstum, weiterhin zugänglich
- Geringes bis mittleres Risiko
- Beispiele: Auto, Studium, Hochzeit

**Langfristig (5+ Jahre):**
- Kann in Aktien/Anleihen investiert werden
- Höheres Wachstumspotenzial
- Mittleres bis hohes Risiko (Zeit zum Ausgleichen von Verlusten)
- Beispiele: Altersvorsorge, Haus

Passe deine Sparstrategie an deinen Zeitplan an!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Tracking Progress',
  'Fortschritte verfolgen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Bleib motiviert

**Möglichkeiten zur Verfolgung:**

1. **Visuelle Tracker:**
   - Spar-Thermometer
   - Ausmal-Diagramm (in 10-€-Schritten ausmalen)
   - Foto des Zielgegenstands als Handy-Hintergrundbild

2. **Apps und Tabellen:**
   - Mint, YNAB, Personal Capital
   - Einfache Excel/Google Sheets
   - Sparziel-Funktion der Banking-App

3. **Physische Methoden:**
   - Separates Glas/Umschlag für jedes Ziel
   - Geld auf separates Konto überweisen
   - Wöchentliche Kontrolle mit Verantwortungspartner

**Meilensteine feiern:**
- 25% gespart: Kleine Belohnung
- 50% gespart: Einem Freund erzählen
- 75% gespart: Planen, wie du es verwenden wirst
- 100%: Erfolg freigeschaltet! 🎉',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What does SMART goals stand for?',
  'Was bedeutet SMART-Ziele?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Simple, Money, Achievable, Real, Timely',
  'Simple, Money, Achievable, Real, Timely',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Specific, Measurable, Achievable, Relevant, Time-bound',
  'Spezifisch, Messbar, Erreichbar, Relevant, Terminiert',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Save, Make, Acquire, Reach, Total',
  'Sparen, Machen, Erwerben, Erreichen, Gesamt',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Spend, Manage, Allocate, Record, Track',
  'Ausgeben, Verwalten, Zuteilen, Aufzeichnen, Verfolgen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'SMART is an acronym for Specific, Measurable, Achievable, Relevant, Time-bound.',
  'SMART ist ein Akronym für Specific (Spezifisch), Measurable (Messbar), Achievable (Erreichbar), Relevant (Relevant), Time-bound (Zeitgebunden).',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'For a goal 8 years away, where should you keep the money?',
  'Wo solltest du das Geld für ein Ziel in 8 Jahren aufbewahren?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Under your mattress',
  'Unter deiner Matratze',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'In your wallet',
  'In deiner Brieftasche',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Can invest in stocks for growth',
  'In Aktien investieren, um Wachstum zu erzielen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'In a piggy bank',
  'In einem Sparschwein',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Long-term goals (5+ years) can be invested for higher growth potential.',
  'Langfristige Ziele (5+ Jahre) können für höheres Wachstumspotenzial investiert werden.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If you want to save $600 in 6 months, how much per month?',
  'Wenn du 600 $ in 6 Monaten sparen möchtest, wie viel pro Monat?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$50',
  '$50',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$100',
  '$100',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$150',
  '$150',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$200',
  '$200',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$600 ÷ 6 months = $100 per month.',
  '$600 ÷ 6 Monate = $100 pro Monat.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why is tracking progress important?',
  'Warum ist es wichtig, den Fortschritt zu verfolgen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'It''s not important',
  'Es ist nicht wichtig',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Helps you stay motivated and on track',
  'Hilft dir, motiviert zu bleiben und auf Kurs zu bleiben',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Required by law',
  'Gesetzlich vorgeschrieben',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Banks force you to',
  'Banken zwingen dich dazu',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Tracking progress keeps you motivated and helps ensure you reach your goal.',
  'Das Verfolgen deines Fortschritts hält dich motiviert und hilft sicherzustellen, dass du dein Ziel erreichst.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Savings Accounts',
  'Sparkonten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Grundlegendes Sparen bei Banken

**Merkmale eines Sparkontos:**
- Zinsen verdienen (üblicherweise 0,01% bis 0,50%)
- Einlagensicherung (bis zu 250.000 €)
- Einfacher Zugriff auf Geld
- Niedriges/kein Mindestguthaben
- Kann Abhebungslimits haben

**Wann verwenden:**
- Notfallfonds
- Kurzfristige Ziele
- Geld, das man bald brauchen könnte

**Tipp:** Einige Konten haben Gebühren, wenn das Guthaben zu niedrig ist. Wähle gebührenfreie Konten!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Interest Rates',
  'Zinssätze',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Wie dein Geld wächst

**Zinsen** = Geld, das die Bank dir dafür zahlt, dass du dein Geld dort aufbewahrst

**Beispiel:**
- Spare 1.000 €
- Zinssatz: 5% pro Jahr
- Nach 1 Jahr: 1.050 €
- Nach 2 Jahren: 1.102,50 € (Zinseszins!)

**Zinseszins** = Zinsen auf deine Zinsen verdienen

**Wo du höhere Zinsen findest:**
- Onlinebanken (1% bis 5%+)
- Hochverzinsliche Sparkonten
- Festgeldkonten
- Geldmarktkonten

**Vergleiche die Zinssätze** - Kleine Unterschiede = großer Unterschied über die Zeit!

Bei 1%: 1.000 € → 1.104 € in 10 Jahren
Bei 5%: 1.000 € → 1.629 € in 10 Jahren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Bank vs Credit Union',
  'Bank vs Kreditgenossenschaft',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Wo man ein Konto eröffnet

**Banken:**
- Gewinnorientierte Unternehmen
- Mehr Filialen und Geldautomaten
- Bessere Technologie/Apps
- Normalerweise niedrigere Zinssätze
- Beispiele: Chase, Bank of America

**Kreditgenossenschaften:**
- Gemeinnützig, im Besitz der Mitglieder
- Höhere Zinssätze
- Niedrigere Gebühren
- Weniger Filialen
- Mitgliedschaft kann erforderlich sein
- Beispiele: Navy Federal, Lokale Kreditgenossenschaften

**Beide sind sicher** - FDIC (Banken) oder NCUA (Kreditgenossenschaften) versichert

**Auswahl:**
- Brauchen Sie Filialen/Geldautomaten? → Bank
- Möchten Sie bessere Zinssätze? → Kreditgenossenschaft
- Können Sie Online-Banking nutzen? → Online-Bank (beste Zinssätze)',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is FDIC insurance?',
  'Was ist die FDIC-Versicherung?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Car insurance',
  'Autoversicherung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Protection for bank deposits up to $250,000',
  'Schutz für Bankeinlagen bis zu 250.000 $',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Health insurance',
  'Krankenversicherung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A type of savings account',
  'Eine Art von Sparkonto',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'FDIC insurance protects your bank deposits up to $250,000 if the bank fails.',
  'Die FDIC-Versicherung schützt Ihre Bankeinlagen bis zu 250.000 $, falls die Bank zahlungsunfähig wird.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is compound interest?',
  'Was ist Zinseszins?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Flat interest rate',
  'Fester Zinssatz',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Interest earned on both principal and previous interest',
  'Zinsen, die sowohl auf das Kapital als auch auf bereits verdiente Zinsen berechnet werden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Interest you pay on loans',
  'Zinsen, die du auf Kredite zahlst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'No interest',
  'Keine Zinsen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Compound interest means you earn interest on your interest, accelerating growth.',
  'Zinseszins bedeutet, dass du Zinsen auf deine Zinsen erhältst, was das Wachstum beschleunigt.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Where typically find the highest interest rates?',
  'Wo findet man typischerweise die höchsten Zinssätze?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Traditional bank branches',
  'Traditionelle Bankfilialen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Under your mattress',
  'Unter deiner Matratze',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Online banks and credit unions',
  'Online-Banken und Kreditgenossenschaften',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Piggy banks',
  'Sparschweine',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Online banks and credit unions often offer higher interest rates than traditional banks.',
  'Online-Banken und Kreditgenossenschaften bieten oft höhere Zinssätze als traditionelle Banken.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If you save $100 at 4% interest for 1 year, how much will you have?',
  'Wenn du 100 $ mit 4 % Zinsen für 1 Jahr sparst, wie viel wirst du haben?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$100',
  '$100',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$104',
  '$104',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$400',
  '$400',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$140',
  '$140',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$100 + ($100 × 0.04) = $104.',
  '$100 + ($100 × 0,04) = $104.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Pay Yourself First',
  'Bezahle dich selbst zuerst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Die goldene Regel des Sparens

**„Bezahle dich zuerst selbst"** = Spare, bevor du für irgendetwas anderes Geld ausgibst

**So funktioniert es:**

❌ Alte Methode:
1. Gehalt erhalten
2. Rechnungen bezahlen
3. Sachen kaufen
4. Sparen, was übrig bleibt (normalerweise 0 €)

✅ Neue Methode:
1. Gehalt erhalten
2. **Sofort 10-20% sparen**
3. Rechnungen bezahlen
4. Sachen kaufen mit dem, was übrig bleibt

**Warum es funktioniert:**
- Behandelt Sparen wie eine Rechnung (nicht verhandelbar)
- Du passt deine Ausgaben an das an, was übrig bleibt
- Das Sparen findet tatsächlich statt

„Spare nicht, was nach dem Ausgeben übrig bleibt; gib aus, was nach dem Sparen übrig bleibt."',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Automatic Transfers',
  'Automatische Überweisungen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Einrichten und Vergessen

**Automatisches Sparen** = Geld wandert ohne dein Zutun auf dein Sparkonto

**So richtest du es ein:**

1. **Gehaltsaufteilung:**
   - Bitte deinen Arbeitgeber, einen % direkt auf dein Sparkonto zu überweisen
   - Der Rest geht auf dein Girokonto
   - Passiert bei jedem Gehaltseingang

2. **Automatischer Banktransfer:**
   - Richte einen wiederkehrenden Dauerauftrag ein
   - Jeden Zahltag wird Betrag X auf dein Sparkonto übertragen
   - Kann jederzeit angepasst oder pausiert werden

3. **Nach Plan sparen:**
   - Wöchentlich: Psychologisch einfacher
   - Alle zwei Wochen: Passend zum Gehaltszyklus
   - Monatlich: Unkompliziert, höhere Beträge

**Vorteile:**
- Keine Willenskraft nötig
- Kein Vergessen
- Kontinuierlicher Fortschritt
- „Aus den Augen, aus dem Sinn"',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Round-up Apps',
  'Aufrundungs-Apps',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Schmerzloses Mikro-Sparen

**Aufrundungs-Apps** = Runden Einkäufe auf den nächsten Euro auf, sparen die Differenz

**So funktionieren sie:**

Du kaufst Kaffee: 4,50 €
App rundet auf: 5,00 €
Spart die Differenz: 0,50 €

10 Einkäufe × 0,50 € Durchschnitt = 5 €/Tag = 150 €/Monat!

**Beliebte Apps:**
- Acorns
- Digit
- Qapital
- Chime (hat diese Funktion)
- Viele Banken bieten dies an

**Andere Mikro-Spar-Tricks:**
- Spare alle 5-€-Scheine, die du erhältst
- Spare alle Münzen am Ende des Tages
- Spare Steuerrückerstattung sofort
- Spare Boni/Geschenke vor dem Ausgeben
- Spare Gehaltserhöhungen (erhöhe Dauerauftrag, wenn das Gehalt steigt)

**Das Wichtigste:** Klein anfangen! 1 €/Tag = 365 €/Jahr',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What does "pay yourself first" mean?',
  'Was bedeutet "Zuerst sich selbst bezahlen"?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Buy things for yourself',
  'Kaufe Dinge für dich selbst',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Save money before paying bills',
  'Geld sparen, bevor man Rechnungen bezahlt',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Give yourself a paycheck',
  'Sich selbst ein Gehalt auszahlen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Save money before spending on other things',
  'Geld sparen, bevor man es für andere Dinge ausgibt',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Pay yourself first means saving a portion of income before spending on anything else.',
  'Sich selbst zuerst bezahlen bedeutet, einen Teil des Einkommens zu sparen, bevor man es für andere Dinge ausgibt.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'What is automatic savings?',
  'Was ist automatisches Sparen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Money that appears magically',
  'Geld, das auf magische Weise erscheint',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Automatic transfers from checking to savings',
  'Automatische Überweisungen vom Girokonto zum Sparkonto',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Savings that grow automatically',
  'Ersparnisse, die automatisch wachsen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A type of bank account',
  'Ein Typ von Bankkonto',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Automatic savings is when money automatically transfers from checking to savings.',
  'Automatisches Sparen bedeutet, dass Geld automatisch vom Girokonto auf das Sparkonto überwiesen wird.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How do round-up apps work?',
  'Wie funktionieren Aufrundungs-Apps?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Round down your balance',
  'Runden Sie Ihr Guthaben ab',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Round purchases up and save the difference',
  'Kaufbeträge aufrunden und die Differenz sparen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Give you money',
  'Geben dir Geld',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Round your interest',
  'Runde deine Zinsen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Round-up apps round each purchase up to the nearest dollar and save the difference.',
  'Round-up-Apps runden jeden Einkauf auf den nächsten Dollar auf und sparen die Differenz.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If a round-up app saves $0.50 per transaction and you make 200 transactions/month, how much saved?',
  'Wenn eine Aufrundungs-App 0,50 $ pro Transaktion spart und du 200 Transaktionen/Monat machst, wie viel wurde gespart?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$50',
  '$50',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$100',
  '$100',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$150',
  '$150',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$200',
  '$200',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '200 transactions × $0.50 = $100 saved per month.',
  '200 Transaktionen × 0,50 $ = 100 $ Ersparnis pro Monat.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How Much to Save',
  'Wie viel sparen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Dein Notgroschen-Ziel

**Standardempfehlung: 3-6 Monate an Ausgaben**

**Berechne deine Zahl:**

1. Liste monatliche Ausgaben auf:
   - Miete/Hypothek: 1.000 €
   - Nebenkosten: 150 €
   - Lebensmittel: 400 €
   - Transport: 200 €
   - Versicherung: 150 €
   - Andere Grundbedürfnisse: 100 €
   - **Gesamt: 2.000 €/Monat**

2. Multipliziere mit 3-6:
   - Minimum: 6.000 €
   - Ideal: 12.000 €

**Zu berücksichtigende Faktoren:**
- Arbeitsplatzsicherheit (unsicher = 6+ Monate)
- Einkommensquellen (einzelnes Einkommen = mehr benötigt)
- Gesundheit (medizinische Probleme = mehr benötigt)
- Angehörige (Kinder = mehr benötigt)',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'When to Use It',
  'Wann man es verwendet',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Nur für echte Notfälle

**Notfallfonds verwenden für:**

✅ **Echte Notfälle:**
- Jobverlust
- Medizinischer Notfall
- Notwendige Hausreparatur (Warmwasserbereiter, Heizung)
- Notwendige Autoreparatur (kann nicht zur Arbeit kommen)
- Familiennotfall

❌ **KEINE Notfälle:**
- Sonderangebot für Fernseher
- Urlaub
- Neue Kleidung
- Auswärts essen
- Nicht notwendige Anschaffungen
- "Ich will es unbedingt haben"

**Faustregel:**
Frage dich: "Wenn ich dieses Geld nicht ausgebe, wird etwas Schlimmes passieren?"
- Ja = Notfall
- Nein = Kein Notfall

Separates "Spaßgeld" zu haben hilft dabei, nicht auf den Notfallfonds zurückzugreifen!',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Rebuilding After Use',
  'Wiederaufbau nach Verwendung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
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
  '# Wieder auf Kurs kommen

**Wenn Sie Ihren Notfallfonds nutzen:**

**1. Fühlen Sie sich nicht schuldig!**
- Dafür ist er da
- Sie haben richtig vorausschauend geplant
- Seien Sie stolz, dass Sie ihn hatten

**2. Setzen Sie andere Sparziele vorübergehend aus:**
- Konzentrieren Sie sich zuerst auf den Wiederaufbau des Notfallfonds
- Andere Ziele können warten
- Notfallfonds = Priorität Nr. 1

**3. Bauen Sie so schnell wie vernünftigerweise möglich wieder auf:**
- Beginnen Sie sofort (auch 20 € helfen)
- Nutzen Sie unerwartete Geldeingänge (Steuerrückerstattung, Bonus)
- Reduzieren Sie vorübergehend diskretionäre Ausgaben
- Erwägen Sie zusätzliches Einkommen

**4. Überprüfen Sie, was passiert ist:**
- War es vermeidbar?
- Brauchen Sie mehr Versicherungsschutz?
- Brauchen Sie einen größeren Notfallfonds?
- Passen Sie Ihren Plan entsprechend an

**Beispiel für einen Wiederaufbauplan:**
- Genutzt: 2.000 €
- Einkommen: 3.000 €/Monat
- Sparbetrag: 500 €/Monat
- Wiederaufgebaut in: 4 Monaten',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'How many months of expenses should an emergency fund cover?',
  'Wie viele Monate an Ausgaben sollte ein Notfallfonds abdecken?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '1 week',
  '1 Woche',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '1 month',
  '1 Monat',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '3-6 months',
  '3-6 Monate',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '10 years',
  '10 Jahre',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Financial experts recommend 3-6 months of living expenses.',
  'Finanzexperten empfehlen 3-6 Monate an Lebenshaltungskosten.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Which is a TRUE emergency for using your emergency fund?',
  'Welcher ist ein ECHTER Notfall für die Nutzung deines Notfallfonds?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'TV is on sale',
  'TV ist im Angebot',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Want to go on vacation',
  'Möchte in den Urlaub fahren',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Car breaks down and you can''t get to work',
  'Auto geht kaputt und du kannst nicht zur Arbeit kommen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'New video game release',
  'Neue Videospiel-Veröffentlichung',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'A car needed for work is a true emergency. Other examples are wants.',
  'Ein Auto, das für die Arbeit benötigt wird, ist ein echter Notfall. Die anderen Beispiele sind Wünsche.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'If your monthly expenses are $2,500, what''s a minimum emergency fund?',
  'Wenn deine monatlichen Ausgaben 2.500 $ betragen, wie hoch ist ein minimaler Notfallfonds?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$2,500',
  '$2.500',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$5,000',
  '$5.000',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$7,500',
  '$7,500',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '$25,000',
  '$25.000',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  '3 months × $2,500 = $7,500 minimum.',
  '3 Monate × 2.500 $ = 7.500 $ Minimum.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'After using emergency fund, what should you do?',
  'Nachdem du deinen Notfallfonds verwendet hast, was solltest du tun?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Forget about it',
  'Vergiss es einfach',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Immediately rebuild it',
  'Sofort wieder aufbauen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Wait a year to rebuild',
  'Warte ein Jahr mit dem Wiederaufbau',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Use it for other things',
  'Es für andere Dinge verwenden',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Rebuild your emergency fund as soon as possible after using it.',
  'Baue deinen Notgroschen so schnell wie möglich wieder auf, nachdem du ihn verwendet hast.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Why might someone need 6+ months of expenses saved?',
  'Warum könnte jemand 6+ Monate an Ausgaben gespart haben müssen?',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'They like big numbers',
  'Sie mögen große Zahlen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Unstable job or single income household',
  'Unsicherer Arbeitsplatz oder Haushalt mit nur einem Einkommen',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Banks require it',
  'Banken verlangen es',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Everyone needs exactly 6 months',
  'Jeder braucht genau 6 Monate',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
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
  'de',
  'Less stable situations warrant larger emergency funds for more protection.',
  'Weniger stabile Situationen erfordern größere Notfallfonds für mehr Schutz.',
  '2026-01-06T01:58:28.884Z',
  '2027-01-06T01:58:28.885Z'
);

-- ========================================
-- VERIFICATION
-- ========================================
SELECT 'Translation completed for de!' as message;
SELECT COUNT(*) as total_translations
FROM "ContentTranslation"
WHERE target_language = 'de';
