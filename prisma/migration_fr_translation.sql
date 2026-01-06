-- Multilingual Translation Migration
-- Inserts translations into ContentTranslation table

-- STEP 1: Drop foreign key constraints to allow insertion
ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_lesson_fkey";

ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_game_fkey";

DELETE FROM "ContentTranslation"
WHERE target_language = 'fr';

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
  'fr',
  'Introduction',
  'Introduction',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# What is Money?

Money is what we use to buy things we need and want. It''s a tool that makes trading easier!

**For Kids:** Money is like tickets at an arcade - you exchange them for prizes!

**For Adults:** Money serves as a medium of exchange, eliminating the inefficiencies of barter systems.',
  '# Qu''est-ce que l''argent ?

L''argent est ce que nous utilisons pour acheter les choses dont nous avons besoin et que nous voulons. C''est un outil qui facilite les échanges !

**Pour les enfants :** L''argent, c''est comme des jetons dans une salle de jeux - tu les échanges contre des prix !

**Pour les adultes :** L''argent sert de moyen d''échange, éliminant les inefficacités des systèmes de troc.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'History of Money',
  'Histoire de l''argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# How Money Started

Long ago, people traded items directly - like trading 5 apples for 1 chicken. This was called **bartering**.

But bartering had problems:
- What if you had apples but the other person didn''t want them?
- How many apples equal one chicken?

So humans invented money to solve these problems!',
  '# Comment l''argent a commencé

Il y a longtemps, les gens échangeaient des objets directement - comme échanger 5 pommes contre 1 poulet. C''était ce qu''on appelait le **troc**.

Mais le troc avait des problèmes :
- Et si vous aviez des pommes mais que l''autre personne n''en voulait pas ?
- Combien de pommes équivalent à un poulet ?

Alors les humains ont inventé l''argent pour résoudre ces problèmes !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why We Use Money',
  '# Pourquoi nous utilisons l''argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Why Money is Useful

Money makes life easier because:

1. **Store of Value** - You can save it for later
2. **Unit of Account** - Everything has a clear price
3. **Medium of Exchange** - Everyone accepts it

Instead of carrying around chickens and apples, you carry money!',
  '# Pourquoi l''argent est utile

L''argent rend la vie plus facile parce que :

1. **Réserve de valeur** - Vous pouvez l''économiser pour plus tard
2. **Unité de compte** - Tout a un prix clair
3. **Moyen d''échange** - Tout le monde l''accepte

Au lieu de transporter des poules et des pommes, vous transportez de l''argent !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Modern Money',
  'Monnaie moderne',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Money Today

Today, money comes in many forms:
- **Physical:** Coins and bills you can touch
- **Digital:** Money in bank accounts and apps
- **Cryptocurrency:** New digital money on the internet

Most people use a mix of all three types!',
  '# L''argent aujourd''hui

Aujourd''hui, l''argent se présente sous plusieurs formes :
- **Physique :** Les pièces et les billets que vous pouvez toucher
- **Numérique :** L''argent dans les comptes bancaires et les applications
- **Cryptomonnaie :** La nouvelle monnaie numérique sur internet

La plupart des gens utilisent un mélange des trois types !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is the main purpose of money?',
  'Quel est le principal objectif de l''argent ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'To make trading easier',
  'Pour faciliter les échanges',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'To be pretty',
  'Pour être joli',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'To collect',
  'Pour collectionner',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'To burn',
  'Brûler',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money was invented to make trading goods and services easier than bartering.',
  'L''argent a été inventé pour faciliter l''échange de biens et de services par rapport au troc.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What was the old way of trading before money?',
  'Quelle était l''ancienne méthode d''échange avant l''argent ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Selling',
  'Vendre',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Bartering',
  'Troc',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Giving away',
  'Donner gratuitement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Stealing',
  'Voler',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Bartering means trading items directly, like 5 apples for 1 chicken.',
  'Le troc signifie échanger des objets directement, comme 5 pommes contre 1 poulet.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which is NOT a form of modern money?',
  'Lequel N''EST PAS une forme de monnaie moderne ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Digital money',
  'Monnaie numérique',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Coins',
  'Pièces de monnaie',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Rocks',
  'Roches',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Cryptocurrency',
  'Cryptomonnaie',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'While some ancient cultures used special rocks as money, regular rocks are not modern currency.',
  'Bien que certaines cultures anciennes aient utilisé des pierres spéciales comme monnaie, les pierres ordinaires ne sont pas une monnaie moderne.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money helps us "store value" means:',
  'L''argent nous aide à « stocker de la valeur » signifie :',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'We can save it for later',
  'Nous pouvons l''économiser pour plus tard',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'We must spend it now',
  'Nous devons le dépenser maintenant',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It loses value quickly',
  'Il perd de la valeur rapidement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It takes up space',
  'Il prend de la place',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Storing value means money keeps its worth over time so you can save it.',
  'Stocker de la valeur signifie que l''argent conserve sa valeur au fil du temps afin que vous puissiez l''épargner.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Coins and Bills',
  'Pièces et billets',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Physical Money

**Coins** are made of metal and usually worth less. They''re good for small purchases like candy or parking meters.

**Bills (Banknotes)** are made of paper or plastic and worth more. They''re lighter and easier to carry than lots of coins.

💡 Fun fact: The ink and paper for bills cost less than 10 cents, but the bill might be worth $100!',
  '# L''argent physique

**Les pièces de monnaie** sont fabriquées en métal et valent généralement moins. Elles sont pratiques pour les petits achats comme des bonbons ou les parcmètres.

**Les billets de banque** sont fabriqués en papier ou en plastique et valent plus. Ils sont plus légers et plus faciles à transporter que beaucoup de pièces.

💡 Le savais-tu : L''encre et le papier pour les billets coûtent moins de 10 cents, mais le billet peut valoir 100 $ !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Digital Money',
  'Monnaie numérique',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Money You Can''t Touch

Most money today is **digital** - it exists as numbers in a computer!

Examples:
- Money in your bank account
- Payment apps like PayPal, Venmo
- Credit card payments
- Mobile wallets like Apple Pay

You never touch this money, but you can still spend it!',
  '# L''argent qu''on ne peut pas toucher

La plupart de l''argent aujourd''hui est **numérique** - il existe sous forme de chiffres dans un ordinateur !

Exemples :
- L''argent sur votre compte bancaire
- Les applications de paiement comme PayPal, Venmo
- Les paiements par carte de crédit
- Les portefeuilles mobiles comme Apple Pay

Vous ne touchez jamais cet argent, mais vous pouvez quand même le dépenser !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Cryptocurrency Basics',
  '# Les bases de la cryptomonnaie',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Un nouveau type d''argent

**La cryptomonnaie** est de l''argent numérique qui utilise du code informatique pour sécuriser les transactions.

Les exemples les plus célèbres :
- Bitcoin (BTC)
- Ethereum (ETH)

**Différences clés :**
- Aucun gouvernement ne la contrôle
- Fonctionne dans tous les pays
- Très sécurisée mais peut être risquée
- Les prix changent beaucoup !

⚠️ Pour les débutants, tenez-vous en à l''argent ordinaire jusqu''à ce que vous en appreniez davantage !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What are coins usually made of?',
  'De quoi sont généralement faites les pièces de monnaie ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Paper',
  'Papier',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Metal',
  'Métal',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Plastic',
  'Plastique',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Wood',
  'Bois',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Coins are made of metal, which makes them durable and hard to counterfeit.',
  'Les pièces de monnaie sont faites de métal, ce qui les rend durables et difficiles à contrefaire.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which is an example of digital money?',
  'Quel est un exemple de monnaie numérique ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A $10 bill',
  'Un billet de 10 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A quarter',
  'Un quart de dollar',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Your bank account balance',
  'Le solde de votre compte bancaire',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Gold bars',
  'Lingots d''or',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Bank account balances are digital money - they exist as electronic records.',
  'Les soldes de comptes bancaires sont de l''argent numérique - ils existent sous forme d''enregistrements électroniques.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is true about cryptocurrency?',
  'Qu''est-ce qui est vrai au sujet de la cryptomonnaie ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It is controlled by governments',
  'Il est contrôlé par les gouvernements',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It never changes in value',
  'La valeur ne change jamais',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It uses computer code for security',
  'Il utilise du code informatique pour la sécurité',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'You can hold it in your hand',
  'Vous pouvez le tenir dans votre main',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Cryptocurrency uses advanced computer code (cryptography) to secure transactions.',
  'La cryptomonnaie utilise un code informatique avancé (cryptographie) pour sécuriser les transactions.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why is digital money convenient?',
  'Pourquoi l''argent numérique est-il pratique ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'You can carry large amounts easily',
  'Vous pouvez transporter de grandes sommes facilement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It weighs a lot',
  'Il pèse lourd',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It can get wet',
  'Il peut être mouillé',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'You must count it manually',
  'Vous devez le compter manuellement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Digital money is convenient because you can have millions in your account without physical storage.',
  'L''argent numérique est pratique car vous pouvez avoir des millions sur votre compte sans stockage physique.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Supply and Demand',
  'L''offre et la demande',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# What Makes Money Valuable?

Money has value because of **supply and demand**:

**Supply** = How much money exists
**Demand** = How many people want it

If everyone wants dollars and there aren''t many, dollars are valuable.
If there are too many dollars, each one is worth less.

Think of it like rare trading cards - rare cards are more valuable!',
  '# Qu''est-ce qui rend l''argent précieux ?

L''argent a de la valeur en raison de **l''offre et de la demande** :

**L''offre** = La quantité d''argent qui existe
**La demande** = Le nombre de personnes qui le veulent

Si tout le monde veut des dollars et qu''il n''y en a pas beaucoup, les dollars ont de la valeur.
S''il y a trop de dollars, chacun vaut moins.

Pense aux cartes à collectionner rares - les cartes rares ont plus de valeur !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Government Role',
  'Rôle du gouvernement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Who Controls Money?

Governments and central banks control how much money exists:

- **Print too much** = Money becomes less valuable (inflation)
- **Print too little** = Hard to do business (deflation)

They try to keep the amount "just right" so the economy stays healthy.

This is why you can''t just print money at home - it would make money worthless!',
  '# Qui contrôle l''argent ?

