-- Multilingual Translation Migration
-- Inserts translations into ContentTranslation table

-- STEP 1: Drop foreign key constraints to allow insertion
ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_lesson_fkey";

ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_game_fkey";

DELETE FROM "ContentTranslation"
WHERE target_language = 'ja';

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
  'ja',
  'Introduction',
  'はじめに',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# What is Money?

Money is what we use to buy things we need and want. It''s a tool that makes trading easier!

**For Kids:** Money is like tickets at an arcade - you exchange them for prizes!

**For Adults:** Money serves as a medium of exchange, eliminating the inefficiencies of barter systems.',
  '# お金って何？

お金とは、私たちが必要なものや欲しいものを買うために使うものです。お金は取引をより簡単にする道具です！

**子ども向け：** お金はゲームセンターのチケットのようなものです - チケットを景品と交換しますよね！

**大人向け：** お金は交換手段として機能し、物々交換システムの非効率性を解消します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'History of Money',
  '# お金の歴史',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# How Money Started

Long ago, people traded items directly - like trading 5 apples for 1 chicken. This was called **bartering**.

But bartering had problems:
- What if you had apples but the other person didn''t want them?
- How many apples equal one chicken?

So humans invented money to solve these problems!',
  '# お金の始まり

昔、人々は物を直接交換していました。例えば、リンゴ5個とニワトリ1羽を交換するような方法です。これを**物々交換**と呼びます。

しかし、物々交換には問題がありました:
- もしあなたがリンゴを持っていても、相手がそれを欲しがらなかったらどうしますか?
- リンゴ何個でニワトリ1羽と同じ価値になりますか?

そこで人類はこれらの問題を解決するためにお金を発明したのです!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why We Use Money',
  '# なぜお金を使うのか',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Why Money is Useful

Money makes life easier because:

1. **Store of Value** - You can save it for later
2. **Unit of Account** - Everything has a clear price
3. **Medium of Exchange** - Everyone accepts it

Instead of carrying around chickens and apples, you carry money!',
  '# お金が便利な理由

お金は次の理由で生活を便利にします:

1. **価値の保存** - 後で使うために貯めておくことができます
2. **価値の尺度** - すべてのものに明確な価格があります
3. **交換の手段** - 誰もがそれを受け取ります

鶏やりんごを持ち歩く代わりに、お金を持ち歩きます!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Modern Money',
  '# 現代のお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Money Today

Today, money comes in many forms:
- **Physical:** Coins and bills you can touch
- **Digital:** Money in bank accounts and apps
- **Cryptocurrency:** New digital money on the internet

Most people use a mix of all three types!',
  '# 現代のお金

今日、お金にはさまざまな形があります：
- **物理的なお金：** 触ることができる硬貨と紙幣
- **デジタルマネー：** 銀行口座やアプリの中にあるお金
- **暗号資産：** インターネット上の新しいデジタルマネー

ほとんどの人は、これら3つのタイプすべてを組み合わせて使っています！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is the main purpose of money?',
  'お金の主な目的は何ですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'To make trading easier',
  '取引をより簡単にするため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'To be pretty',
  'きれいに見せるため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'To collect',
  '集めるため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'To burn',
  '燃やすため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money was invented to make trading goods and services easier than bartering.',
  'お金は、物々交換よりも商品やサービスの取引を簡単にするために発明されました。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What was the old way of trading before money?',
  'お金が登場する前の古い取引方法は何でしたか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Selling',
  '販売',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Bartering',
  '物々交換',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Giving away',
  '譲り渡すこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Stealing',
  '盗むこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Bartering means trading items directly, like 5 apples for 1 chicken.',
  '物々交換とは、5個のりんごを1羽の鶏と交換するように、物を直接交換することを意味します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which is NOT a form of modern money?',
  'どれが現代のお金の形態では**ない**ですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Digital money',
  'デジタルマネー',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Coins',
  'コイン(硬貨)',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Rocks',
  '石',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Cryptocurrency',
  '暗号資産',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'While some ancient cultures used special rocks as money, regular rocks are not modern currency.',
  '一部の古代文化では特別な石を貨幣として使用していましたが、普通の石は現代の通貨ではありません。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money helps us "store value" means:',
  'お金が「価値を保存する」のを助けるとは：',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'We can save it for later',
  '後で使うために貯めておくことができる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'We must spend it now',
  '今すぐ使わなければなりません',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It loses value quickly',
  '価値がすぐに下がります',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It takes up space',
  'スペースを取る',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Storing value means money keeps its worth over time so you can save it.',
  '価値を貯蔵するとは、お金が時間が経っても価値を保つため、貯めておくことができるという意味です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Coins and Bills',
  '硬貨と紙幣',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Physical Money

**Coins** are made of metal and usually worth less. They''re good for small purchases like candy or parking meters.

**Bills (Banknotes)** are made of paper or plastic and worth more. They''re lighter and easier to carry than lots of coins.

💡 Fun fact: The ink and paper for bills cost less than 10 cents, but the bill might be worth $100!',
  '# 物理的なお金

**硬貨**は金属でできており、通常は価値が低いです。キャンディーや駐車メーターなどの小額の買い物に適しています。

**紙幣**は紙またはプラスチックでできており、価値が高いです。たくさんの硬貨よりも軽く、持ち運びが簡単です。

💡 面白い事実:紙幣のインクと紙のコストは10セント未満ですが、その紙幣の価値は100ドルになることもあります!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Digital Money',
  'デジタルマネー',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Money You Can''t Touch

Most money today is **digital** - it exists as numbers in a computer!

Examples:
- Money in your bank account
- Payment apps like PayPal, Venmo
- Credit card payments
- Mobile wallets like Apple Pay

You never touch this money, but you can still spend it!',
  '# 触れることのできないお金

今日のほとんどのお金は**デジタル**です - コンピューターの中の数字として存在しています!

例:
- 銀行口座の中のお金
- PayPal、Venmoのような決済アプリ
- クレジットカード決済
- Apple Payのようなモバイルウォレット

このお金に触れることは決してありませんが、それでも使うことができます!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Cryptocurrency Basics',
  '# 暗号資産の基礎',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 新しい種類のお金

**暗号資産（仮想通貨）**とは、コンピューターのコードを使って取引を安全に保護するデジタルマネーです。

最も有名な例：
- ビットコイン（BTC）
- イーサリアム（ETH）

**主な違い：**
- 政府が管理していません
- すべての国で使えます
- とても安全ですが、リスクもあります
- 価格が大きく変動します！

⚠️ 初心者の方は、もっと学ぶまでは通常のお金を使いましょう！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What are coins usually made of?',
  '硬貨は通常何で作られていますか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Paper',
  '紙',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Metal',
  '金属',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Plastic',
  'プラスチック',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Wood',
  '木材',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Coins are made of metal, which makes them durable and hard to counterfeit.',
  '硬貨は金属でできているため、耐久性があり、偽造が困難です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which is an example of digital money?',
  'デジタルマネーの例はどれですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A $10 bill',
  '10ドル紙幣',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A quarter',
  '25セント硬貨',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Your bank account balance',
  '銀行口座の残高',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Gold bars',
  '金の延べ棒',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Bank account balances are digital money - they exist as electronic records.',
  '銀行口座の残高はデジタルマネーです。つまり、電子記録として存在しています。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is true about cryptocurrency?',
  '暗号通貨について正しいのはどれですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It is controlled by governments',
  '政府によって管理されています',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It never changes in value',
  '価値が変動することはない',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It uses computer code for security',
  'コンピューターコードを使ってセキュリティを確保しています',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'You can hold it in your hand',
  '手で持つことができる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Cryptocurrency uses advanced computer code (cryptography) to secure transactions.',
  '暗号通貨は、取引を安全に保護するために高度なコンピュータコード（暗号技術）を使用します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why is digital money convenient?',
  'デジタルマネーはなぜ便利ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'You can carry large amounts easily',
  '大きな金額を簡単に持ち運べます',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It weighs a lot',
  'たくさんの重さがあるから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It can get wet',
  '濡れても大丈夫です',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'You must count it manually',
  '手動で数える必要があります',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Digital money is convenient because you can have millions in your account without physical storage.',
  'デジタルマネーは、物理的な保管場所がなくても口座に何百万円も持つことができるため、便利です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Supply and Demand',
  '需要と供給',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# What Makes Money Valuable?

Money has value because of **supply and demand**:

**Supply** = How much money exists
**Demand** = How many people want it

If everyone wants dollars and there aren''t many, dollars are valuable.
If there are too many dollars, each one is worth less.

Think of it like rare trading cards - rare cards are more valuable!',
  '# お金に価値があるのはなぜ?

お金に価値があるのは**需要と供給**のためです:

**供給** = どれだけのお金が存在するか
**需要** = どれだけの人がそれを欲しがるか

もしみんながドルを欲しがって、ドルがあまりなければ、ドルは価値があります。
もしドルがたくさんありすぎると、1つ1つの価値は下がります。

これはレアなトレーディングカードのようなものです - レアなカードほど価値が高いのです!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Government Role',
  '政府の役割',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Who Controls Money?

Governments and central banks control how much money exists:

- **Print too much** = Money becomes less valuable (inflation)
- **Print too little** = Hard to do business (deflation)

They try to keep the amount "just right" so the economy stays healthy.