Les gouvernements et les banques centrales contrôlent la quantité d''argent en circulation :

- **Imprimer trop** = L''argent perd de la valeur (inflation)
- **Imprimer trop peu** = Difficile de faire des affaires (déflation)

Ils essaient de maintenir la quantité « juste comme il faut » pour que l''économie reste saine.

C''est pourquoi on ne peut pas simplement imprimer de l''argent chez soi - cela rendrait l''argent sans valeur !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Trust in Money',
  'La confiance en l''argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Why We Trust Money

Money only works if people trust it!

We trust money because:
1. The government says it''s legal
2. Stores accept it
3. We can pay taxes with it
4. It has security features (hard to fake)

If people stopped trusting it, money would become just paper or numbers.',
  '# Pourquoi nous faisons confiance à l''argent

L''argent ne fonctionne que si les gens lui font confiance !

Nous faisons confiance à l''argent parce que :
1. Le gouvernement dit qu''il est légal
2. Les magasins l''acceptent
3. Nous pouvons payer nos impôts avec
4. Il possède des éléments de sécurité (difficile à contrefaire)

Si les gens cessaient de lui faire confiance, l''argent ne serait plus que du papier ou des chiffres.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What happens if a government prints too much money?',
  'Que se passe-t-il si un gouvernement imprime trop d''argent ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Everyone becomes rich',
  'Tout le monde devient riche',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money becomes less valuable',
  'L''argent perd de sa valeur',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money becomes more valuable',
  'L''argent prend de la valeur',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Nothing changes',
  'Rien ne change',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Printing too much money causes inflation - each dollar is worth less.',
  'Imprimer trop d''argent provoque de l''inflation - chaque dollar vaut moins.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Supply and demand means:',
  'L''offre et la demande signifie :',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How much exists and how many want it',
  'L''offre disponible et la demande du marché',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Where to buy things',
  'Où acheter des choses',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How to save money',
  'Comment économiser de l''argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Types of currency',
  'Types de devises',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Supply is how much exists, demand is how many people want it.',
  'L''offre représente la quantité disponible, la demande représente le nombre de personnes qui le veulent.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why can''t you just print your own money?',
  'Pourquoi ne peux-tu pas simplement imprimer ton propre argent ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It would make all money worthless',
  'Cela rendrait tout l''argent sans valeur',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Printers are expensive',
  'Les imprimantes coûtent cher',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Paper is hard to find',
  'Le papier est difficile à trouver',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'You can, it''s allowed',
  'Vous pouvez, c''est autorisé',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If everyone could print money, there would be too much supply and it would lose value.',
  'Si tout le monde pouvait imprimer de l''argent, il y aurait trop d''offre et il perdrait sa valeur.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money has value primarily because:',
  'L''argent a de la valeur principalement parce que :',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s pretty',
  'C''est joli',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'People trust and accept it',
  'Les gens lui font confiance et l''acceptent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s made of precious materials',
  'Il est fait de matériaux précieux',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s rare',
  'C''est rare',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money''s value comes from collective trust and acceptance in society.',
  'La valeur de l''argent provient de la confiance collective et de l''acceptation dans la société.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What role do governments play with money?',
  'Quel rôle les gouvernements jouent-ils avec l''argent ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They determine fashion trends',
  'Ils déterminent les tendances de la mode',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They control the supply',
  'Ils contrôlent l''offre',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They force you to spend',
  'Ils vous obligent à dépenser',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Nothing at all',
  'Aucun rôle',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Governments and central banks control how much money is in circulation.',
  'Les gouvernements et les banques centrales contrôlent la quantité d''argent en circulation.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Major Currencies',
  '# Principales devises',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# World Money

Different countries use different money!

**Major World Currencies:**
- 🇺🇸 US Dollar (USD) - Most widely used
- 🇪🇺 Euro (EUR) - Used in many European countries
- 🇬🇧 British Pound (GBP) - Used in United Kingdom
- 🇯🇵 Japanese Yen (JPY) - Used in Japan
- 🇨🇳 Chinese Yuan (CNY) - Used in China

Each has its own symbol and value!',
  '# L''argent dans le monde

Différents pays utilisent différentes monnaies !

**Principales devises mondiales :**
- 🇺🇸 Dollar américain (USD) - La plus utilisée
- 🇪🇺 Euro (EUR) - Utilisé dans de nombreux pays européens
- 🇬🇧 Livre sterling (GBP) - Utilisée au Royaume-Uni
- 🇯🇵 Yen japonais (JPY) - Utilisé au Japon
- 🇨🇳 Yuan chinois (CNY) - Utilisé en Chine

Chacune a son propre symbole et sa propre valeur !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Exchange Rates',
  'Taux de change',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Échanger de l''argent entre les pays

**Les taux de change** indiquent combien vaut une devise dans une autre.

Exemple :
1 USD = 0,85 EUR

Cela signifie qu''un dollar américain peut être échangé contre 0,85 euro.

**Les taux de change changent quotidiennement** en fonction de :
- La force de chaque économie
- Les taux d''intérêt
- La stabilité politique
- L''offre et la demande',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'International Trade',
  'Commerce international',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Why Exchange Rates Matter

When countries trade with each other, they need to exchange currencies:

- A US company buying products from Japan needs Yen
- A European tourist in America needs Dollars
- Online shopping from other countries requires conversion

**Strong currency** = Your money buys more in other countries
**Weak currency** = Your money buys less abroad

This affects travel, shopping, and business!',
  '# Pourquoi les taux de change sont importants

Quand les pays font du commerce entre eux, ils doivent échanger leurs devises :

- Une entreprise américaine achetant des produits au Japon a besoin de Yens
- Un touriste européen en Amérique a besoin de Dollars
- Les achats en ligne dans d''autres pays nécessitent une conversion

**Devise forte** = Votre argent achète plus dans d''autres pays
**Devise faible** = Votre argent achète moins à l''étranger

Cela affecte les voyages, les achats et les affaires !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is the currency used in most European countries?',
  'Quelle est la monnaie utilisée dans la plupart des pays européens ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Dollar',
  'Dollar',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Euro',
  'Euro',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Pound',
  'Livre',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Peso',
  'Peso',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'The Euro (EUR) is used by 20 European Union countries.',
  'L''euro (EUR) est utilisé par 20 pays de l''Union européenne.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What does an exchange rate tell you?',
  'Que vous indique un taux de change ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How fast money grows',
  'Quelle est la vitesse de croissance de l''argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Where to shop',
  'Où faire ses achats',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How much one currency is worth in another',
  'Combien vaut une devise dans une autre devise',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How to save money',
  'Comment économiser de l''argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Exchange rates show the value of one currency compared to another.',
  'Les taux de change montrent la valeur d''une devise par rapport à une autre.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If 1 USD = 100 JPY, how many yen is $5?',
  'Si 1 USD = 100 JPY, combien de yens représentent 5 $ ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '50 yen',
  '50 yens',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '100 yen',
  '100 yens',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '500 yen',
  '500 yens',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '5 yen',
  '5 yens',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '5 dollars × 100 yen per dollar = 500 yen.',
  '5 dollars × 100 yens par dollar = 500 yens.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'When would you need to exchange currency?',
  'Quand auriez-vous besoin d''échanger de la monnaie ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Traveling to another country',
  'Voyager dans un autre pays',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Shopping at local stores',
  'Faire des achats dans les magasins locaux',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Paying bills at home',
  'Payer des factures à la maison',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Saving money',
  'Économiser de l''argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'You need to exchange currency when traveling abroad or buying from international sellers.',
  'Vous devez échanger de la monnaie lorsque vous voyagez à l''étranger ou achetez auprès de vendeurs internationaux.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What makes a currency "strong"?',
  'Qu''est-ce qui rend une monnaie « forte » ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s made of strong materials',
  'Elle est fabriquée avec des matériaux solides',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It buys more in other countries',
  'Il permet d''acheter plus dans d''autres pays',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s heavy',
  'C''est lourd',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s colorful',
  'C''est coloré',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A strong currency has high purchasing power in international markets.',
  'Une monnaie forte a un pouvoir d''achat élevé sur les marchés internationaux.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is Inflation',
  'Qu''est-ce que l''inflation',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Quand les choses deviennent plus chères

**L''inflation** signifie que les prix augmentent avec le temps.

Exemple :
- 1990 : Une barre de chocolat coûtait 0,50 $
- 2025 : La même barre de chocolat coûte 1,50 $

Votre argent achète moins qu''avant !

**Pourquoi cela se produit :**
- Plus d''argent en circulation
- Demande plus élevée pour les produits
- Coûts de production accrus

Une certaine inflation (2-3 % par an) est normale et saine.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How Inflation Affects You',
  'Comment l''inflation vous affecte',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Votre argent perd de la valeur

**Le pouvoir d''achat** = Ce que vous pouvez acheter avec votre argent

Avec l''inflation :
- 100 $ aujourd''hui achètent plus que 100 $ l''année prochaine
- L''épargne perd de la valeur si elle reste simplement dans un bocal
- Les salaires doivent augmenter pour suivre le rythme

**Exemple :**
Si l''inflation est de 3 % par an :
- 100 $ aujourd''hui = 97 $ de pouvoir d''achat l''année prochaine
- 100 $ aujourd''hui = 94 $ de pouvoir d''achat dans 2 ans

C''est pourquoi les grands-parents disent « les choses étaient moins chères à mon époque » - c''était vrai !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Protecting Against Inflation',
  'Protéger contre l''inflation',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Comment lutter contre l''inflation

Ne laisse pas l''inflation dévorer ton argent ! Voici comment :

**1. Place ton argent dans des comptes d''épargne avec intérêts**
- Les intérêts aident l''argent à croître
- Compense une partie de l''inflation

**2. Investis dans des actions, des obligations ou de l''immobilier**
- Ces placements croissent souvent plus vite que l''inflation
- Plus risqué mais protège le pouvoir d''achat

**3. Augmente tes revenus**
- Demande des augmentations
- Apprends de nouvelles compétences
- Lance une activité secondaire

**4. Établis un budget judicieux**
- Suis où va ton argent
- Trouve de meilleures offres
- Réduis les dépenses inutiles