This is why you can''t just print money at home - it would make money worthless!',
  '# 誰がお金を管理しているの?

政府と中央銀行が、存在するお金の量を管理しています:

- **印刷しすぎる** = お金の価値が下がります(インフレーション)
- **印刷が少なすぎる** = ビジネスが難しくなります(デフレーション)

経済が健全であり続けるように、政府と中央銀行は「ちょうど良い」量を保とうとしています。

これが、家でお金を印刷できない理由です - そうするとお金が価値のないものになってしまいます!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Trust in Money',
  '貨幣への信頼',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Why We Trust Money

Money only works if people trust it!

We trust money because:
1. The government says it''s legal
2. Stores accept it
3. We can pay taxes with it
4. It has security features (hard to fake)

If people stopped trusting it, money would become just paper or numbers.',
  '# なぜ私たちはお金を信頼するのか

お金は人々がそれを信頼して初めて機能します!

私たちがお金を信頼する理由:
1. 政府が法的に認めているから
2. お店が受け取ってくれるから
3. 税金を支払うことができるから
4. 偽造防止機能があるから(偽造しにくい)

もし人々がお金を信頼しなくなったら、お金はただの紙や数字になってしまいます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What happens if a government prints too much money?',
  '政府がお金を刷りすぎるとどうなりますか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Everyone becomes rich',
  '誰もがお金持ちになる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money becomes less valuable',
  'お金の価値が下がります',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money becomes more valuable',
  'お金の価値が上がる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Nothing changes',
  '何も変わりません',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Printing too much money causes inflation - each dollar is worth less.',
  'お金を印刷しすぎるとインフレーションが起こり、1ドルの価値が下がります。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Supply and demand means:',
  '需要と供給とは：',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How much exists and how many want it',
  '供給量と需要量のこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Where to buy things',
  '物を買う場所',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How to save money',
  'お金の節約方法',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Types of currency',
  '通貨の種類',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Supply is how much exists, demand is how many people want it.',
  '供給とは存在する量のことで、需要とは欲しがる人の数のことです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why can''t you just print your own money?',
  'なぜ自分でお金を印刷してはいけないのですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It would make all money worthless',
  'すべてのお金の価値がなくなってしまうから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Printers are expensive',
  'プリンターは高価です',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Paper is hard to find',
  '紙を見つけるのが難しいから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'You can, it''s allowed',
  '作ることができます。許可されています',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If everyone could print money, there would be too much supply and it would lose value.',
  'もし誰もが自由にお金を印刷できるとしたら、供給量が多くなりすぎて、お金の価値がなくなってしまいます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money has value primarily because:',
  'お金に価値がある主な理由は：',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s pretty',
  'きれいだから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'People trust and accept it',
  '人々がそれを信頼し、受け入れているから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s made of precious materials',
  '貴重な材料で作られているから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s rare',
  'それは希少だから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money''s value comes from collective trust and acceptance in society.',
  'お金の価値は、社会における集団的な信頼と受容から生まれます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What role do governments play with money?',
  '政府はお金においてどのような役割を果たしていますか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They determine fashion trends',
  '流行のファッショントレンドを決定します',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They control the supply',
  '通貨の供給量を管理します',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They force you to spend',
  '支出を強制する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Nothing at all',
  '何もしない',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Governments and central banks control how much money is in circulation.',
  '政府と中央銀行は、流通しているお金の量をコントロールしています。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Major Currencies',
  '主要通貨',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# World Money

Different countries use different money!

**Major World Currencies:**
- 🇺🇸 US Dollar (USD) - Most widely used
- 🇪🇺 Euro (EUR) - Used in many European countries
- 🇬🇧 British Pound (GBP) - Used in United Kingdom
- 🇯🇵 Japanese Yen (JPY) - Used in Japan
- 🇨🇳 Chinese Yuan (CNY) - Used in China

Each has its own symbol and value!',
  '# 世界のお金

国によって使うお金が違います!

**世界の主要通貨:**
- 🇺🇸 米ドル (USD) - 最も広く使われています
- 🇪🇺 ユーロ (EUR) - 多くのヨーロッパ諸国で使われています
- 🇬🇧 英ポンド (GBP) - イギリスで使われています
- 🇯🇵 日本円 (JPY) - 日本で使われています
- 🇨🇳 中国元 (CNY) - 中国で使われています

それぞれ独自の記号と価値があります!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Exchange Rates',
  '為替レート',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 国と国の間でのお金の交換

**為替レート**は、ある通貨が別の通貨でどれくらいの価値があるかを示しています。

例:
1 USD = 0.85 EUR

これは、1米ドルが0.85ユーロと交換できることを意味します。

**為替レートは毎日変動します**。その要因は:
- それぞれの経済がどれくらい強いか
- 金利
- 政治的な安定性
- 需要と供給',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'International Trade',
  '国際貿易',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Why Exchange Rates Matter

When countries trade with each other, they need to exchange currencies:

- A US company buying products from Japan needs Yen
- A European tourist in America needs Dollars
- Online shopping from other countries requires conversion

**Strong currency** = Your money buys more in other countries
**Weak currency** = Your money buys less abroad

This affects travel, shopping, and business!',
  '# 為替レートが重要な理由

国同士が貿易を行うとき、通貨を交換する必要があります:

- 日本から製品を購入するアメリカの会社は円が必要です
- アメリカにいるヨーロッパの観光客はドルが必要です
- 他の国からのオンラインショッピングには換算が必要です

**強い通貨** = あなたのお金で他の国でより多くのものが買えます
**弱い通貨** = あなたのお金で海外ではより少ないものしか買えません

これは旅行、ショッピング、ビジネスに影響します!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is the currency used in most European countries?',
  'ヨーロッパのほとんどの国で使われている通貨は何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Dollar',
  'ドル',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Euro',
  'ユーロ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Pound',
  'ポンド',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Peso',
  'ペソ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'The Euro (EUR) is used by 20 European Union countries.',
  'ユーロ（EUR）は、20のヨーロッパ連合加盟国で使用されています。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What does an exchange rate tell you?',
  '為替レートは何を示していますか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How fast money grows',
  'お金がどれくらい速く増えるか',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Where to shop',
  '買い物をする場所',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How much one currency is worth in another',
  '一つの通貨が別の通貨でどれくらいの価値があるか',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How to save money',
  '貯金の仕方',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Exchange rates show the value of one currency compared to another.',
  '為替レートは、ある通貨の価値を別の通貨と比較して示すものです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If 1 USD = 100 JPY, how many yen is $5?',
  '1ドル = 100円の場合、5ドルは何円ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '50 yen',
  '50円',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '100 yen',
  '100円',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '500 yen',
  '500円',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '5 yen',
  '5円',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '5 dollars × 100 yen per dollar = 500 yen.',
  '5ドル × 1ドルあたり100円 = 500円。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'When would you need to exchange currency?',
  '通貨を交換する必要があるのはどのような時ですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Traveling to another country',
  '他の国へ旅行するとき',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Shopping at local stores',
  '地元のお店で買い物をするとき',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Paying bills at home',
  '家で請求書を支払うとき',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Saving money',
  '貯金をするとき',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'You need to exchange currency when traveling abroad or buying from international sellers.',
  '海外旅行をするときや海外の販売者から購入するときは、通貨を両替する必要があります。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What makes a currency "strong"?',
  '通貨を「強い」ものにするのは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s made of strong materials',
  '強い素材で作られている',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It buys more in other countries',
  '他国でより多くのものを買うことができる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s heavy',
  '重い',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s colorful',
  'カラフルである',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A strong currency has high purchasing power in international markets.',
  '強い通貨は国際市場において高い購買力を持っています。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is Inflation',
  'インフレーションとは何か',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 物の値段が高くなるとき

**インフレーション**とは、時間とともに物価が上がることを意味します。

例：
- 1990年：キャンディバー1本が0.50ドル
- 2025年：同じキャンディが1.50ドル

あなたのお金で買えるものが以前より少なくなっています！

**なぜ起こるのか：**
- 流通するお金が増える
- 商品への需要が高まる
- 生産コストが上昇する

多少のインフレーション（年2～3％）は正常で健全です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How Inflation Affects You',
  '# インフレーションがあなたに与える影響',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# お金の価値が下がります

**購買力** = あなたのお金で買えるもの

インフレがあると：
- 今日の100ドルは来年の100ドルより多く買えます
- 貯金を瓶に入れたままにしておくと価値が下がります
- 給料は物価に追いつくために上がる必要があります

**例：**
インフレ率が年3%の場合：
- 今日の100ドル = 来年の購買力97ドル
- 今日の100ドル = 2年後の購買力94ドル

だから祖父母が「私たちの時代は物が安かった」と言うのです - 実際に安かったのです！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Protecting Against Inflation',
  'インフレから身を守る',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# インフレと戦う方法

インフレにお金を食べられないようにしましょう!方法は次のとおりです:

**1. 利息付きの貯蓄口座にお金を預ける**
- 利息はお金を増やすのに役立ちます
- インフレの一部を相殺します

**2. 株式、債券、不動産に投資する**
- これらはインフレよりも速く成長することが多いです
- リスクは高いですが購買力を守ります

**3. 収入を増やす**
- 昇給を求めましょう
- 新しいスキルを学びましょう
- 副業を始めましょう