Rappelle-toi : L''argent liquide sous ton matelas perd de la valeur chaque année !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is inflation?',
  'Qu''est-ce que l''inflation ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'When prices go down',
  'Quand les prix baissent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'When prices go up over time',
  'Quand les prix augmentent avec le temps',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'When money is printed',
  'Quand de l''argent est imprimé',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'When people save money',
  'Quand les gens économisent de l''argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Inflation is the general increase in prices over time.',
  'L''inflation est l''augmentation générale des prix au fil du temps.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If inflation is 5% and you have $100 in cash for a year, what happens?',
  'Si l''inflation est de 5 % et que vous avez 100 $ en espèces pendant un an, que se passe-t-il ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'You can buy 5% more',
  'Vous pouvez acheter 5 % de plus',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'You can buy the same amount',
  'Vous pouvez acheter la même quantité',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'You can buy 5% less',
  'Vous pouvez acheter 5 % de moins',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Your money disappears',
  'Votre argent disparaît',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'With 5% inflation, your $100 loses 5% of purchasing power.',
  'Avec une inflation de 5 %, vos 100 $ perdent 5 % de leur pouvoir d''achat.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why do prices tend to increase over time?',
  'Pourquoi les prix ont-ils tendance à augmenter avec le temps ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Stores want more profit only',
  'Les magasins veulent seulement plus de profit',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Due to inflation and increased costs',
  'En raison de l''inflation et de l''augmentation des coûts',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Because money becomes stronger',
  'Parce que l''argent devient plus fort',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s random',
  'C''est aléatoire',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Prices increase due to inflation, which comes from various economic factors.',
  'Les prix augmentent en raison de l''inflation, qui provient de divers facteurs économiques.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is a good way to protect against inflation?',
  'Quelle est une bonne façon de se protéger contre l''inflation ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Hide cash under your mattress',
  'Cacher de l''argent sous votre matelas',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Spend all your money immediately',
  'Dépenser tout son argent immédiatement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Invest in assets that grow',
  'Investir dans des actifs qui croissent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Do nothing',
  'Ne rien faire',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Investing in growing assets helps maintain or increase purchasing power.',
  'Investir dans des actifs en croissance aide à maintenir ou augmenter le pouvoir d''achat.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is "purchasing power"?',
  'Qu''est-ce que le « pouvoir d''achat » ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How strong you are',
  'La force que vous avez',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What you can buy with your money',
  'Ce que tu peux acheter avec ton argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Your job title',
  'Votre titre de poste',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How much money you earn',
  'Le montant d''argent que vous gagnez',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Purchasing power is what your money can actually buy.',
  'Le pouvoir d''achat est ce que votre argent peut réellement acheter.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Is some inflation considered normal?',
  'L''inflation est-elle considérée comme normale dans une certaine mesure ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'No, inflation is always bad',
  'Non, l''inflation est toujours mauvaise',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Yes, 2-3% annual inflation is normal',
  'Oui, une inflation annuelle de 2 à 3 % est normale',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Only in poor countries',
  'Seulement dans les pays pauvres',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Inflation never happens',
  'L''inflation ne se produit jamais',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Moderate inflation of 2-3% per year is normal and indicates economic growth.',
  'Une inflation modérée de 2 à 3 % par an est normale et indique une croissance économique.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Jobs and Careers',
  'Emplois et carrières',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Working for Money

**Active income** = Money you earn by working

Types of jobs:
- **Employee:** Work for a company (steady paycheck)
- **Freelancer:** Work for yourself (multiple clients)
- **Contractor:** Work on specific projects

**For kids:** Chores, lawn mowing, pet sitting
**For adults:** Full-time jobs, part-time work, consulting',
  '# Travailler pour gagner de l''argent

**Revenu actif** = Argent que vous gagnez en travaillant

Types d''emplois :
- **Employé :** Travailler pour une entreprise (salaire régulier)
- **Travailleur autonome :** Travailler pour soi-même (plusieurs clients)
- **Contractuel :** Travailler sur des projets spécifiques

**Pour les enfants :** Tâches ménagères, tonte de pelouse, garde d''animaux
**Pour les adultes :** Emplois à temps plein, travail à temps partiel, consultation',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Self-Employment',
  'Travail autonome',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Being Your Own Boss

**Self-employment** means working for yourself!

Examples:
- Start a small business
- Offer services (tutoring, cleaning, design)
- Sell products online
- Create content (YouTube, blog)

**Pros:** Flexibility, unlimited earning potential
**Cons:** No steady paycheck, more responsibility',
  '# Être son propre patron

**Le travail autonome** signifie travailler pour soi-même !

Exemples :
- Démarrer une petite entreprise
- Offrir des services (tutorat, ménage, design)
- Vendre des produits en ligne
- Créer du contenu (YouTube, blogue)

**Avantages :** Flexibilité, potentiel de revenus illimité
**Inconvénients :** Pas de salaire stable, plus de responsabilités',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Passive Income',
  'Revenus passifs',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '# Money While You Sleep

**Passive income** = Earning money without active work

Examples:
- Rental properties (rent from tenants)
- Investments (dividends from stocks)
- Royalties (from books, music, patents)
- Online courses (sell once, earn forever)

Note: Usually requires upfront work or money to start!',
  '# De l''argent pendant que vous dormez

**Le revenu passif** = Gagner de l''argent sans travail actif

Exemples :
- Propriétés locatives (loyer des locataires)
- Investissements (dividendes des actions)
- Redevances (provenant de livres, musique, brevets)
- Cours en ligne (vendre une fois, gagner pour toujours)

Remarque : Nécessite généralement un travail ou de l''argent initial pour démarrer !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is active income?',
  'Qu''est-ce que le revenu actif ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money earned by working',
  'Argent gagné en travaillant',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money earned while sleeping',
  'Argent gagné en dormant',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money from investments',
  'Argent provenant des investissements',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money found on the street',
  'L''argent trouvé dans la rue',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Active income is money earned through active work and effort.',
  'Le revenu actif est l''argent gagné grâce à un travail et des efforts actifs.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which is an example of passive income?',
  'Quel est un exemple de revenu passif ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Your salary from a job',
  'Votre salaire d''un emploi',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Payment for mowing a lawn',
  'Paiement pour tondre une pelouse',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Rent from a property you own',
  'Loyer d''une propriété que vous possédez',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Allowance from parents',
  'Argent de poche des parents',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Rental income is passive - you earn it without active daily work.',
  'Le revenu locatif est passif - vous le gagnez sans travail actif quotidien.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What does self-employment mean?',
  'Que signifie le travail indépendant ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Working for a big company',
  'Travailler pour une grande entreprise',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Working for yourself',
  'Travailler pour soi-même',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Being unemployed',
  'Être au chômage',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Working part-time',
  'Travailler à temps partiel',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Self-employment means you are your own boss and work for yourself.',
  'Le travail indépendant signifie que vous êtes votre propre patron et que vous travaillez pour vous-même.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which is true about passive income?',
  'Qu''est-ce qui est vrai à propos du revenu passif ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It requires no effort ever',
  'Il ne nécessite aucun effort, jamais',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Anyone can start immediately with no money',
  'N''importe qui peut commencer immédiatement sans argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It often requires upfront work or investment',
  'Il nécessite souvent un travail ou un investissement initial',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It always earns more than active income',
  'Il rapporte toujours plus que le revenu actif',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Passive income streams usually require initial work or capital to establish.',
  'Les sources de revenus passifs nécessitent généralement un travail initial ou un capital pour être mises en place.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Gross vs Net Income',
  '# Revenu brut vs revenu net',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Combien gagnez-vous réellement ?

**Revenu brut** = Montant total avant toute déduction
**Revenu net** = Argent que vous recevez réellement (après impôts et déductions)

Exemple :
- Brut : 1 000 $
- Impôts : -200 $
- Assurance santé : -50 $
- Retraite : -50 $
- **Net (à emporter) : 700 $**

Concentrez-vous toujours sur le revenu net lors de l''établissement de votre budget !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Salary vs Hourly',
  'Salaire vs Horaire',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Deux façons d''être payé

**Salaire fixe :**
- Montant fixe par an
- Exemple : 50 000 $/an
- Même paie chaque mois
- Inclut souvent des avantages sociaux

**Salaire horaire :**
- Payé à l''heure travaillée
- Exemple : 15 $/heure
- La paie varie selon les heures travaillées
- Peut inclure des heures supplémentaires (taux de 1,5x ou 2x)

Aucun n''est « meilleur » - cela dépend de l''emploi !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Benefits and Bonuses',
  'Avantages et primes',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Plus qu''une simple rémunération

**Avantages** = Rémunération supplémentaire au-delà du salaire

Avantages courants :
- Assurance santé
- Cotisations retraite (abondement de l''employeur)
- Jours de congés payés
- Congés maladie
- Développement professionnel

**Primes :**
- Paiements supplémentaires pour bonne performance
- Primes de fin d''année
- Commission (rémunération basée sur les ventes)
- Participation aux bénéfices

Les avantages peuvent représenter 20 à 30 % de votre salaire !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is net income?',
  'Qu''est-ce que le revenu net ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Total income before deductions',
  'Revenu total avant déductions',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money you take home after deductions',
  'L''argent que vous recevez après les déductions',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money from the internet',
  'L''argent provenant d''Internet',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Bonus payments',
  'Primes',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Net income is what you actually receive after taxes and deductions.',
  'Le revenu net est ce que vous recevez réellement après impôts et déductions.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If your gross income is $2,000 and $400 is deducted, what is your net income?',
  'Si votre revenu brut est de 2 000 $ et que 400 $ sont déduits, quel est votre revenu net ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$2,400',
  '$2,400',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$2,000',
  '$2,000',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$1,600',
  '$1,600',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$400',
  '$400',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Net income = Gross - Deductions = $2,000 - $400 = $1,600.',
  'Revenu net = Revenu brut - Déductions = 2 000 $ - 400 $ = 1 600 $.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is a benefit of hourly pay?',
  'Quel est un avantage de la rémunération horaire ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Same paycheck every month',
  'Même salaire chaque mois',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Can earn overtime pay',
  'Possibilité de gagner des heures supplémentaires',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Always includes health insurance',
  'Inclut toujours une assurance maladie',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Never changes',
  'Ne change jamais',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Hourly workers often earn overtime (extra pay) for working extra hours.',
  'Les travailleurs horaires reçoivent souvent des heures supplémentaires (rémunération supplémentaire) pour les heures de travail en plus.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which is NOT typically a job benefit?',
  'Qu''est-ce qui N''est PAS généralement un avantage lié à l''emploi ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Health insurance',
  'Assurance maladie',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Paid vacation',
  'Vacances payées',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Free groceries',
  'Épicerie gratuite',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '401k matching',
  'Cotisation de contrepartie au régime 401(k)',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Free groceries are not a standard job benefit, unlike insurance or retirement contributions.',
  'Les courses gratuites ne sont pas un avantage professionnel standard, contrairement à l''assurance ou aux cotisations de retraite.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Finding Opportunities',
  'Trouver des opportunités',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Où chercher du travail