**4. 賢く予算を立てる**
- お金の使い道を追跡しましょう
- より良い取引を見つけましょう
- 不必要な支出を減らしましょう

覚えておいてください:マットレスの下に隠した現金は毎年価値を失います!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is inflation?',
  'インフレーションとは何ですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'When prices go down',
  '物価が下がること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'When prices go up over time',
  '時間の経過とともに物価が上昇すること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'When money is printed',
  'お金が印刷されるとき',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'When people save money',
  'お金を貯蓄すること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Inflation is the general increase in prices over time.',
  'インフレーションとは、時間の経過とともに物価が全体的に上昇することです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If inflation is 5% and you have $100 in cash for a year, what happens?',
  'インフレ率が5%で、100ドルの現金を1年間持っていた場合、どうなりますか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'You can buy 5% more',
  '5%多く買うことができる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'You can buy the same amount',
  '同じ量を買うことができます',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'You can buy 5% less',
  '5%少なく買うことができます',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Your money disappears',
  'あなたのお金が消えてしまいます',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'With 5% inflation, your $100 loses 5% of purchasing power.',
  '5%のインフレーションでは、あなたの100ドルは購買力の5%を失います。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why do prices tend to increase over time?',
  'なぜ物価は時間とともに上昇する傾向があるのでしょうか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Stores want more profit only',
  '店舗がより多くの利益を得たいからだけ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Due to inflation and increased costs',
  'インフレーションとコスト増加のため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Because money becomes stronger',
  'お金の価値が強くなるから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s random',
  'ランダムだから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Prices increase due to inflation, which comes from various economic factors.',
  'インフレーションによって物価が上昇します。インフレーションは、さまざまな経済的要因から発生します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is a good way to protect against inflation?',
  'インフレから身を守る良い方法は何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Hide cash under your mattress',
  'マットレスの下に現金を隠す',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Spend all your money immediately',
  'すぐにすべてのお金を使ってしまう',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Invest in assets that grow',
  'インフレに対抗して成長する資産に投資する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Do nothing',
  '何もしない',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Investing in growing assets helps maintain or increase purchasing power.',
  '成長する資産に投資することで、購買力を維持または増加させることができます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is "purchasing power"?',
  '「購買力」とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How strong you are',
  '自分の力の強さ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What you can buy with your money',
  'あなたのお金で買えるもの',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Your job title',
  'あなたの職業名',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How much money you earn',
  '稼ぐ金額',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Purchasing power is what your money can actually buy.',
  '購買力とは、あなたのお金が実際に買えるものを指します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Is some inflation considered normal?',
  'インフレはある程度正常だと考えられていますか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'No, inflation is always bad',
  'いいえ、インフレは常に悪いものです',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Yes, 2-3% annual inflation is normal',
  'はい、年間2〜3%のインフレは正常です',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Only in poor countries',
  '貧しい国だけで',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Inflation never happens',
  'インフレは決して起こりません',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Moderate inflation of 2-3% per year is normal and indicates economic growth.',
  '年間2〜3%の適度なインフレは正常であり、経済成長を示しています。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Jobs and Careers',
  '仕事とキャリア',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Working for Money

**Active income** = Money you earn by working

Types of jobs:
- **Employee:** Work for a company (steady paycheck)
- **Freelancer:** Work for yourself (multiple clients)
- **Contractor:** Work on specific projects

**For kids:** Chores, lawn mowing, pet sitting
**For adults:** Full-time jobs, part-time work, consulting',
  '# お金を稼ぐために働く

**アクティブインカム（労働所得）** = 働くことで得るお金

仕事の種類:
- **従業員:** 会社で働く（安定した給与）
- **フリーランサー:** 自分のために働く（複数のクライアント）
- **契約社員:** 特定のプロジェクトで働く

**子供向け:** お手伝い、芝刈り、ペットの世話
**大人向け:** フルタイムの仕事、パートタイムの仕事、コンサルティング',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Self-Employment',
  '自営業',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Being Your Own Boss

**Self-employment** means working for yourself!

Examples:
- Start a small business
- Offer services (tutoring, cleaning, design)
- Sell products online
- Create content (YouTube, blog)

**Pros:** Flexibility, unlimited earning potential
**Cons:** No steady paycheck, more responsibility',
  '# 自分が社長になる

**自営業**とは、自分自身のために働くことです!

例:
- 小規模なビジネスを始める
- サービスを提供する(家庭教師、清掃、デザイン)
- オンラインで商品を販売する
- コンテンツを作る(YouTube、ブログ)

**メリット:** 柔軟性、無限の収入の可能性
**デメリット:** 安定した給料がない、より多くの責任',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Passive Income',
  '不労所得',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '# Money While You Sleep

**Passive income** = Earning money without active work

Examples:
- Rental properties (rent from tenants)
- Investments (dividends from stocks)
- Royalties (from books, music, patents)
- Online courses (sell once, earn forever)

Note: Usually requires upfront work or money to start!',
  '# 寝ている間のお金

**不労所得** = 積極的に働かなくても得られるお金

例：
- 賃貸物件（入居者からの家賃）
- 投資（株式からの配当金）
- ロイヤリティ（本、音楽、特許から）
- オンラインコース（一度販売すれば、永続的に収入）

注意：通常、始めるには事前の作業や資金が必要です！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is active income?',
  '能動的所得とは何ですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money earned by working',
  '働いて得たお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money earned while sleeping',
  '寝ている間に稼いだお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money from investments',
  '投資からの収入',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money found on the street',
  '道で見つけたお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Active income is money earned through active work and effort.',
  'アクティブインカム（勤労所得）とは、積極的な労働や努力を通じて得られる収入のことです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which is an example of passive income?',
  '不労所得の例はどれですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Your salary from a job',
  '仕事から得る給料',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Payment for mowing a lawn',
  '芝刈りの仕事の報酬',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Rent from a property you own',
  'あなたが所有する不動産からの賃貸収入',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Allowance from parents',
  '親からのお小遣い',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Rental income is passive - you earn it without active daily work.',
  '賃貸収入は受動的収入です。毎日積極的に働かなくても収入を得ることができます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What does self-employment mean?',
  '自営業とは何を意味しますか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Working for a big company',
  '大企業で働くこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Working for yourself',
  '自分自身のために働くこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Being unemployed',
  '失業している',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Working part-time',
  'パートタイムで働くこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Self-employment means you are your own boss and work for yourself.',
  '自営業とは、自分が自分自身のボスであり、自分のために働くことを意味します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which is true about passive income?',
  '受動的所得について正しいのはどれですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It requires no effort ever',
  '一切の努力が不要である',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Anyone can start immediately with no money',
  '誰でもお金をかけずにすぐに始められる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It often requires upfront work or investment',
  '事前の労力や投資が必要なことが多い',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It always earns more than active income',
  '常にアクティブインカムより多く稼ぐことができる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Passive income streams usually require initial work or capital to establish.',
  '不労所得を得る仕組みは、通常、確立するために最初の労力や資金が必要です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Gross vs Net Income',
  '# 総収入と手取り収入',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 実際にいくら稼いでいますか?

**総収入(グロス・インカム)** = 何も差し引かれる前の総額
**純収入(ネット・インカム)** = 実際に手元に残るお金(税金や控除の後)

例:
- 総収入: $1,000
- 税金: -$200
- 健康保険: -$50
- 退職金積立: -$50
- **純収入(手取り): $700**

予算を立てる時は、常に純収入に注目しましょう!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Salary vs Hourly',
  '給与制と時給制',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 給与の2つの受け取り方

**給与制（サラリー）：**
- 年間の固定額
- 例：年間50,000ドル
- 毎月同じ給料
- 福利厚生が含まれることが多い

**時給制：**
- 働いた時間ごとに支払われる
- 例：時給15ドル
- 給料は労働時間によって変わる
- 残業手当がつく場合がある（1.5倍または2倍の rate）

どちらが「より良い」ということはありません - 仕事によって異なります！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Benefits and Bonuses',
  '福利厚生とボーナス',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# お金だけではありません

**福利厚生** = 給与以外の追加報酬

一般的な福利厚生：
- 健康保険
- 退職金制度への拠出（401k マッチング）
- 有給休暇
- 病気休暇
- 専門能力開発

**ボーナス：**
- 良い業績に対する追加支給
- 年末ボーナス
- 歩合給（販売実績に基づく収入）
- 利益配分

福利厚生は給与の20〜30%の価値がある場合があります！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is net income?',
  '純収入とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Total income before deductions',
  '控除前の総収入',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money you take home after deductions',
  '控除後に手元に残るお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money from the internet',
  'インターネットからのお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Bonus payments',
  'ボーナス支払い',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Net income is what you actually receive after taxes and deductions.',
  '手取り収入とは、税金や控除が差し引かれた後に実際に受け取る金額のことです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If your gross income is $2,000 and $400 is deducted, what is your net income?',
  '総収入が2,000ドルで400ドルが差し引かれた場合、手取り収入はいくらですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$2,400',
  '$2,400',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$2,000',
  '$2,000',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$1,600',
  '$1,600',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$400',
  '$400',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Net income = Gross - Deductions = $2,000 - $400 = $1,600.',
  '手取り収入 = 総収入 - 控除額 = $2,000 - $400 = $1,600です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is a benefit of hourly pay?',
  '時給制の利点は何ですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Same paycheck every month',
  '毎月同じ給料',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Can earn overtime pay',
  '残業代を稼ぐことができる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Always includes health insurance',
  '常に健康保険が含まれています',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Never changes',
  '変わらない',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Hourly workers often earn overtime (extra pay) for working extra hours.',
  '時給制で働く人は、追加の時間働くことで残業代（追加の給与）を得ることがよくあります。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which is NOT typically a job benefit?',
  'どれが通常、仕事の福利厚生では**ありません**か?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Health insurance',
  '健康保険',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Paid vacation',
  '有給休暇',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Free groceries',
  '無料の食料品',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '401k matching',
  '401k拠出金マッチング',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Free groceries are not a standard job benefit, unlike insurance or retirement contributions.',
  '無料の食料品は、保険や退職金拠出とは異なり、標準的な仕事の福利厚生ではありません。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Finding Opportunities',
  '機会を見つける',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 仕事を探す場所

**若い人向け:**
- 家族や近所の人に聞く
- 地元の店舗で「求人募集中」の看板を確認する
- 学校の求人掲示板
- コミュニティセンター

**大人向け:**
- オンライン求人サイト（LinkedIn、Indeed）
- 企業のウェブサイト
- ネットワーキングイベント
- 人材紹介会社
- 職業上のつながり

ヒント: 多くの仕事は知り合いを通じて見つかります！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Interview Skills',
  '面接のスキル',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 良い印象を与える

**面接の前:**
- 会社について調べる
- よくある質問への答えを準備する
- 適切な服装を選ぶ
- 10分前に到着する

**面接中:**
- しっかりと握手する
- アイコンタクトをする
- はっきりと自信を持って話す
- よく考えた質問をする
- 熱意を示す

**面接の後:**
- 24時間以内にお礼のメールを送る
- 1週間経っても返事がない場合はフォローアップする',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'First Day Tips',
  '初日のアドバイス',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 好調なスタートを切る

**初日について：**
- 早めに到着する
- ノートとペンを持参する
- 質問をする（やる気を示すことになります！）
- 同僚の名前を覚える
- 職場の文化を観察する
- 業務手順についてメモを取る

**最初の1週間/1ヶ月：**
- 信頼できる人になる（時間通りに出勤する）
- 自ら進んで行動する
- フィードバックを素直に受け入れる
- 間違いを認めることを恐れない
- 同僚との関係を築く

覚えておきましょう：誰もが最初は新人でした。周りの人たちはあなたの成功を願っています！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What should you do before a job interview?',
  '面接の前に何をすべきですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Nothing, just show up',
  '何もしない、ただ行くだけ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Research the company',
  '企業について調べる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Memorize your resume',
  '履歴書を暗記する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Bring your parents',
  '両親を連れて行く',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Researching the company shows you''re serious and helps you answer questions better.',
  '会社について調べることで、あなたが真剣であることを示し、質問により良く答えることができます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How early should you arrive for an interview?',
  '面接には何分前に到着すべきですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '1 hour early',
  '1時間前',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Exactly on time',
  '時間ぴったりに',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '10 minutes early',
  '10分前',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '10 minutes late',
  '10分遅刻',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Arriving 10 minutes early shows punctuality without being too early.',
  '10分前に到着することは、早すぎることなく時間厳守を示します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What does "networking" mean when job hunting?',
  '求職活動における「ネットワーキング」とはどういう意味ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Using the internet',
  'インターネットを使うこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Building professional connections',
  '専門的な人脈を築くこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Working with computers',
  'コンピューターを使って働くこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Social media posting',
  'ソーシャルメディアへの投稿',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Networking is building relationships with people who can help your career.',
  'ネットワーキングとは、キャリアに役立つ人々との関係を築くことです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'On your first day, you should:',
  '初日には、次のことをすべきです：',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Pretend to know everything',
  'すべてを知っているふりをする',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Stay quiet and don''t ask questions',
  '静かにして質問をしないようにする',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Ask questions and take notes',
  '質問をして、メモを取る',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Leave early to avoid mistakes',
  '間違いを避けるために早く帰る',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Asking questions and taking notes shows you want to learn and do well.',
  '質問をしたりメモを取ったりすることは、学びたい、良い仕事をしたいという意欲を示します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why Diversify',
  '# なぜ分散させるのか',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# すべての卵を一つのかごに入れない

**複数の収入源が重要な理由:**

1. **安全性:** 一つの収入源を失っても、他の収入源があります
2. **成長:** 複数の収入源 = より多くの総収入
3. **自由:** 一つの雇用主への依存度が低くなります
4. **機会:** 新しいスキルを学べます

**実例:**
サラの場合:
- フルタイムの仕事: 年間50,000ドル
- 週末の家庭教師: 年間5,000ドル
- 賃貸物件: 年間10,000ドル
- 合計: 年間65,000ドル、しかもバックアッププランあり!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Side Hustles',
  'サイドハッスル（副業）',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 追加収入のアイデア

**人気のある副業：**

**オンライン：**
- フリーランスのライティング、デザイン、プログラミング
- オンライン家庭教師
- Etsyでハンドメイド作品を販売
- YouTubeコンテンツ制作
- アフィリエイトマーケティング

**オフライン：**
- ライドシェアドライバー（Uber、Lyft）
- フードデリバリー
- ペットシッター/犬の散歩代行
- 住宅修理/便利屋サービス
- イベント撮影

**ヒント：**
- 小さく始めて、徐々に成長させましょう
- 楽しめることを選びましょう
- 無理をしないようにしましょう
- 収入と支出を記録しましょう',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Investment Income',
  '投資収入',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# お金がお金を生む

**投資収入の種類：**

**1. 配当金：**
- 企業が株主に支払います
- 通常は四半期ごとです
- 再投資するか現金で受け取ることができます

**2. 利子：**
- 貯蓄口座から得られます
- 債券は利子を支払います
- 一般的にリスクは低いです

**3. キャピタルゲイン（売却益）：**
- 投資を利益を得て売却します
- 株を50ドルで買い、100ドルで売る = 50ドルの利益
- リスクを伴う場合があります

**4. 賃貸収入：**
- 不動産を所有し、入居者に貸します
- 多額の初期資本が必要です
- 継続的なメンテナンスが必要です

**重要なポイント：** 早くから投資を始めましょう。少額でも時間とともに成長します！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why is having multiple income streams beneficial?',
  '複数の収入源を持つことはなぜ有益なのでしょうか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s more complicated',
  '複雑になるから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Provides financial security if one source fails',
  '一つの収入源が途絶えた場合に経済的な安定を提供します',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'You work less',
  '働く時間が減る',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s required by law',
  '法律で義務付けられているため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Multiple income streams provide security - if one stops, you still have others.',
  '複数の収入源があれば安心です。一つが止まっても、他の収入源がまだあります。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is a "side hustle"?',
  'サイドハッスル（副業）とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Your main job',
  'あなたの本業',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A dance move',
  'サイドステップのダンス',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Extra work for additional income',
  '追加収入を得るための副業',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A type of investment',
  '投資の一種',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A side hustle is extra work outside your main job to earn more money.',
  'サイドハッスルとは、本業以外で収入を得るための副業のことです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What are dividends?',
  '配当金とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money companies pay shareholders',
  '企業が株主に支払うお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Bank fees',
  '銀行手数料',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Types of savings accounts',
  '貯蓄口座の種類',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Job bonuses',
  '仕事のボーナス',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Dividends are payments companies make to shareholders from profits.',
  '配当金とは、企業が利益から株主に対して支払うお金のことです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which is considered passive investment income?',
  '投資による受動的所得とみなされるのはどれですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Salary from your job',
  '仕事からの給与',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Dividends from stocks',
  '株式からの配当金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Payment for freelance work',
  'フリーランスの仕事に対する報酬',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Tips from waiting tables',
  'チップ（ウェイター・ウェイトレスとしての接客）',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Dividends are passive income - you earn them without active daily work.',
  '配当金は受動的収入です。毎日積極的に働かなくても得られる収入です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'When starting a side hustle, you should:',
  'サイドビジネスを始める際には、次のことをすべきです：',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Quit your main job immediately',
  'すぐにメインの仕事を辞める',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Start small and grow gradually',
  '小さく始めて徐々に成長させる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Ignore tracking income',
  '収入の記録を無視する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Never tell anyone',
  '誰にも言わない',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s smart to start small, test the market, and grow sustainably.',
  '小さく始めて、市場をテストし、持続可能な成長を目指すことが賢明です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Essential Expenses',
  '必需的支出',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 生きるために必要なもの

**ニーズ（必要なもの）** = 生存と基本的な健康のために必要なもの

本当に必要なもの：
- 食べ物と水
- 住居（家）
- 衣服（天候に適したもの）
- 医療
- 基本的な交通手段（仕事・学校への移動）
- 光熱費（電気、水道、暖房）

**子どもの場合：** 学用品、健康的な食べ物
**大人の場合：** 住宅ローン・家賃、保険、基本的な食料品',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Discretionary Spending',
  '任意支出',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 生活をより良くするもの

**欲しいもの** = 生活を向上させるが、生存には必要ではないもの

例：
- レストランでの食事（家で料理できます）
- 最新の携帯電話（古いモデルでも使えます）
- ブランド服（普通の服で十分です）
- ストリーミングサービス
- 休暇旅行
- おもちゃやゲーム