**Pour les jeunes :**
- Demander à la famille et aux voisins
- Vérifier les magasins locaux pour les panneaux « Nous embauchons »
- Tableaux d''affichage d''emploi de l''école
- Centres communautaires

**Pour les adultes :**
- Sites d''emploi en ligne (LinkedIn, Indeed)
- Sites web des entreprises
- Événements de réseautage
- Agences de recrutement
- Contacts professionnels

Astuce : Beaucoup d''emplois se trouvent grâce aux personnes que vous connaissez !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Interview Skills',
  'Compétences en entretien d''embauche',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Faire bonne impression

**Avant l''entretien :**
- Renseignez-vous sur l''entreprise
- Préparez des réponses aux questions courantes
- Choisissez des vêtements appropriés
- Arrivez 10 minutes en avance

**Pendant l''entretien :**
- Serrez la main fermement
- Établissez un contact visuel
- Parlez clairement et avec assurance
- Posez des questions réfléchies
- Montrez de l''enthousiasme

**Après l''entretien :**
- Envoyez un courriel de remerciement dans les 24 heures
- Faites un suivi si vous n''avez pas eu de nouvelles après une semaine',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'First Day Tips',
  'Conseils pour le premier jour',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Bien commencer

**Votre premier jour :**
- Arrivez en avance
- Apportez un cahier et un stylo
- Posez des questions (cela montre que vous êtes intéressé !)
- Apprenez les noms de vos collègues
- Observez la culture du milieu de travail
- Prenez des notes sur les procédures

**Première semaine/premier mois :**
- Soyez fiable (arrivez à l''heure)
- Prenez des initiatives
- Acceptez les commentaires avec grâce
- N''ayez pas peur d''admettre vos erreurs
- Établissez des relations avec vos collègues

Rappelez-vous : tout le monde a été nouveau un jour. Les gens veulent que vous réussissiez !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What should you do before a job interview?',
  'Que devriez-vous faire avant un entretien d''embauche ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Nothing, just show up',
  'Rien, se présenter simplement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Research the company',
  'Faire des recherches sur l''entreprise',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Memorize your resume',
  'Mémoriser votre CV',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Bring your parents',
  'Amener vos parents',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Researching the company shows you''re serious and helps you answer questions better.',
  'Faire des recherches sur l''entreprise montre que vous êtes sérieux et vous aide à mieux répondre aux questions.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How early should you arrive for an interview?',
  'Combien de temps à l''avance devriez-vous arriver pour un entretien ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '1 hour early',
  '1 heure à l''avance',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Exactly on time',
  'Exactement à l''heure',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '10 minutes early',
  '10 minutes à l''avance',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '10 minutes late',
  '10 minutes de retard',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Arriving 10 minutes early shows punctuality without being too early.',
  'Arriver 10 minutes à l''avance démontre de la ponctualité sans être trop en avance.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What does "networking" mean when job hunting?',
  'Que signifie le « réseautage » lors de la recherche d''emploi ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Using the internet',
  'Utiliser Internet',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Building professional connections',
  'Développer des relations professionnelles',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Working with computers',
  'Travailler avec des ordinateurs',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Social media posting',
  'Publication sur les réseaux sociaux',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Networking is building relationships with people who can help your career.',
  'Le réseautage consiste à établir des relations avec des personnes qui peuvent vous aider dans votre carrière.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'On your first day, you should:',
  'Le premier jour, vous devriez :',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Pretend to know everything',
  'Faire semblant de tout savoir',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Stay quiet and don''t ask questions',
  'Rester silencieux et ne pas poser de questions',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Ask questions and take notes',
  'Poser des questions et prendre des notes',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Leave early to avoid mistakes',
  'Partir tôt pour éviter les erreurs',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Asking questions and taking notes shows you want to learn and do well.',
  'Poser des questions et prendre des notes montre que vous voulez apprendre et bien faire.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why Diversify',
  'Pourquoi diversifier',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Ne mets pas tous tes œufs dans le même panier

**Pourquoi avoir plusieurs sources de revenus est important :**

1. **Sécurité :** Si tu perds une source, tu en as d''autres
2. **Croissance :** Plusieurs sources = plus de revenus au total
3. **Liberté :** Moins dépendant d''un seul employeur
4. **Opportunités :** Apprendre de nouvelles compétences

**Exemple concret :**
Sarah a :
- Emploi à temps plein : 50 000 $/an
- Tutorat le week-end : 5 000 $/an
- Propriété locative : 10 000 $/an
- Total : 65 000 $/an avec des plans de secours !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Side Hustles',
  'Activités complémentaires',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Idées de revenus supplémentaires

**Activités secondaires populaires :**

**En ligne :**
- Rédaction, design, programmation en freelance
- Tutorat en ligne
- Vendre des objets artisanaux sur Etsy
- Création de contenu YouTube
- Marketing d''affiliation

**Hors ligne :**
- Chauffeur de covoiturage (Uber, Lyft)
- Livraison de repas
- Garde d''animaux/promenade de chiens
- Réparations à domicile/services de bricolage
- Photographie d''événements

**Conseils :**
- Commencez petit, développez progressivement
- Choisissez quelque chose qui vous plaît
- Ne vous épuisez pas
- Suivez vos revenus et dépenses',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Investment Income',
  'Revenus de placement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# L''argent qui génère de l''argent

**Types de revenus d''investissement :**

**1. Dividendes :**
- Les entreprises paient les actionnaires
- Généralement trimestriels
- Peuvent être réinvestis ou reçus en espèces

**2. Intérêts :**
- Des comptes d''épargne
- Les obligations versent des intérêts
- Généralement à risque plus faible

**3. Gains en capital :**
- Vendre des investissements avec profit
- Acheter une action à 50 $, vendre à 100 $ = 50 $ de gain
- Peut être risqué

**4. Revenus locatifs :**
- Posséder une propriété, louer à des locataires
- Nécessite un capital initial important
- Entretien continu nécessaire

**Clé :** Commencez à investir tôt, même de petits montants croissent avec le temps !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why is having multiple income streams beneficial?',
  'Pourquoi est-il avantageux d''avoir plusieurs sources de revenus ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s more complicated',
  'C''est plus compliqué',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Provides financial security if one source fails',
  'Offre une sécurité financière si une source fait défaut',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'You work less',
  'Vous travaillez moins',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s required by law',
  'C''est exigé par la loi',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Multiple income streams provide security - if one stops, you still have others.',
  'Les sources de revenus multiples offrent de la sécurité - si l''une s''arrête, vous en avez encore d''autres.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is a "side hustle"?',
  'Qu''est-ce qu''une "activité secondaire" ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Your main job',
  'Votre emploi principal',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A dance move',
  'Un mouvement de danse',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Extra work for additional income',
  'Travail supplémentaire pour un revenu additionnel',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A type of investment',
  'Un type d''investissement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A side hustle is extra work outside your main job to earn more money.',
  'Un side hustle est un travail supplémentaire en dehors de ton emploi principal pour gagner plus d''argent.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What are dividends?',
  'Que sont les dividendes ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money companies pay shareholders',
  'L''argent que les entreprises versent aux actionnaires',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Bank fees',
  'Frais bancaires',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Types of savings accounts',
  'Types de comptes d''épargne',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Job bonuses',
  'Primes de travail',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Dividends are payments companies make to shareholders from profits.',
  'Les dividendes sont des paiements que les entreprises versent aux actionnaires à partir de leurs bénéfices.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which is considered passive investment income?',
  'Quel type de revenu est considéré comme un revenu de placement passif ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Salary from your job',
  'Salaire de votre emploi',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Dividends from stocks',
  'Dividendes d''actions',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Payment for freelance work',
  'Paiement pour du travail indépendant',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Tips from waiting tables',
  'Pourboires reçus en tant que serveur',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Dividends are passive income - you earn them without active daily work.',
  'Les dividendes sont un revenu passif - vous les gagnez sans travail actif quotidien.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'When starting a side hustle, you should:',
  'Lorsque vous démarrez une activité complémentaire, vous devez :',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Quit your main job immediately',
  'Quitter immédiatement votre emploi principal',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Start small and grow gradually',
  'Commencer modestement et croître progressivement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Ignore tracking income',
  'Ignorer le suivi des revenus',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Never tell anyone',
  'Ne jamais en parler à personne',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s smart to start small, test the market, and grow sustainably.',
  'Il est judicieux de commencer modestement, de tester le marché et de croître de manière durable.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Essential Expenses',
  'Dépenses essentielles',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Ce dont vous avez besoin pour survivre

**Besoins** = Choses nécessaires à la survie et au bien-être de base

Les vrais besoins :
- Nourriture et eau
- Abri (logement)
- Vêtements (adaptés à la météo)
- Soins de santé
- Transport de base (pour le travail/l''école)
- Services publics (électricité, eau, chauffage)

**Pour les enfants :** Fournitures scolaires, nourriture saine
**Pour les adultes :** Hypothèque/loyer, assurance, épicerie de base',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Discretionary Spending',
  'Dépenses discrétionnaires',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Les choses qui améliorent la vie

**Les envies** = Choses qui améliorent la vie mais ne sont pas nécessaires à la survie

Exemples :
- Repas au restaurant (vous pouvez cuisiner à la maison)
- Téléphone dernier cri (un modèle plus ancien fonctionne)
- Vêtements de marque (des vêtements ordinaires vous habillent)
- Services de streaming
- Vacances
- Jouets et jeux