欲しいものは悪いことではありません！しかし、必要なものが優先です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Making Choices',
  '選択をする',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 判断が難しい中間領域

購入するものには、両方の側面があるものもあります:

**電話:**
- 必要なもの: 安全や仕事のための基本的な電話
- 欲しいもの: 1,200ドルの最新フラッグシップモデル

**食べ物:**
- 必要なもの: 栄養のある食事
- 欲しいもの: 毎日高級レストランでの食事

**衣類:**
- 必要なもの: 冬の暖かいコート
- 欲しいもの: デザイナーブランドのコート

**賢い支出 = まず必要なものを満たし、予算内で欲しいものを楽しむ**',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which of these is a true NEED?',
  'どれが本当の「ニーズ（必要なもの）」ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Designer sneakers',
  'デザイナーブランドのスニーカー',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Basic shelter',
  '基本的な住居',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Video games',
  'ビデオゲーム',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Vacation',
  '休暇',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Shelter is essential for survival, making it a need.',
  '住居は生存に不可欠なものであるため、ニーズ（必要なもの）です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which is a WANT?',
  'どれが「欲しいもの」ですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Medicine when sick',
  '病気の時の薬',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Water to drink',
  '飲み水',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Streaming service subscription',
  'ストリーミングサービスの定期購読',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Winter coat in cold climate',
  '寒冷地での冬用コート',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Streaming services are entertainment wants, not survival needs.',
  'ストリーミングサービスは娯楽の「欲しいもの」であり、生存に必要な「必要なもの」ではありません。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why is it important to identify needs vs wants?',
  'ニーズとウォンツを区別することはなぜ重要ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'To never enjoy anything',
  '何も楽しまないため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'To prioritize spending wisely',
  '賢く支出に優先順位をつけるため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Wants are illegal',
  '欲しいものは違法です',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Needs are free',
  '必要なものは無料です',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Identifying needs vs wants helps you spend money on essentials first.',
  'ニーズ（必要なもの）とウォンツ（欲しいもの）を区別することで、まず生活必需品にお金を使うことができます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A $1,200 phone when a $300 phone works is an example of:',
  '300ドルの携帯電話で十分なのに1,200ドルの携帯電話を選ぶことは、次のうちどれの例ですか：',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A need',
  '必要なもの',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Smart spending',
  'スマートな支出',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Upgrading a need to a want',
  '必要なものを欲しいものにアップグレードすること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Required spending',
  '必要な支出',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'The basic phone is the need; the expensive one adds want features.',
  '基本的な携帯電話が「必要なもの」であり、高価なものは「欲しいもの」の機能が追加されています。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Comparing Prices',
  '価格の比較',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 最良の取引を見つける

**価格比較のヒント:**

1. **複数の店舗を確認する** - 同じ商品でも価格が異なります
2. **価格比較ウェブサイトを利用する** - Google Shopping、CamelCamelCamel
3. **単価を考慮する** - オンスあたり、個あたりの価格
4. **セールサイクルに注目する** - 電化製品は新モデルの前に値下がりします

**例:**
シリアルA: 12オンスで4ドル = 0.33ドル/オンス
シリアルB: 18オンスで5ドル = 0.28ドル/オンス

シリアルBの方がお得です!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Coupons and Discounts',
  'クーポンと割引',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 無料でできる節約術

**お得な情報の見つけ方:**
- 店舗アプリとポイントプログラム
- メールマガジン
- クーポンサイト(RetailMeNot、Honey)
- 学生割引/シニア割引
- キャッシュバック付きクレジットカード
- 1つ買うともう1つ無料(BOGO)オファー

**クーポンのルール:**
✅ 本当に必要なものにだけ使いましょう
❌ セール品だからという理由だけで買わないようにしましょう
✅ 可能な場合はクーポンを重ねて使いましょう
❌ クーポンを使わずに期限切れにしないようにしましょう

必要のないものに1ドル節約しても = お金の無駄遣いです!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Avoiding Impulse Buys',
  '衝動買いを避ける',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# まず立ち止まって考えましょう

**衝動買い** = 計画せずに買うこと、通常は感情的に買ってしまうこと

**抵抗する方法:**

1. **24時間ルール** - 欲しいものを買う前に1日待ちましょう
2. **リストを作る** - リストにあるものだけを買いましょう
3. **感情的なときは買い物を避ける** - 悲しいとき、嬉しいとき、退屈なとき
4. **マーケティングメールの配信を停止する**
5. **クレジットカードは家に置いておく** - 自由裁量の買い物には現金を使いましょう
6. **働いた時間でコストを計算する** - 「100ドルの靴 = 5時間の労働。それだけの価値がある?」

**注意すべきお店のトリック:**
- レジのところにあるお菓子(誘惑)
- 「期間限定!」(偽の緊急性)
- あちこちにあるセールの看板(必ずしもお得ではありません)
- 心地よい香りや音楽(長居させるため)',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What should you compare when shopping for the best deal?',
  '最もお得な買い物をするために、何を比較すべきですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Only the total price',
  '合計金額のみ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Brand name only',
  'ブランド名のみ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Unit price and quality',
  '単位価格と品質',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'The prettiest package',
  '一番きれいなパッケージ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Comparing unit price (price per unit) and quality gives you the best value.',
  '単位価格（1個あたりの価格）と品質を比較することで、最もお得な買い物ができます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is the 24-hour rule?',
  '24時間ルールとは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Stores are open 24 hours',
  '店舗は24時間営業です',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Wait a day before buying wants',
  '欲しいものを買う前に1日待つ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Shop for 24 hours straight',
  '24時間ぶっ通しで買い物をする',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Sales last 24 hours',
  'セールは24時間続く',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'The 24-hour rule means waiting a day to avoid impulse purchases.',
  '24時間ルールとは、衝動買いを避けるために1日待つことを意味します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'When should you use coupons?',
  'クーポンはいつ使うべきですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'For everything on sale',
  'セール中のすべての商品に使用する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Only for items you actually need',
  '実際に必要なものだけに使う',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Never',
  '決して使わない',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Only on weekends',
  '週末だけ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Coupons save money only if used for things you actually need.',
  'クーポンは、実際に必要なものに使う場合にのみお金を節約できます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is an impulse buy?',
  '衝動買いとは何ですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A planned purchase',
  '計画的な購入',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Buying without planning, often emotionally',
  '計画せずに購入すること、しばしば感情的に',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Buying groceries',
  '食料品を買うこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Using a coupon',
  'クーポンを使うこと',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Impulse buying is unplanned purchasing driven by emotion rather than need.',
  '衝動買いとは、必要性ではなく感情によって引き起こされる計画外の購入のことです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Price vs Quality',
  '価格と品質',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 良い・速い・安い - 2つを選ぶ

**価値 = 品質 ÷ 価格**

**高価でも価値がある場合があります:**
- 5年持つ靴 vs 6ヶ月しか持たない靴
- 丈夫な工具 vs すぐ壊れる工具
- 健康的な食品 vs 安いジャンクフード

**安くても問題ない場合があります:**
- 基本的な用品（紙、鉛筆）
- めったに使わないもの
- 流行遅れになる流行品

**例:**
20ドルの靴（6ヶ月持つ） = 年間40ドル
80ドルの靴（3年持つ） = 年間27ドル

高価な靴の方が実際には安くなります！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Long-term Cost',
  '長期的なコスト',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 総所有コスト

価格表示だけを見るのではなく、もっと先を見ましょう！

**考慮すべき点：**
- メンテナンス費用
- 修理費用
- エネルギー/燃料費用
- 耐用年数
- 再販価値

**例：2台の車**

**車A：15,000ドル**
- ガソリンを多く使う：年間3,000ドル
- 頻繁な修理：年間1,500ドル
- 5年間 = 15,000ドル + 22,500ドル = 37,500ドル

**車B：22,000ドル**
- 効率的なガソリン使用：年間1,500ドル
- 信頼性が高く、修理が少ない：年間500ドル
- 5年間 = 22,000ドル + 10,000ドル = 32,000ドル

安い車の方が実際には5,500ドルも多く費用がかかります！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Brand vs Generic',
  'ブランド品とジェネリック品',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# ブランド名が重要な場合

**ジェネリック/ストアブランドで十分なもの:**
- 基本的な食品(小麦粉、砂糖、お米)
- 市販薬(同じ成分)
- 掃除用品
- 学用品
- 基本的な衣類

**ブランド品が価値のあるもの:**
- 電子機器(より良いサポート)
- 専門的な工具
- 安全性に関わるもの
- 毎日使うもの

**判断する方法:**
1. 成分/素材を確認する
2. レビューを読む
3. まずジェネリックを試す
4. ジェネリックで問題なければ、それを使い続ける!

多くの場合、ジェネリック商品はブランド品と同じ工場で作られています!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What does "value" mean in shopping?',
  '買い物における「価値」とはどういう意味ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'The cheapest price',
  '最も安い値段',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Quality divided by price',
  '価格で割った品質',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'The most expensive item',
  '最も高価な商品',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Brand name',
  'ブランド名',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Value is the balance between quality and price - best quality for the price paid.',
  '価値とは、品質と価格のバランスです。支払った価格に対して最高の品質を得ることを意味します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why might expensive shoes be a better value?',
  '高価な靴の方が価値が高い理由は何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They look better',
  'より見た目が良いです',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They last longer, costing less per year',
  '長持ちするので、年間あたりのコストが安くなります',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Expensive is always better',
  '高価なものは常に優れています',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They''re trendy',
  '流行している',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If expensive shoes last much longer, the cost per year of use is often lower.',
  '高価な靴がずっと長持ちする場合、年間の使用コストは低くなることがよくあります。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is "total cost of ownership"?',
  '「総所有コスト」とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Just the purchase price',
  '購入価格のみ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'All costs including maintenance over time',
  '維持費を含む全ての費用',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'The price including tax',
  '税込み価格',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What you can sell it for later',
  '後で売却できる価格',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Total cost includes purchase price plus all future costs like maintenance and fuel.',
  '総費用には、購入価格に加えて、メンテナンスや燃料などの将来のすべての費用が含まれます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'When is generic/store brand usually fine?',
  'ジェネリック/ストアブランドが通常問題ない場合はいつですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Never',
  '決して良くない',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Always',
  'いつでも',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'For basic items like flour or medicine',
  '小麦粉や薬などの基本的な商品の場合',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Only for food',
  '食品のみ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Generic brands often have the same quality as name brands for basic items.',
  'ジェネリックブランド（プライベートブランド）は、基本的な商品において、有名ブランドと同じ品質を持つことがよくあります。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Marketing Tactics',
  'マーケティング戦略',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# お店があなたにもっとお金を使わせる方法

**よくある手口:**

1. **アンカー価格:** "200ドル → 99ドル!" - 99ドルが安く見えるようにする
2. **おとり価格:** 小(3ドル)、中(5ドル)、大(5.50ドル) - 誰もが大を選ぶ
3. **希少性:** "残り3個だけ!" - 偽りの緊急性を作り出す
4. **送料無料の最低購入額:** "50ドル以上で送料無料" - 5ドルを節約するために50ドルを使わせる
5. **セット販売:** "3個購入で10%オフ" - 必要なのは1個だけだったのに

**抵抗する方法:**
- 買い物の前に予算を把握しておく
- 事前に価格を調べる
- 感情的な時には買い物をしない
- 「お得な情報」を慎重に見極める',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Subscription Traps',
  'サブスクリプションの罠',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# ゆっくりとしたお金の流出

**サブスクリプションのリスク:**

**無料ではない無料トライアル:**
- クレジットカードの登録が必要
- トライアル期間後に自動更新される
- 解約が難しい
- 存在を忘れてしまう

**月額サブスクリプションは積み重なります:**
- 動画配信サービス: $15
- 音楽配信サービス: $10
- ゲーム: $15
- ソフトウェア: $20
- ジム(未使用): $40
- **合計: $100/月 = $1,200/年!**

**保護戦略:**
- トライアル期間終了日のカレンダーリマインダーを設定する
- 毎月サブスクリプションを見直す
- 有効期限付きのバーチャルカードを使用する
- 自分に問いかける: 「今月使った? 継続。使わなかった? 解約。」
- 無料トライアル後はすぐに解約する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Hidden Fees',
  '隠れた手数料',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 細かい文字を読む

**注意すべきもの:**

**リゾート/ホテルの料金:**
- 客室: $100/泊
- 「リゾート料金」: $30/泊
- 駐車場: $25/泊
- **実際の費用: $155/泊!**

**チケット料金:**
- コンサートチケット: $50
- 「サービス料」: $15
- 「施設使用料」: $8
- **実際の費用: $73**

**銀行手数料:**
- 当座貸越手数料
- ATM手数料
- 月額口座維持手数料
- 海外取引手数料

**回避する方法:**
1. 購入前にすべての規約を読みます
2. 総費用を事前に確認します
3. 「手数料無料」の代替案を探します
4. 契約前に実際の費用を計算します',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is "anchor pricing"?',
  'アンカー・プライシング（アンカー価格）とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Selling boat anchors',
  'ボートの錨を販売すること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Showing a high price crossed out to make sale price look better',
  '高い価格に取り消し線を引いて、セール価格をより魅力的に見せること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Giving discounts to sailors',
  '船乗りに割引を提供すること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Setting the lowest price',
  '最低価格を設定すること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Anchor pricing shows a high "original" price to make the sale price seem like a great deal.',
  'アンカープライシングとは、高い「元の」価格を表示することで、セール価格がとてもお得に見えるようにする手法です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why are "free trials" sometimes a trap?',
  'なぜ「無料トライアル」が罠になることがあるのでしょうか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They''re actually free',
  '実際に無料です',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They auto-renew and charge your card',
  '自動更新されてカードに請求されるため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They give you free stuff',
  '無料で商品がもらえるから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They''re illegal',
  '違法だから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Free trials often auto-renew into paid subscriptions that charge your card.',
  '無料トライアルは、多くの場合、有料サブスクリプションに自動更新され、クレジットカードに請求されます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If you have 5 subscriptions at $15 each, how much per year?',
  '月額15ドルのサブスクリプションを5つ持っている場合、年間でいくらになりますか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$75',
  '$75',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$180',
  '$180',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$900',
  '$900',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$750',
  '$750',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '5 × $15 = $75/month × 12 months = $900/year.',
  '5 × $15 = $75/月 × 12ヶ月 = $900/年',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What are "hidden fees"?',
  '「隠れた手数料」とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Illegal charges',
  '違法な請求',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Additional costs not shown in advertised price',
  '広告価格に表示されていない追加費用',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Fees for hiding things',
  '物を隠すための費用',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Discounts',
  '割引',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Hidden fees are extra costs added on top of the advertised price.',
  '隠れた手数料とは、広告表示価格に上乗せされる追加費用のことです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Best way to avoid subscription traps:',
  'サブスクリプションの罠を避ける最善の方法：',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Never subscribe to anything',
  '何も購読しない',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Review and cancel unused subscriptions regularly',
  '未使用のサブスクリプションを定期的に確認し、解約する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Subscribe to everything',
  'すべてに登録する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Ignore your bank statements',
  '銀行の明細書を無視する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Regularly reviewing subscriptions helps you cancel ones you don''t use.',
  '定期的にサブスクリプションを見直すことで、使っていないものを解約することができます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Emergency Fund',
  '緊急資金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 予期せぬ出来事への備え

**緊急資金** = 予期しない問題のために貯めておくお金

**必要な理由：**
- 車の故障：修理代5万円
- 医療上の緊急事態：医療費10万円
- 失業：3〜6ヶ月分の生活費が必要
- 家の修理：給湯器の故障

**緊急資金がない場合：**
- 借金をすることになる（クレジットカード、ローン）
- 請求書を支払えない
- ストレスや心配

**緊急資金がある場合：**
- 落ち着いて問題に対処できる
- 借金の必要がない
- 心の平穏

**目標：** 3〜6ヶ月分の生活費',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Future Goals',
  '# 将来の目標',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 欲しいもののために貯金する

**短期目標(1年未満):**
- 新しい携帯電話
- 誕生日パーティー
- 修学旅行
- 休日のプレゼント

**中期目標(1年〜5年):**
- 車
- 大学
- 結婚式
- 住宅の頭金

**長期目標(5年以上):**
- 退職後の生活
- 子供の教育
- 夢の休暇
- ビジネスの立ち上げ

貯金をすれば、借金なしで夢を叶えることができます!',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Financial Security',
  '経済的な安心',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 心の平穏

**経済的安定とは：**
- 給料日から給料日まで何とか暮らすような生活をしない
- 緊急事態に対応できる
- お金のことでストレスを感じない
- 選択の自由がある
- 他の人を助けることができる

**貯蓄の利点：**
1. **自由** - 悪い仕事を断ることができます
2. **機会** - 夢に挑戦できます
3. **ストレスの軽減** - 夜ぐっすり眠れます
4. **自立** - 他人に頼らなくて済みます
5. **未来の自分** - 今の自分に感謝するでしょう！

「使った後に残ったお金を貯めるのではなく、貯めた後に残ったお金を使いなさい。」- ウォーレン・バフェット',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is an emergency fund?',
  '緊急資金とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money for vacations',
  '休暇のためのお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money saved for unexpected problems',
  '予期しない問題に備えて貯めたお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money for shopping',
  '買い物のためのお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money you never touch',
  '絶対に手をつけないお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'An emergency fund is savings set aside for unexpected expenses or emergencies.',
  '緊急資金とは、予期しない出費や緊急事態のために取っておく貯金のことです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How many months of expenses should an emergency fund cover?',
  '緊急資金は何ヶ月分の支出をカバーすべきですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '1 week',
  '1週間',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '1 month',
  '1ヶ月',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '3-6 months',
  '3〜6ヶ月',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '10 years',
  '10年',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Financial experts recommend 3-6 months of living expenses for emergencies.',
  '金融の専門家は、緊急時のために3〜6ヶ月分の生活費を貯蓄することを推奨しています。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which is a short-term savings goal?',
  '短期的な貯蓄目標はどれですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Retirement',
  '退職後の生活資金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'College in 10 years',
  '10年後の大学進学',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'New video game in 3 months',
  '3ヶ月後の新しいビデオゲーム',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Buying a house',
  '家を購入すること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Short-term goals are things you want to buy within a year.',
  '短期目標とは、1年以内に購入したいものを指します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What does Warren Buffett say about saving?',
  'ウォーレン・バフェットは貯蓄について何と言っていますか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Spend first, save what''s left',
  '最初に使って、残ったものを貯金する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Save first, spend what''s left',
  '最初に貯蓄し、残りを使う',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Never save anything',
  '何も貯蓄しない',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Save everything',
  'すべて貯金する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Buffett advises to save first (pay yourself first), then spend what remains.',
  'バフェット氏は、まず貯蓄する（自分自身に最初に支払う）ことを勧めており、その後残ったお金を使うようにとアドバイスしています。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'SMART Goals',
  'SMART目標',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 効果的な目標の設定