Les envies ne sont pas mauvaises ! Mais les besoins passent en premier.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Making Choices',
  'Faire des choix',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# La Zone Grise Délicate

Certains achats sont les deux à la fois :

**Téléphone :**
- Besoin : Téléphone de base pour la sécurité/le travail
- Envie : Modèle haut de gamme à 1 200 $

**Nourriture :**
- Besoin : Repas nutritifs
- Envie : Restaurant coûteux tous les jours

**Vêtements :**
- Besoin : Manteau chaud en hiver
- Envie : Manteau de marque de luxe

**Dépenser intelligemment = Répondre aux besoins d''abord, profiter des envies selon le budget**',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which of these is a true NEED?',
  'Lequel de ces éléments est un véritable BESOIN ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Designer sneakers',
  'Chaussures de sport de marque',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Basic shelter',
  'Logement de base',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Video games',
  'Jeux vidéo',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Vacation',
  'Vacances',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Shelter is essential for survival, making it a need.',
  'L''abri est essentiel à la survie, ce qui en fait un besoin.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which is a WANT?',
  'Qu''est-ce qui est un DÉSIR ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Medicine when sick',
  'Médicament quand on est malade',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Water to drink',
  'Eau à boire',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Streaming service subscription',
  'Abonnement à un service de streaming',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Winter coat in cold climate',
  'Manteau d''hiver dans un climat froid',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Streaming services are entertainment wants, not survival needs.',
  'Les services de streaming sont des envies de divertissement, pas des besoins de survie.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why is it important to identify needs vs wants?',
  'Pourquoi est-il important d''identifier les besoins et les désirs ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'To never enjoy anything',
  'Pour ne jamais profiter de quoi que ce soit',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'To prioritize spending wisely',
  'Pour prioriser les dépenses de manière judicieuse',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Wants are illegal',
  'Les désirs sont illégaux',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Needs are free',
  'Les besoins sont gratuits',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Identifying needs vs wants helps you spend money on essentials first.',
  'Identifier les besoins par rapport aux désirs vous aide à dépenser de l''argent d''abord pour l''essentiel.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A $1,200 phone when a $300 phone works is an example of:',
  'Un téléphone à 1 200 $ alors qu''un téléphone à 300 $ fonctionne est un exemple de :',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A need',
  'Un besoin',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Smart spending',
  'Dépense intelligente',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Upgrading a need to a want',
  'Transformer un besoin en envie',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Required spending',
  'Dépense nécessaire',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'The basic phone is the need; the expensive one adds want features.',
  'Le téléphone de base est le besoin ; le modèle coûteux ajoute des caractéristiques liées aux envies.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Comparing Prices',
  'Comparer les prix',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Trouver la meilleure offre

**Conseils pour comparer les prix :**

1. **Vérifier plusieurs magasins** - Même article, prix différents
2. **Utiliser des sites de comparaison de prix** - Google Shopping, CamelCamelCamel
3. **Considérer le prix unitaire** - Prix par once, par article
4. **Observer les cycles de soldes** - Les produits électroniques baissent de prix avant les nouveaux modèles

**Exemple :**
Céréales A : 4 $ pour 12 oz = 0,33 $/oz
Céréales B : 5 $ pour 18 oz = 0,28 $/oz

Les céréales B sont la meilleure offre !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Coupons and Discounts',
  '# Coupons et réductions',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Économies gratuites

**Où trouver des offres :**
- Applications de magasins et programmes de fidélité
- Bulletins d''information par courriel
- Sites web de coupons (RetailMeNot, Honey)
- Réductions pour étudiants/aînés
- Cartes de crédit avec remise en argent
- Offres d''achat groupé (achetez-en un, obtenez-en un)

**Règles pour les coupons :**
✅ Utilisez-les uniquement pour ce dont vous avez vraiment besoin
❌ N''achetez pas seulement parce que c''est en solde
✅ Cumulez les coupons lorsque c''est possible
❌ Ne laissez pas les coupons expirer sans les utiliser

Économiser 1 $ sur quelque chose dont vous n''avez pas besoin = gaspiller de l''argent !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Avoiding Impulse Buys',
  'Éviter les achats impulsifs',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Arrêtez-vous et réfléchissez d''abord

**L''achat impulsif** = Acheter sans planifier, généralement de manière émotionnelle

**Comment y résister :**

1. **La règle des 24 heures** - Attendez un jour avant d''acheter ce que vous désirez
2. **Faites une liste** - N''achetez que ce qui est sur la liste
3. **Évitez de faire des achats quand vous êtes émotif** - Triste, heureux ou qui s''ennuie
4. **Désabonnez-vous des courriels publicitaires**
5. **Laissez vos cartes de crédit à la maison** - Utilisez de l''argent comptant pour les achats discrétionnaires
6. **Calculez le coût en heures de travail** - « Des chaussures à 100 $ = 5 heures de travail. Ça en vaut la peine ? »

**Astuces des magasins à surveiller :**
- Bonbons à la caisse (tentation)
- « Offre pour une durée limitée ! » (fausse urgence)
- Panneaux de soldes partout (pas toujours de vraies aubaines)
- Odeurs/musique agréables (vous fait rester plus longtemps)',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What should you compare when shopping for the best deal?',
  'Que devriez-vous comparer lorsque vous cherchez la meilleure offre ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Only the total price',
  'Seulement le prix total',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Brand name only',
  'Seulement la marque',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Unit price and quality',
  'Prix à l''unité et qualité',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'The prettiest package',
  'L''emballage le plus joli',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Comparing unit price (price per unit) and quality gives you the best value.',
  'Comparer le prix unitaire (prix par unité) et la qualité vous permet d''obtenir le meilleur rapport qualité-prix.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is the 24-hour rule?',
  'Quelle est la règle des 24 heures ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Stores are open 24 hours',
  'Les magasins sont ouverts 24 heures sur 24',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Wait a day before buying wants',
  'Attendre un jour avant d''acheter des envies',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Shop for 24 hours straight',
  'Faire du shopping pendant 24 heures d''affilée',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Sales last 24 hours',
  'Les soldes durent 24 heures',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'The 24-hour rule means waiting a day to avoid impulse purchases.',
  'La règle des 24 heures signifie attendre un jour pour éviter les achats impulsifs.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'When should you use coupons?',
  'Quand devriez-vous utiliser des coupons ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'For everything on sale',
  'Pour tout ce qui est en solde',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Only for items you actually need',
  'Seulement pour les articles dont vous avez réellement besoin',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Never',
  'Jamais',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Only on weekends',
  'Seulement les fins de semaine',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Coupons save money only if used for things you actually need.',
  'Les coupons permettent d''économiser de l''argent seulement s''ils sont utilisés pour des choses dont vous avez réellement besoin.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is an impulse buy?',
  'Qu''est-ce qu''un achat impulsif ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A planned purchase',
  'Un achat planifié',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Buying without planning, often emotionally',
  'Acheter sans planifier, souvent de manière émotionnelle',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Buying groceries',
  'Acheter des produits alimentaires',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Using a coupon',
  'Utiliser un coupon',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Impulse buying is unplanned purchasing driven by emotion rather than need.',
  'L''achat impulsif est un achat non planifié motivé par l''émotion plutôt que par le besoin.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Price vs Quality',
  'Prix vs Qualité',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Bon, Rapide, Pas cher - Choisissez-en deux

**Valeur = Qualité ÷ Prix**

**Parfois, cher vaut le coup :**
- Des chaussures qui durent 5 ans vs 6 mois
- Des outils durables vs ceux qui cassent
- De la nourriture saine vs de la malbouffe pas chère

**Parfois, pas cher convient :**
- Les fournitures de base (papier, crayons)
- Les articles que vous utilisez rarement
- Les articles tendance qui se démodent

**Exemple :**
Chaussures à 20 $ (durent 6 mois) = 40 $/an
Chaussures à 80 $ (durent 3 ans) = 27 $/an

Les chaussures chères sont en fait moins chères !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Long-term Cost',
  'Coût à long terme',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Coût total de possession

Regardez au-delà du prix affiché !

**À considérer :**
- Coûts d''entretien
- Coûts de réparation
- Coûts d''énergie/carburant
- Durée de vie
- Valeur de revente

**Exemple : Deux voitures**

**Voiture A : 15 000 $**
- Consomme beaucoup d''essence : 3 000 $/an
- Réparations fréquentes : 1 500 $/an
- 5 ans = 15 000 $ + 22 500 $ = 37 500 $

**Voiture B : 22 000 $**
- Consommation d''essence efficace : 1 500 $/an
- Fiable, peu de réparations : 500 $/an
- 5 ans = 22 000 $ + 10 000 $ = 32 000 $

La voiture moins chère coûte en réalité 5 500 $ DE PLUS !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Brand vs Generic',
  '# Marque vs Générique',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Quand les marques comptent

**Les marques génériques/de distributeur conviennent souvent pour :**
- Les aliments de base (farine, sucre, riz)
- Les médicaments en vente libre (mêmes ingrédients)
- Les produits de nettoyage
- Les fournitures scolaires
- Les vêtements de base

**La marque peut valoir le coup pour :**
- L''électronique (meilleur support)
- Les outils spécialisés
- Les articles avec des préoccupations de sécurité
- Les choses que vous utilisez quotidiennement

**Comment décider :**
1. Vérifiez les ingrédients/matériaux
2. Lisez les avis
3. Essayez d''abord le générique
4. Si le générique fonctionne, gardez-le !

Souvent, les produits génériques sont fabriqués dans la même usine que les marques !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What does "value" mean in shopping?',
  'Qu''est-ce que la "valeur" signifie lors des achats ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'The cheapest price',
  'Le prix le moins cher',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Quality divided by price',
  'Qualité divisée par prix',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'The most expensive item',
  'L''article le plus cher',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Brand name',
  'Nom de marque',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Value is the balance between quality and price - best quality for the price paid.',
  'La valeur est l''équilibre entre la qualité et le prix - la meilleure qualité pour le prix payé.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why might expensive shoes be a better value?',
  'Pourquoi des chaussures coûteuses pourraient-elles représenter une meilleure valeur ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They look better',
  'Elles sont plus belles',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They last longer, costing less per year',
  'Elles durent plus longtemps, coûtant moins cher par an',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Expensive is always better',
  'Cher, c''est toujours mieux',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They''re trendy',
  'Ils sont tendance',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If expensive shoes last much longer, the cost per year of use is often lower.',
  'Si des chaussures coûteuses durent beaucoup plus longtemps, le coût par année d''utilisation est souvent plus faible.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is "total cost of ownership"?',
  'Qu''est-ce que le « coût total de possession » ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Just the purchase price',
  'Seulement le prix d''achat',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'All costs including maintenance over time',
  'Tous les coûts incluant l''entretien au fil du temps',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'The price including tax',
  'Le prix incluant les taxes',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What you can sell it for later',
  'Ce que vous pouvez le revendre plus tard',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Total cost includes purchase price plus all future costs like maintenance and fuel.',
  'Le coût total comprend le prix d''achat plus tous les coûts futurs comme l''entretien et le carburant.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'When is generic/store brand usually fine?',
  'Quand est-ce que la marque générique/de distributeur convient généralement ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Never',
  'Jamais',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Always',
  'Toujours',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'For basic items like flour or medicine',
  'Pour les articles de base comme la farine ou les médicaments',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Only for food',
  'Seulement pour la nourriture',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Generic brands often have the same quality as name brands for basic items.',
  'Les marques génériques ont souvent la même qualité que les grandes marques pour les articles de base.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Marketing Tactics',
  'Tactiques de marketing',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Comment les magasins vous font dépenser plus

**Astuces courantes :**

1. **Prix d''ancrage :** « 200 $ 99 $ ! » - Fait paraître 99 $ bon marché
2. **Prix leurre :** Petit (3 $), Moyen (5 $), Grand (5,50 $) - Tout le monde choisit le grand
3. **Rareté :** « Il n''en reste que 3 ! » - Crée une fausse urgence
4. **Minimum pour la livraison gratuite :** « Livraison gratuite à partir de 50 $ » - Vous dépensez 50 $ pour économiser 5 $
5. **Lots groupés :** « Achetez-en 3, économisez 10 % » - Vous n''en aviez besoin que d''un

**Comment résister :**
- Connaissez votre budget avant de magasiner
- Renseignez-vous sur les prix à l''avance
- Ne magasinez pas sous le coup de l''émotion
- Examinez attentivement les « aubaines »',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Subscription Traps',
  'Pièges des abonnements',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# La Fuite d''Argent Lente

**Risques des abonnements :**

**Essais gratuits qui ne sont pas gratuits :**
- Nécessitent une carte de crédit
- Renouvellement automatique après l''essai
- Difficiles à annuler
- Vous les oubliez

**Les abonnements mensuels s''accumulent :**
- Streaming : 15 $
- Musique : 10 $
- Jeux : 15 $
- Logiciels : 20 $
- Gym (non utilisé) : 40 $
- **Total : 100 $/mois = 1 200 $/an !**

**Stratégies de protection :**
- Définir des rappels de calendrier pour la fin des essais
- Réviser les abonnements mensuellement
- Utiliser des cartes virtuelles qui expirent
- Posez-vous la question : « Utilisé ce mois-ci ? Gardez-le. Pas utilisé ? Annulez-le. »
- Annuler immédiatement après les essais gratuits',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Hidden Fees',
  'Frais cachés',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Lire les petits caractères

**Attention à :**

**Frais de complexe hôtelier/hôtel :**
- Chambre : 100 $/nuit
- « Frais de complexe » : 30 $/nuit
- Stationnement : 25 $/nuit
- **Coût réel : 155 $/nuit !**

**Frais de billetterie :**
- Billet de concert : 50 $
- « Frais de service » : 15 $
- « Frais d''installation » : 8 $
- **Coût réel : 73 $**

**Frais bancaires :**
- Frais de découvert
- Frais de guichet automatique
- Frais de tenue de compte mensuels
- Frais de transaction à l''étranger

**Comment les éviter :**
1. Lire TOUTES les conditions avant d''acheter
2. Demander le coût total à l''avance
3. Chercher des alternatives « sans frais »
4. Calculer le coût réel avant de s''engager',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is "anchor pricing"?',
  'Qu''est-ce que le « prix d''ancrage » ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Selling boat anchors',
  'Vendre des ancres de bateau',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Showing a high price crossed out to make sale price look better',
  'Afficher un prix élevé barré pour rendre le prix soldé plus attractif',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Giving discounts to sailors',
  'Offrir des réductions aux marins',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Setting the lowest price',
  'Fixer le prix le plus bas',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Anchor pricing shows a high "original" price to make the sale price seem like a great deal.',
  'L''ancrage des prix affiche un prix « d''origine » élevé pour faire paraître le prix de vente comme une excellente affaire.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why are "free trials" sometimes a trap?',
  'Pourquoi les « essais gratuits » sont-ils parfois un piège ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They''re actually free',
  'Ils sont réellement gratuits',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They auto-renew and charge your card',
  'Ils se renouvellent automatiquement et débitent votre carte',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They give you free stuff',
  'Ils te donnent des choses gratuites',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They''re illegal',
  'Ils sont illégaux',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Free trials often auto-renew into paid subscriptions that charge your card.',
  'Les essais gratuits se transforment souvent automatiquement en abonnements payants qui débitent votre carte.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If you have 5 subscriptions at $15 each, how much per year?',
  'Si vous avez 5 abonnements à 15 $ chacun, combien par an ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$75',
  '75 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$180',
  '180 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$900',
  '900 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$750',
  '750 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '5 × $15 = $75/month × 12 months = $900/year.',
  '5 × 15 $ = 75 $/mois × 12 mois = 900 $/an.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What are "hidden fees"?',
  'Que sont les « frais cachés » ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Illegal charges',
  'Frais illégaux',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Additional costs not shown in advertised price',
  'Coûts supplémentaires non indiqués dans le prix annoncé',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Fees for hiding things',
  'Frais pour cacher des choses',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Discounts',
  'Rabais',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Hidden fees are extra costs added on top of the advertised price.',
  'Les frais cachés sont des coûts supplémentaires ajoutés au prix annoncé.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Best way to avoid subscription traps:',
  'Meilleure façon d''éviter les pièges d''abonnement :',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Never subscribe to anything',
  'Ne jamais s''abonner à quoi que ce soit',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Review and cancel unused subscriptions regularly',
  'Examiner et annuler régulièrement les abonnements non utilisés',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Subscribe to everything',
  'S''abonner à tout',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Ignore your bank statements',
  'Ignorer vos relevés bancaires',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Regularly reviewing subscriptions helps you cancel ones you don''t use.',
  'Examiner régulièrement vos abonnements vous aide à annuler ceux que vous n''utilisez pas.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Emergency Fund',
  'Fonds d''urgence',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Se préparer à l''imprévu

**Fonds d''urgence** = Argent épargné pour les problèmes imprévus

**Pourquoi vous en avez besoin :**
- Panne de voiture : réparation de 500 $
- Urgence médicale : facture de 1 000 $
- Perte d''emploi : Besoin de 3 à 6 mois de dépenses
- Réparation domiciliaire : Chauffe-eau brisé

**Sans fonds d''urgence :**
- S''endetter (cartes de crédit, prêts)
- Incapacité à payer les factures
- Stress et inquiétude

**Avec un fonds d''urgence :**
- Gérer les problèmes calmement
- Aucune dette nécessaire
- Tranquillité d''esprit

**Objectif :** 3 à 6 mois de frais de subsistance',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Future Goals',
  'Objectifs futurs',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Épargner pour ce que vous voulez

**Objectifs à court terme (< 1 an) :**
- Nouveau téléphone
- Fête d''anniversaire
- Voyage scolaire
- Cadeaux de fêtes

**Objectifs à moyen terme (1-5 ans) :**
- Voiture
- Études supérieures
- Mariage
- Mise de fonds pour une maison

**Objectifs à long terme (5+ ans) :**
- Retraite
- Éducation des enfants
- Vacances de rêve
- Démarrer une entreprise

Épargner vous permet de réaliser vos rêves sans vous endetter !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Financial Security',
  'Sécurité financière',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Tranquillité d''esprit

**La sécurité financière signifie :**
- Ne pas vivre d''un salaire à l''autre
- Pouvoir faire face aux urgences
- Ne pas être stressé par l''argent
- Liberté de faire des choix
- Pouvoir aider les autres

**Avantages d''épargner :**
1. **Liberté** - Refuser les mauvais emplois
2. **Opportunités** - Saisir les chances de réaliser ses rêves
3. **Moins de stress** - Mieux dormir la nuit
4. **Indépendance** - Ne pas dépendre des autres
5. **Votre futur vous** - Remerciera votre vous actuel !

« N''épargnez pas ce qui reste après avoir dépensé ; dépensez ce qui reste après avoir épargné. » - Warren Buffett',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is an emergency fund?',
  'Qu''est-ce qu''un fonds d''urgence ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money for vacations',
  'De l''argent pour les vacances',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money saved for unexpected problems',
  'De l''argent économisé pour des problèmes imprévus',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money for shopping',
  'Argent pour faire du shopping',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money you never touch',
  'L''argent que vous ne touchez jamais',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'An emergency fund is savings set aside for unexpected expenses or emergencies.',
  'Un fonds d''urgence est une épargne mise de côté pour des dépenses imprévues ou des urgences.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How many months of expenses should an emergency fund cover?',
  'Combien de mois de dépenses un fonds d''urgence devrait-il couvrir ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '1 week',
  '1 semaine',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '1 month',
  '1 mois',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '3-6 months',
  '3-6 mois',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '10 years',
  '10 ans',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Financial experts recommend 3-6 months of living expenses for emergencies.',
  'Les experts financiers recommandent 3 à 6 mois de dépenses de subsistance pour les urgences.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which is a short-term savings goal?',
  'Quel est un objectif d''épargne à court terme ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Retirement',
  'Retraite',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'College in 10 years',
  'Études universitaires dans 10 ans',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'New video game in 3 months',
  'Nouveau jeu vidéo dans 3 mois',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Buying a house',
  'Acheter une maison',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Short-term goals are things you want to buy within a year.',
  'Les objectifs à court terme sont des choses que tu veux acheter dans un délai d''un an.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What does Warren Buffett say about saving?',
  'Que dit Warren Buffett à propos de l''épargne ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Spend first, save what''s left',
  'Dépenser d''abord, économiser ce qui reste',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Save first, spend what''s left',
  'Épargner d''abord, dépenser ce qui reste',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Never save anything',
  'Ne jamais rien économiser',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Save everything',
  'Tout économiser',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Buffett advises to save first (pay yourself first), then spend what remains.',
  'Buffett conseille d''épargner d''abord (se payer en premier), puis de dépenser ce qui reste.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'SMART Goals',
  '# Objectifs SMART',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Fixer des objectifs qui fonctionnent