**SMART = 具体的、測定可能、達成可能、関連性がある、期限がある**

❌ 悪い目標：「もっとお金を貯める」
✅ SMART目標：「12月31日までに新しいノートパソコンのために1,200ドルを貯める」

**詳しく見てみましょう：**
- **具体的：** 新しいノートパソコン
- **測定可能：** 1,200ドル
- **達成可能：** 12か月間、月100ドル
- **関連性がある：** 学校や仕事で必要
- **期限がある：** 12月31日まで

**SMART目標の立て方：**
1. 欲しいものを正確に決める
2. 費用を調べる
3. 期限を設定する
4. 毎月必要な貯蓄額を計算する
5. 自分の収入で実現可能か確認する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Short-term vs Long-term',
  '短期目標と長期目標',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 目標が違えば、戦略も違う

**短期目標（1年未満）：**
- 普通預金口座に預ける
- 簡単にアクセス可能
- リスクが低い
- 例：新しい自転車、コンサートチケット

**中期目標（1年〜5年）：**
- 高金利預金口座または定期預金
- ある程度の成長があり、引き出しも可能
- リスクは低〜中程度
- 例：車、大学、結婚式

**長期目標（5年以上）：**
- 株式や債券への投資が可能
- より高い成長の可能性
- リスクは中〜高程度（損失を回復する時間がある）
- 例：退職後の資金、家

貯蓄戦略は目標の期間に合わせましょう！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Tracking Progress',
  '進捗の記録',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# モチベーションを維持する

**追跡方法:**

1. **視覚的なトラッカー:**
   - 貯蓄温度計
   - 塗り絵チャート（10ドルごとに塗りつぶす）
   - 目標のアイテムの写真をスマホの壁紙に

2. **アプリとスプレッドシート:**
   - Mint、YNAB、Personal Capital
   - シンプルなExcel/Googleスプレッドシート
   - 銀行アプリの貯蓄目標機能

3. **物理的な方法:**
   - 各目標ごとに別々の瓶/封筒
   - 別の口座にお金を移動する
   - 責任パートナーとの週次チェックイン

**マイルストーンを祝いましょう:**
- 25%貯蓄達成: ちょっとしたご褒美
- 50%貯蓄達成: 友達に話す
- 75%貯蓄達成: どう使うか計画する
- 100%達成: 目標達成です! 🎉',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What does SMART goals stand for?',
  'SMART目標とは何の略ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Simple, Money, Achievable, Real, Timely',
  'シンプル、お金、達成可能、現実的、期限付き',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Specific, Measurable, Achievable, Relevant, Time-bound',
  '具体的、測定可能、達成可能、関連性のある、期限のある',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Save, Make, Acquire, Reach, Total',
  '貯蓄、稼ぐ、獲得、到達、合計',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Spend, Manage, Allocate, Record, Track',
  '使う、管理する、配分する、記録する、追跡する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'SMART is an acronym for Specific, Measurable, Achievable, Relevant, Time-bound.',
  'SMARTとは、Specific(具体的)、Measurable(測定可能)、Achievable(達成可能)、Relevant(関連性がある)、Time-bound(期限がある)の頭文字を取ったものです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'For a goal 8 years away, where should you keep the money?',
  '8年後の目標のために、お金はどこに保管すべきですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Under your mattress',
  'マットレスの下',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'In your wallet',
  'お財布の中',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Can invest in stocks for growth',
  '成長のために株式に投資できます',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'In a piggy bank',
  '貯金箱に入れる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Long-term goals (5+ years) can be invested for higher growth potential.',
  '長期目標（5年以上）は、より高い成長の可能性を求めて投資することができます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If you want to save $600 in 6 months, how much per month?',
  '6ヶ月で600ドルを貯めたい場合、1ヶ月あたりいくら必要ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$50',
  '$50',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$100',
  '$100',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$150',
  '$150',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$200',
  '$200',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$600 ÷ 6 months = $100 per month.',
  '$600 ÷ 6ヶ月 = 月$100',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why is tracking progress important?',
  'なぜ進捗を追跡することが重要なのでしょうか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'It''s not important',
  '重要ではありません',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Helps you stay motivated and on track',
  'モチベーションを維持し、目標に向かって順調に進むことができます',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Required by law',
  '法律で義務付けられているため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Banks force you to',
  '銀行があなたに強制するから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Tracking progress keeps you motivated and helps ensure you reach your goal.',
  '進捗を追跡することで、モチベーションを維持し、目標達成を確実にすることができます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Savings Accounts',
  '普通預金口座',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 銀行の基本的な普通預金

**普通預金口座の特徴：**
- 利息がつきます（通常0.01%から0.50%）
- FDIC保険付き（最大25万ドルまで）
- お金に簡単にアクセスできます
- 最低残高が低い、または不要です
- 引き出し回数に制限がある場合があります

**いつ使うか：**
- 緊急時の資金
- 短期的な目標
- すぐに必要になるかもしれないお金

**ヒント：** 残高が低すぎると手数料がかかる口座もあります。手数料無料の口座を選びましょう！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Interest Rates',
  '金利',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# お金が増える仕組み

**利息** = 銀行にお金を預けておくことで銀行があなたに支払うお金

**例:**
- 1,000ドルを貯金
- 金利:年5%
- 1年後:1,050ドル
- 2年後:1,102.50ドル(複利です!)

**複利** = 利息に対して利息が付くこと

**より高い金利を見つけられる場所:**
- オンライン銀行(1%から5%以上)
- 高利回り普通預金口座
- 定期預金(CD)
- マネーマーケット口座

**金利を比較しましょう** - わずかな違いが、時間が経つと大きな違いになります!

1%の場合:1,000ドル → 10年後に1,104ドル
5%の場合:1,000ドル → 10年後に1,629ドル',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Bank vs Credit Union',
  '銀行と信用組合',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 口座を開設する場所

**銀行：**
- 営利企業
- 支店とATMが多い
- より優れた技術/アプリ
- 通常、金利は低め
- 例：Chase、Bank of America

**信用組合：**
- 非営利、組合員所有
- より高い金利
- より低い手数料
- 支店が少ない
- 組合員資格が必要な場合がある
- 例：Navy Federal、地域の信用組合

**どちらも安全です** - FDIC（銀行）またはNCUA（信用組合）による保険付き

**選び方：**
- 支店/ATMが必要？ → 銀行
- より良い金利が欲しい？ → 信用組合
- オンラインバンキングを利用できる？ → オンライン銀行（最高金利）',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is FDIC insurance?',
  'FDIC保険とは何ですか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Car insurance',
  '自動車保険',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Protection for bank deposits up to $250,000',
  '銀行預金を最大25万ドルまで保護する制度',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Health insurance',
  '健康保険',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A type of savings account',
  '貯蓄口座の一種',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'FDIC insurance protects your bank deposits up to $250,000 if the bank fails.',
  'FDIC保険は、銀行が破綻した場合、あなたの銀行預金を最大25万ドルまで保護します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is compound interest?',
  '複利とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Flat interest rate',
  '固定金利',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Interest earned on both principal and previous interest',
  '元本と過去の利息の両方に対して得られる利息',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Interest you pay on loans',
  'ローンに対して支払う利息',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'No interest',
  '無利子',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Compound interest means you earn interest on your interest, accelerating growth.',
  '複利とは、利息に対しても利息が付くことを意味し、成長を加速させます。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Where typically find the highest interest rates?',
  '定期預金口座では通常、最も高い金利が得られます',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Traditional bank branches',
  '従来型の銀行店舗',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Under your mattress',
  'マットレスの下',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Online banks and credit unions',
  'オンライン銀行と信用組合',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Piggy banks',
  '貯金箱',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Online banks and credit unions often offer higher interest rates than traditional banks.',
  'オンライン銀行や信用組合は、従来の銀行よりも高い金利を提供することが多いです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If you save $100 at 4% interest for 1 year, how much will you have?',
  '年利4%で100ドルを1年間貯金した場合、いくらになりますか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$100',
  '$100',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$104',
  '$104',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$400',
  '$400',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$140',
  '$140',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$100 + ($100 × 0.04) = $104.',
  '$100 + ($100 × 0.04) = $104。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Pay Yourself First',
  '自分自身への支払いを最優先にする',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 貯蓄の黄金ルール

**「最初に自分に支払う」** = 他の支出よりも先に貯蓄する

**仕組み:**

❌ 古い方法:
1. 給料を受け取る
2. 請求書を支払う
3. 物を買う
4. 残ったものを貯蓄する(通常$0)

✅ 新しい方法:
1. 給料を受け取る
2. **すぐに10-20%を貯蓄する**
3. 請求書を支払う
4. 残ったもので物を買う