**SMART = Spécifique, Mesurable, Atteignable, Réaliste, Temporellement défini**

❌ Mauvais objectif : « Économiser plus d''argent »
✅ Objectif SMART : « Économiser 1 200 $ pour un nouvel ordinateur portable d''ici le 31 décembre »

**Décomposition :**
- **Spécifique :** Nouvel ordinateur portable
- **Mesurable :** 1 200 $
- **Atteignable :** 100 $/mois pendant 12 mois
- **Réaliste :** Nécessaire pour l''école/le travail
- **Temporellement défini :** D''ici le 31 décembre

**Comment créer des objectifs SMART :**
1. Décidez exactement ce que vous voulez
2. Recherchez le coût
3. Fixez une échéance
4. Calculez l''épargne mensuelle nécessaire
5. Assurez-vous que c''est réaliste pour vos revenus',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Short-term vs Long-term',
  'Court terme vs Long terme',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Différents objectifs, différentes stratégies

**Court terme (< 1 an) :**
- Garder dans un compte d''épargne
- Accès facile
- Risque faible
- Exemples : Nouveau vélo, billets de concert

**Moyen terme (1-5 ans) :**
- Compte d''épargne à rendement élevé ou certificats de placement
- Croissance modérée, toujours accessible
- Risque faible à moyen
- Exemples : Voiture, études, mariage

**Long terme (5+ ans) :**
- Possibilité d''investir dans des actions/obligations
- Potentiel de croissance plus élevé
- Risque moyen à élevé (temps de récupérer les pertes)
- Exemples : Retraite, maison

Adaptez votre stratégie d''épargne à votre horizon temporel !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Tracking Progress',
  'Suivi des progrès',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Rester motivé

**Moyens de suivi :**

1. **Suivi visuel :**
   - Thermomètre d''épargne
   - Tableau à colorier (colorier par tranches de 10 $)
   - Photo de l''objectif comme fond d''écran du téléphone

2. **Applications et tableurs :**
   - Mint, YNAB, Personal Capital
   - Simple Excel/Google Sheets
   - Objectifs d''épargne de l''application bancaire

3. **Méthodes physiques :**
   - Bocal/enveloppe séparé pour chaque objectif
   - Transférer l''argent vers un compte séparé
   - Vérifications hebdomadaires avec un partenaire de responsabilisation

**Célébrer les étapes importantes :**
- 25 % économisé : Petite récompense
- 50 % économisé : Le dire à un ami
- 75 % économisé : Planifier comment vous l''utiliserez
- 100 % : Succès débloqué ! 🎉',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What does SMART goals stand for?',
  'Que signifie l''acronyme SMART pour les objectifs ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Simple, Money, Achievable, Real, Timely',
  'Simple, Money, Achievable, Real, Timely',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Specific, Measurable, Achievable, Relevant, Time-bound',
  'Spécifique, Mesurable, Atteignable, Pertinent, Temporellement défini',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Save, Make, Acquire, Reach, Total',
  'Économiser, Fabriquer, Acquérir, Atteindre, Total',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Spend, Manage, Allocate, Record, Track',
  'Dépenser, Gérer, Allouer, Enregistrer, Suivre',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'SMART is an acronym for Specific, Measurable, Achievable, Relevant, Time-bound.',
  'SMART est un acronyme pour Spécifique, Mesurable, Atteignable, Pertinent, Temporellement défini.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'For a goal 8 years away, where should you keep the money?',
  'Pour un objectif dans 8 ans, où devriez-vous garder l''argent ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Under your mattress',
  'Sous votre matelas',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'In your wallet',
  'Dans votre portefeuille',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Can invest in stocks for growth',
  'Peut investir en actions pour la croissance',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'In a piggy bank',
  'Dans une tirelire',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Long-term goals (5+ years) can be invested for higher growth potential.',
  'Les objectifs à long terme (5 ans et plus) peuvent être investis pour un potentiel de croissance plus élevé.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If you want to save $600 in 6 months, how much per month?',
  'Si tu veux économiser 600 $ en 6 mois, combien par mois ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$50',
  '50 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$100',
  '$100',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$150',
  '$150',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$200',
  '200 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$600 ÷ 6 months = $100 per month.',
  '600 $ ÷ 6 mois = 100 $ par mois.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why is tracking progress important?',
  'Pourquoi est-il important de suivre ses progrès ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'It''s not important',
  'Ce n''est pas important',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Helps you stay motivated and on track',
  'Vous aide à rester motivé et sur la bonne voie',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Required by law',
  'Exigé par la loi',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Banks force you to',
  'Les banques vous obligent à',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Tracking progress keeps you motivated and helps ensure you reach your goal.',
  'Suivre vos progrès vous maintient motivé et vous aide à atteindre votre objectif.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Savings Accounts',
  'Comptes d''épargne',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Épargne de base dans les banques

**Caractéristiques d''un compte d''épargne :**
- Rapporte des intérêts (généralement de 0,01 % à 0,50 %)
- Assuré par la FDIC (jusqu''à 250 000 $)
- Accès facile à l''argent
- Solde minimum faible ou nul
- Peut avoir des limites de retrait

**Quand l''utiliser :**
- Fonds d''urgence
- Objectifs à court terme
- Argent dont vous pourriez avoir besoin bientôt

**Astuce :** Certains comptes ont des frais si le solde est trop bas. Choisissez des comptes sans frais !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Interest Rates',
  'Taux d''intérêt',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Comment votre argent croît

**Intérêt** = Argent que la banque vous verse pour y garder votre argent

**Exemple :**
- Épargner 1 000 $
- Taux d''intérêt : 5 % par an
- Après 1 an : 1 050 $
- Après 2 ans : 1 102,50 $ (intérêts composés !)

**Intérêts composés** = Gagner des intérêts sur vos intérêts

**Où trouver des intérêts plus élevés :**
- Banques en ligne (1 % à 5 %+)
- Comptes d''épargne à rendement élevé
- Certificats de dépôt (CD)
- Comptes du marché monétaire

**Comparez les taux** - De petites différences = une grande différence au fil du temps !

À 1 % : 1 000 $ → 1 104 $ en 10 ans
À 5 % : 1 000 $ → 1 629 $ en 10 ans',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Bank vs Credit Union',
  'Banque vs Coopérative de crédit',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Où ouvrir un compte

**Banques :**
- Entreprises à but lucratif
- Plus de succursales et de guichets automatiques
- Meilleure technologie/applications
- Taux d''intérêt généralement plus bas
- Exemples : Chase, Bank of America

**Coopératives de crédit :**
- Sans but lucratif, propriété des membres
- Taux d''intérêt plus élevés
- Frais moins élevés
- Moins de succursales
- Peuvent exiger une adhésion
- Exemples : Navy Federal, coopératives de crédit locales

**Les deux sont sécuritaires** - assurées par la FDIC (banques) ou la NCUA (coopératives de crédit)

**Comment choisir :**
- Besoin de succursales/guichets automatiques ? → Banque
- Vous voulez de meilleurs taux ? → Coopérative de crédit
- Vous pouvez utiliser les services bancaires en ligne ? → Banque en ligne (meilleurs taux)',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is FDIC insurance?',
  'Qu''est-ce que l''assurance FDIC ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Car insurance',
  'Assurance automobile',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Protection for bank deposits up to $250,000',
  'Protection des dépôts bancaires jusqu''à 250 000 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Health insurance',
  'Assurance maladie',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A type of savings account',
  'Un type de compte d''épargne',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'FDIC insurance protects your bank deposits up to $250,000 if the bank fails.',
  'L''assurance FDIC protège vos dépôts bancaires jusqu''à 250 000 $ en cas de faillite de la banque.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is compound interest?',
  'Qu''est-ce que l''intérêt composé ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Flat interest rate',
  'Taux d''intérêt fixe',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Interest earned on both principal and previous interest',
  'Intérêts gagnés sur le capital initial et sur les intérêts précédents',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Interest you pay on loans',
  'Intérêts que vous payez sur les prêts',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'No interest',
  'Sans intérêt',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Compound interest means you earn interest on your interest, accelerating growth.',
  'L''intérêt composé signifie que vous gagnez des intérêts sur vos intérêts, ce qui accélère la croissance.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Where typically find the highest interest rates?',
  'Où trouve-t-on généralement les taux d''intérêt les plus élevés ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Traditional bank branches',
  'Succursales bancaires traditionnelles',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Under your mattress',
  'Sous votre matelas',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Online banks and credit unions',
  'Banques en ligne et coopératives de crédit',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Piggy banks',
  'Tirelires',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Online banks and credit unions often offer higher interest rates than traditional banks.',
  'Les banques en ligne et les coopératives de crédit offrent souvent des taux d''intérêt plus élevés que les banques traditionnelles.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If you save $100 at 4% interest for 1 year, how much will you have?',
  'Si tu économises 100 $ à un taux d''intérêt de 4 % pendant 1 an, combien auras-tu ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$100',
  '$100',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$104',
  '$104',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$400',
  '$400',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$140',
  '$140',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$100 + ($100 × 0.04) = $104.',
  '$100 + ($100 × 0,04) = $104.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Pay Yourself First',
  'Payez-vous en premier',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# La règle d''or de l''épargne

**« Payez-vous en premier »** = Épargnez avant de dépenser pour quoi que ce soit d''autre

**Comment ça fonctionne :**

❌ Ancienne méthode :
1. Recevoir le salaire
2. Payer les factures
3. Acheter des choses
4. Épargner ce qui reste (généralement 0 $)

✅ Nouvelle méthode :
1. Recevoir le salaire
2. **Épargner immédiatement 10-20 %**
3. Payer les factures
4. Acheter des choses avec ce qui reste