**効果がある理由:**
- 貯蓄を請求書として扱います(交渉の余地なし)
- 残った金額に合わせて支出を調整します
- 貯蓄が実際に実現します

「支出した後に残ったものを貯蓄するのではなく、貯蓄した後に残ったものを支出しましょう。」',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Automatic Transfers',
  '自動振替',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 設定したら忘れるだけ

**自動貯蓄** = 何もしなくてもお金が貯蓄口座に移動します

**設定方法:**

1. **給与の分割:**
   - 雇用主に貯蓄口座へ一定の割合を振り込むよう依頼
   - 残りは普通預金口座へ
   - 毎回の給与支払い時に実行されます

2. **銀行の自動振替:**
   - 定期振替を設定
   - 給料日ごとに、指定した金額が貯蓄口座へ移動
   - いつでも調整または一時停止が可能

3. **スケジュールに沿って貯蓄:**
   - 毎週: 心理的に楽
   - 隔週: 給与支払いスケジュールに合わせる
   - 毎月: シンプルで、より大きな金額

**メリット:**
- 意志の力は不要
- 忘れることがない
- 一貫した進歩
- 「目に見えなければ、気にならない」',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Round-up Apps',
  'ラウンドアップアプリ',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 痛みのない少額貯蓄

**端数切り上げアプリ** = 買い物を最も近いドルに切り上げ、差額を貯蓄

**仕組み:**

コーヒーを購入: $4.50
アプリが切り上げ: $5.00
差額を貯蓄: $0.50

10回の買い物 × 平均$0.50 = 1日$5 = 月$150!

**人気のアプリ:**
- Acorns
- Digit
- Qapital
- Chime (この機能があります)
- 多くの銀行がこのサービスを提供

**その他の少額貯蓄のコツ:**
- 受け取った$5札をすべて貯める
- 1日の終わりにすべての小銭を貯める
- 税金の還付金をすぐに貯める
- ボーナス/お祝い金を使う前に貯める
- 昇給分を貯める(給与が増えたら自動振替額を増やす)

**重要:** 小さく始めましょう! 1日$1 = 年$365',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What does "pay yourself first" mean?',
  '「自分に先に支払う」とはどういう意味ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Buy things for yourself',
  '自分のために物を買う',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Save money before paying bills',
  '請求書を支払う前にお金を貯める',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Give yourself a paycheck',
  '自分自身に給料を支払う',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Save money before spending on other things',
  '他のことにお金を使う前に貯金をすること',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Pay yourself first means saving a portion of income before spending on anything else.',
  '「自分に最初に支払う」とは、他の何かにお金を使う前に、収入の一部を貯蓄することを意味します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'What is automatic savings?',
  '自動貯蓄とは何ですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Money that appears magically',
  '魔法のように現れるお金',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Automatic transfers from checking to savings',
  '当座預金口座から貯蓄口座への自動振替',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Savings that grow automatically',
  '自動的に増える貯蓄',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A type of bank account',
  '銀行口座の種類',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Automatic savings is when money automatically transfers from checking to savings.',
  '自動貯蓄とは、お金が当座預金口座から貯蓄口座へ自動的に振り替えられることです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How do round-up apps work?',
  'ラウンドアップアプリはどのように機能しますか?',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Round down your balance',
  '残高を切り下げる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Round purchases up and save the difference',
  '購入金額を切り上げて、差額を貯蓄します',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Give you money',
  'お金をくれる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Round your interest',
  '利息を切り上げる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Round-up apps round each purchase up to the nearest dollar and save the difference.',
  'ラウンドアップアプリは、各購入を最も近いドルに切り上げて、その差額を貯蓄します。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If a round-up app saves $0.50 per transaction and you make 200 transactions/month, how much saved?',
  '端数切り上げアプリが1回の取引につき0.50ドルを貯蓄し、月に200回の取引を行う場合、いくら貯蓄できますか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$50',
  '$50',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$100',
  '$100',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$150',
  '$150',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$200',
  '$200',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '200 transactions × $0.50 = $100 saved per month.',
  '200回の取引 × $0.50 = 月$100の節約になります。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How Much to Save',
  'どのくらい貯金すべきか',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# あなたの緊急資金の目標

**標準的な推奨額：3～6ヶ月分の生活費**

**あなたの金額を計算しましょう：**

1. 月々の支出をリストアップ：
   - 家賃/住宅ローン：$1,000
   - 光熱費：$150
   - 食費：$400
   - 交通費：$200
   - 保険：$150
   - その他の必需品：$100
   - **合計：$2,000/月**

2. 3～6倍にする：
   - 最低額：$6,000
   - 理想額：$12,000

**考慮すべき要素：**
- 仕事の安定性（不安定 = 6ヶ月以上）
- 収入源（単一収入 = より多く必要）
- 健康状態（医療問題 = より多く必要）
- 扶養家族（子供 = より多く必要）',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'When to Use It',
  '# いつ使うべきか',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 本当の緊急事態のみ

**緊急資金を使うべき場合:**

✅ **本当の緊急事態:**
- 失業
- 医療上の緊急事態
- 必要不可欠な家の修理（給湯器、暖房機器）
- 必要不可欠な車の修理（通勤できない場合）
- 家族の緊急事態

❌ **緊急事態ではないもの:**
- テレビのセール
- 休暇
- 新しい服
- 外食
- 必要不可欠ではないアップグレード
- 「本当に欲しい」という理由

**基本的な考え方:**
「このお金を使わなければ、何か悪いことが起こるか？」と自問してください
- はい = 緊急事態
- いいえ = 緊急事態ではない

別に「楽しみのためのお金」を用意しておくと、緊急資金に手を出さずに済みます！',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Rebuilding After Use',
  '使用後の立て直し',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
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
  '# 軌道に戻る

**緊急資金を使った場合:**

**1. 罪悪感を感じないでください!**
- それが緊急資金の目的です
- あなたは正しく事前に計画していました
- それがあったことを誇りに思ってください

**2. 他の貯蓄を一時的に中断します:**
- まず緊急資金の再構築に集中します
- 他の目標は待つことができます
- 緊急資金 = 最優先事項

**3. 合理的に可能な限り早く再構築します:**
- すぐに始めます(20ドルでも役立ちます)
- 臨時収入を使います(税金の還付、ボーナス)
- 一時的に自由裁量支出を削減します
- 副収入を検討します

**4. 何が起こったかを見直します:**
- 防ぐことはできましたか?
- もっと保険が必要ですか?
- もっと大きな緊急資金が必要ですか?
- それに応じて計画を調整します

**再構築計画の例:**
- 使用額: 2,000ドル
- 収入: 月3,000ドル
- 貯蓄可能額: 月500ドル
- 再構築期間: 4ヶ月',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'How many months of expenses should an emergency fund cover?',
  '緊急資金はどのくらいの月数分の支出をカバーすべきですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '1 week',
  '1週間',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '1 month',
  '1ヶ月',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '3-6 months',
  '3〜6ヶ月',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '10 years',
  '10年',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Financial experts recommend 3-6 months of living expenses.',
  'ファイナンシャルの専門家は、3〜6ヶ月分の生活費を推奨しています。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Which is a TRUE emergency for using your emergency fund?',
  '緊急資金を使うべき**本当の緊急事態**はどれですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'TV is on sale',
  'テレビが安売りしている',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Want to go on vacation',
  '休暇に行きたい',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Car breaks down and you can''t get to work',
  '車が故障して、仕事に行けなくなった場合',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'New video game release',
  '新しいビデオゲームの発売',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'A car needed for work is a true emergency. Other examples are wants.',
  '仕事に必要な車は真の緊急事態です。その他の例は欲しいものです。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'If your monthly expenses are $2,500, what''s a minimum emergency fund?',
  '毎月の支出が2,500ドルの場合、最低限の緊急資金はいくらですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$2,500',
  '$2,500',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$5,000',
  '$5,000',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$7,500',
  '$7,500',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '$25,000',
  '$25,000',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  '3 months × $2,500 = $7,500 minimum.',
  '3ヶ月 × $2,500 = 最低$7,500',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'After using emergency fund, what should you do?',
  '緊急資金を使用した後、何をすべきですか？',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Forget about it',
  '忘れる',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Immediately rebuild it',
  'すぐに再構築する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Wait a year to rebuild',
  '1年待ってから再構築する',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Use it for other things',
  '他のことに使う',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Rebuild your emergency fund as soon as possible after using it.',
  '緊急時資金を使用した後は、できるだけ早く再構築しましょう。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Why might someone need 6+ months of expenses saved?',
  '長期的な失業や深刻な健康問題に備えるため',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'They like big numbers',
  '大きな数字が好きだから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Unstable job or single income household',
  '不安定な仕事または単一収入の世帯',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Banks require it',
  '銀行がそれを要求するから',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Everyone needs exactly 6 months',
  'すべての人に正確に6ヶ月分が必要',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
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
  'ja',
  'Less stable situations warrant larger emergency funds for more protection.',
  'より不安定な状況では、より多くの保護のために、より大きな緊急資金が必要です。',
  '2026-01-06T01:59:54.111Z',
  '2027-01-06T01:59:54.111Z'
);

-- ========================================
-- VERIFICATION
-- ========================================
SELECT 'Translation completed for ja!' as message;
SELECT COUNT(*) as total_translations
FROM "ContentTranslation"
WHERE target_language = 'ja';