**Pourquoi ça fonctionne :**
- Traite l''épargne comme une facture (non négociable)
- Vous ajustez vos dépenses à ce qui reste
- L''épargne se réalise vraiment

« N''épargnez pas ce qui reste après avoir dépensé ; dépensez ce qui reste après avoir épargné. »',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Automatic Transfers',
  'Virements automatiques',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Réglez et oubliez

**L''épargne automatique** = L''argent est transféré vers l''épargne sans que vous ayez à faire quoi que ce soit

**Comment configurer :**

1. **Répartition de la paie :**
   - Demandez à votre employeur de déposer un % dans l''épargne
   - Le reste va dans le compte courant
   - Se produit à chaque paie

2. **Virement automatique bancaire :**
   - Configurez un virement récurrent
   - Chaque jour de paie, X $ est transféré vers l''épargne
   - Peut être ajusté ou suspendu à tout moment

3. **Épargner selon un calendrier :**
   - Hebdomadaire : Plus facile psychologiquement
   - Aux deux semaines : Correspond au calendrier de paie
   - Mensuel : Simple, montants plus élevés

**Avantages :**
- Aucune volonté nécessaire
- Aucun oubli
- Progrès constants
- « Loin des yeux, loin du cœur »',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Round-up Apps',
  'Applications d''arrondissement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Micro-épargne sans effort

**Applications d''arrondissement** = Arrondissent les achats au dollar supérieur, épargnent la différence

**Comment elles fonctionnent :**

Vous achetez un café : 4,50 $
L''application arrondit à : 5,00 $
Épargne la différence : 0,50 $

10 achats × 0,50 $ en moyenne = 5 $/jour = 150 $/mois !

**Applications populaires :**
- Acorns
- Digit
- Qapital
- Chime (offre cette fonctionnalité)
- Plusieurs banques offrent ceci

**Autres astuces de micro-épargne :**
- Épargnez tous les billets de 5 $ que vous recevez
- Épargnez toute la monnaie en fin de journée
- Épargnez le remboursement d''impôt immédiatement
- Épargnez les primes/cadeaux avant de dépenser
- Épargnez les augmentations de salaire (augmentez le virement automatique lorsque le salaire augmente)

**L''essentiel :** Commencez petit ! 1 $/jour = 365 $/an',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What does "pay yourself first" mean?',
  'Que signifie « se payer en premier » ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Buy things for yourself',
  'Acheter des choses pour soi-même',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Save money before paying bills',
  'Économiser de l''argent avant de payer les factures',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Give yourself a paycheck',
  'Vous verser un salaire à vous-même',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Save money before spending on other things',
  'Économiser de l''argent avant de dépenser pour d''autres choses',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Pay yourself first means saving a portion of income before spending on anything else.',
  'Payer en premier signifie économiser une partie de ses revenus avant de dépenser pour quoi que ce soit d''autre.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'What is automatic savings?',
  'Qu''est-ce que l''épargne automatique ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Money that appears magically',
  'L''argent qui apparaît magiquement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Automatic transfers from checking to savings',
  'Virements automatiques du compte courant vers le compte d''épargne',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Savings that grow automatically',
  'Épargne qui augmente automatiquement',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A type of bank account',
  'Un type de compte bancaire',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Automatic savings is when money automatically transfers from checking to savings.',
  'L''épargne automatique, c''est quand l''argent est transféré automatiquement du compte courant vers le compte d''épargne.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How do round-up apps work?',
  'Comment fonctionnent les applications d''arrondissement ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Round down your balance',
  'Arrondir votre solde à la baisse',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Round purchases up and save the difference',
  'Arrondissent les achats au dollar supérieur et épargnent la différence',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Give you money',
  'Vous donnent de l''argent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Round your interest',
  'Arrondissez vos intérêts',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Round-up apps round each purchase up to the nearest dollar and save the difference.',
  'Les applications d''arrondissement arrondissent chaque achat au dollar supérieur et épargnent la différence.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If a round-up app saves $0.50 per transaction and you make 200 transactions/month, how much saved?',
  'Si une application d''arrondissement économise 0,50 $ par transaction et que vous effectuez 200 transactions/mois, combien économisez-vous ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$50',
  '$50',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$100',
  '$100',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$150',
  '$150',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$200',
  '$200',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '200 transactions × $0.50 = $100 saved per month.',
  '200 transactions × 0,50 $ = 100 $ économisés par mois.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How Much to Save',
  '# Combien économiser',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Votre objectif de fonds d''urgence

**Recommandation standard : 3 à 6 mois de dépenses**

**Calculez votre montant :**

1. Listez vos dépenses mensuelles :
   - Loyer/hypothèque : 1 000 $
   - Services publics : 150 $
   - Nourriture : 400 $
   - Transport : 200 $
   - Assurance : 150 $
   - Autres essentiels : 100 $
   - **Total : 2 000 $/mois**

2. Multipliez par 3 à 6 :
   - Minimum : 6 000 $
   - Idéal : 12 000 $

**Facteurs à considérer :**
- Stabilité d''emploi (instable = 6 mois et plus)
- Sources de revenus (revenu unique = montant plus élevé nécessaire)
- Santé (problèmes médicaux = montant plus élevé nécessaire)
- Personnes à charge (enfants = montant plus élevé nécessaire)',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'When to Use It',
  'Quand l''utiliser',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Véritables urgences uniquement

**Utiliser le fonds d''urgence pour :**

✅ **Véritables urgences :**
- Perte d''emploi
- Urgence médicale
- Réparation domiciliaire essentielle (chauffe-eau, fournaise)
- Réparation automobile essentielle (impossible de se rendre au travail)
- Urgence familiale

❌ **PAS des urgences :**
- Solde sur une télévision
- Vacances
- Nouveaux vêtements
- Manger au restaurant
- Améliorations non essentielles
- « J''en ai vraiment envie »

**Règle générale :**
Demandez-vous : « Si je ne dépense pas cet argent, est-ce que quelque chose de grave va arriver ? »
- Oui = Urgence
- Non = Pas une urgence

Avoir de l''« argent pour le plaisir » séparé aide à éviter de puiser dans le fonds d''urgence !',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Rebuilding After Use',
  'Reconstituer après utilisation',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
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
  '# Reprendre le bon cap

**Si vous utilisez votre fonds d''urgence :**

**1. Ne vous sentez pas coupable !**
- C''est fait pour ça
- Vous avez bien planifié à l''avance
- Soyez fier(ère) de l''avoir eu

**2. Mettez les autres épargnes en pause temporairement :**
- Concentrez-vous d''abord sur la reconstitution du fonds d''urgence
- Les autres objectifs peuvent attendre
- Fonds d''urgence = priorité n° 1

**3. Reconstituez aussi vite que raisonnablement possible :**
- Commencez immédiatement (même 20 $ aident)
- Utilisez toute rentrée d''argent inattendue (remboursement d''impôt, prime)
- Réduisez temporairement les dépenses discrétionnaires
- Envisagez un revenu d''appoint

**4. Examinez ce qui s''est passé :**
- Était-ce évitable ?
- Besoin de plus d''assurance ?
- Besoin d''un fonds d''urgence plus important ?
- Ajustez votre plan en conséquence

**Exemple de plan de reconstitution :**
- Utilisé : 2 000 $
- Revenu : 3 000 $/mois
- Peut épargner : 500 $/mois
- Reconstitué en : 4 mois',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'How many months of expenses should an emergency fund cover?',
  'Combien de mois de dépenses un fonds d''urgence devrait-il couvrir ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '1 week',
  '1 semaine',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '1 month',
  '1 mois',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '3-6 months',
  '3 à 6 mois',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '10 years',
  '10 ans',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Financial experts recommend 3-6 months of living expenses.',
  'Les experts financiers recommandent 3 à 6 mois de dépenses courantes.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Which is a TRUE emergency for using your emergency fund?',
  'Quelle est une VRAIE urgence pour utiliser votre fonds d''urgence ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'TV is on sale',
  'Télévision en solde',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Want to go on vacation',
  'Vouloir partir en vacances',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Car breaks down and you can''t get to work',
  'La voiture tombe en panne et vous ne pouvez pas aller au travail',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'New video game release',
  'Sortie d''un nouveau jeu vidéo',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'A car needed for work is a true emergency. Other examples are wants.',
  'Une voiture nécessaire pour le travail est une véritable urgence. Les autres exemples sont des envies.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'If your monthly expenses are $2,500, what''s a minimum emergency fund?',
  'Si vos dépenses mensuelles sont de 2 500 $, quel est le fonds d''urgence minimum ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$2,500',
  '2 500 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$5,000',
  '5 000 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$7,500',
  '7 500 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '$25,000',
  '25 000 $',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  '3 months × $2,500 = $7,500 minimum.',
  '3 mois × 2 500 $ = 7 500 $ minimum.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'After using emergency fund, what should you do?',
  'Après avoir utilisé votre fonds d''urgence, que devriez-vous faire ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Forget about it',
  'L''oublier',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Immediately rebuild it',
  'Reconstituer immédiatement le fonds',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Wait a year to rebuild',
  'Attendre un an pour le reconstituer',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Use it for other things',
  'L''utiliser pour d''autres choses',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Rebuild your emergency fund as soon as possible after using it.',
  'Reconstituez votre fonds d''urgence dès que possible après l''avoir utilisé.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Why might someone need 6+ months of expenses saved?',
  'Pourquoi quelqu''un pourrait-il avoir besoin d''économiser 6 mois ou plus de dépenses ?',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'They like big numbers',
  'Ils aiment les grands nombres',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Unstable job or single income household',
  'Emploi instable ou ménage à revenu unique',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Banks require it',
  'Les banques l''exigent',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Everyone needs exactly 6 months',
  'Tout le monde a besoin d''exactement 6 mois',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
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
  'fr',
  'Less stable situations warrant larger emergency funds for more protection.',
  'Les situations moins stables justifient des fonds d''urgence plus importants pour une meilleure protection.',
  '2026-01-06T01:57:14.362Z',
  '2027-01-06T01:57:14.363Z'
);

-- ========================================
-- VERIFICATION
-- ========================================
SELECT 'Translation completed for fr!' as message;
SELECT COUNT(*) as total_translations
FROM "ContentTranslation"
WHERE target_language = 'fr';
