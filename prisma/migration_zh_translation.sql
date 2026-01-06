-- Multilingual Translation Migration
-- Inserts translations into ContentTranslation table

-- STEP 1: Drop foreign key constraints to allow insertion
ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_lesson_fkey";

ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_game_fkey";

DELETE FROM "ContentTranslation"
WHERE target_language = 'zh';

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
  'zh',
  'Introduction',
  '引言',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# What is Money?

Money is what we use to buy things we need and want. It''s a tool that makes trading easier!

**For Kids:** Money is like tickets at an arcade - you exchange them for prizes!

**For Adults:** Money serves as a medium of exchange, eliminating the inefficiencies of barter systems.',
  '# 什么是金钱?

金钱是我们用来购买所需物品和想要物品的东西。它是一种让交易变得更容易的工具!

**儿童版:** 金钱就像游戏厅里的代币——你用它们来换取奖品!

**成人版:** 金钱作为交换媒介,消除了以物易物系统的低效性。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'History of Money',
  '# 货币的历史',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# How Money Started

Long ago, people traded items directly - like trading 5 apples for 1 chicken. This was called **bartering**.

But bartering had problems:
- What if you had apples but the other person didn''t want them?
- How many apples equal one chicken?

So humans invented money to solve these problems!',
  '# 货币的起源

很久以前，人们直接交换物品——比如用5个苹果换1只鸡。这被称为**以物易物**。

但以物易物存在问题：
- 如果你有苹果，但对方不想要怎么办？
- 多少个苹果等于一只鸡？

所以人类发明了货币来解决这些问题！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why We Use Money',
  '# 为什么我们使用货币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Why Money is Useful

Money makes life easier because:

1. **Store of Value** - You can save it for later
2. **Unit of Account** - Everything has a clear price
3. **Medium of Exchange** - Everyone accepts it

Instead of carrying around chickens and apples, you carry money!',
  '# 为什么钱很有用

钱让生活变得更容易,因为:

1. **价值储藏** - 你可以把它存起来以后用
2. **记账单位** - 所有东西都有明确的价格
3. **交换媒介** - 每个人都接受它

你不用到处带着鸡和苹果,只需要带钱!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Modern Money',
  '现代货币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Money Today

Today, money comes in many forms:
- **Physical:** Coins and bills you can touch
- **Digital:** Money in bank accounts and apps
- **Cryptocurrency:** New digital money on the internet

Most people use a mix of all three types!',
  '# 今天的货币

今天，货币有多种形式：
- **实物货币：** 你可以触摸的硬币和纸币
- **数字货币：** 银行账户和应用程序中的钱
- **加密货币：** 互联网上的新型数字货币

大多数人会混合使用这三种类型！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is the main purpose of money?',
  '金钱的主要用途是什么?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'To make trading easier',
  '使交易更容易',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'To be pretty',
  '为了好看',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'To collect',
  '收藏',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'To burn',
  '烧掉',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money was invented to make trading goods and services easier than bartering.',
  '货币的发明是为了让商品和服务的交易比以物易物更加便利。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What was the old way of trading before money?',
  '在有货币之前，旧的交易方式是什么？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Selling',
  '售卖',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Bartering',
  '以物易物',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Giving away',
  '赠送',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Stealing',
  '偷窃',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Bartering means trading items directly, like 5 apples for 1 chicken.',
  '以物易物是指直接交换物品,比如用5个苹果换1只鸡。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which is NOT a form of modern money?',
  '以下哪项不是现代货币的形式?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Digital money',
  '数字货币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Coins',
  '硬币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Rocks',
  '岩石',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Cryptocurrency',
  '加密货币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'While some ancient cultures used special rocks as money, regular rocks are not modern currency.',
  '虽然一些古代文化曾使用特殊的石头作为货币,但普通石头并不是现代货币。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money helps us "store value" means:',
  '金钱帮助我们"储存价值"的意思是：',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'We can save it for later',
  '我们可以把它存起来以后用',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'We must spend it now',
  '我们必须现在就花掉它',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It loses value quickly',
  '它会迅速贬值',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It takes up space',
  '它占用空间',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Storing value means money keeps its worth over time so you can save it.',
  '储存价值意味着货币能够随着时间保持其价值,这样你就可以储蓄它。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Coins and Bills',
  '硬币和纸币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Physical Money

**Coins** are made of metal and usually worth less. They''re good for small purchases like candy or parking meters.

**Bills (Banknotes)** are made of paper or plastic and worth more. They''re lighter and easier to carry than lots of coins.

💡 Fun fact: The ink and paper for bills cost less than 10 cents, but the bill might be worth $100!',
  '# 实物货币

**硬币**由金属制成，通常价值较小。它们适合用于小额购物，比如买糖果或投停车计时器。

**纸币（钞票）**由纸或塑料制成，价值更高。它们比大量硬币更轻便，更容易携带。

💡 趣味小知识：纸币的油墨和纸张成本不到10美分，但这张纸币的面值可能是100美元！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Digital Money',
  '数字货币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Money You Can''t Touch

Most money today is **digital** - it exists as numbers in a computer!

Examples:
- Money in your bank account
- Payment apps like PayPal, Venmo
- Credit card payments
- Mobile wallets like Apple Pay

You never touch this money, but you can still spend it!',
  '# 你无法触摸的钱

如今大多数钱都是**数字化的** - 它以数字的形式存在于电脑里!

例子:
- 你银行账户里的钱
- 支付应用程序,如PayPal、Venmo
- 信用卡支付
- 移动钱包,如Apple Pay

你永远无法触摸到这些钱,但你仍然可以花掉它!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Cryptocurrency Basics',
  '加密货币基础知识',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 一种新型货币

**加密货币**是使用计算机代码来保护交易安全的数字货币。

最著名的例子：
- 比特币 (BTC)
- 以太坊 (ETH)

**主要区别：**
- 没有政府控制它
- 在所有国家通用
- 非常安全但也可能有风险
- 价格波动很大！

⚠️ 对于初学者来说，在了解更多之前，请坚持使用常规货币！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What are coins usually made of?',
  '硬币通常是由什么制成的?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Paper',
  '纸',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Metal',
  '金属',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Plastic',
  '塑料',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Wood',
  '木头',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Coins are made of metal, which makes them durable and hard to counterfeit.',
  '硬币是由金属制成的,这使得它们耐用且难以伪造。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which is an example of digital money?',
  '哪个是数字货币的例子?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A $10 bill',
  '一张10美元纸币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A quarter',
  '一枚25美分硬币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Your bank account balance',
  '您的银行账户余额',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Gold bars',
  '金条',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Bank account balances are digital money - they exist as electronic records.',
  '银行账户余额是数字货币——它们以电子记录的形式存在。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is true about cryptocurrency?',
  '关于加密货币，哪项陈述是正确的？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It is controlled by governments',
  '它由政府控制',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It never changes in value',
  '它的价值永远不会变化',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It uses computer code for security',
  '它使用计算机代码来保障安全',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'You can hold it in your hand',
  '你可以用手握住它',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Cryptocurrency uses advanced computer code (cryptography) to secure transactions.',
  '加密货币使用先进的计算机代码(加密技术)来保护交易安全。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why is digital money convenient?',
  '为什么数字货币很方便?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'You can carry large amounts easily',
  '可以轻松携带大量金额',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It weighs a lot',
  '它很重',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It can get wet',
  '它可能会被打湿',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'You must count it manually',
  '你必须手动计数',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Digital money is convenient because you can have millions in your account without physical storage.',
  '数字货币很方便,因为你的账户里可以有数百万而不需要实物存储空间。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Supply and Demand',
  '供需关系',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# What Makes Money Valuable?

Money has value because of **supply and demand**:

**Supply** = How much money exists
**Demand** = How many people want it

If everyone wants dollars and there aren''t many, dollars are valuable.
If there are too many dollars, each one is worth less.

Think of it like rare trading cards - rare cards are more valuable!',
  '# 什么让货币有价值?

货币有价值是因为**供给和需求**:

**供给** = 存在多少货币
**需求** = 有多少人想要它

如果每个人都想要美元而美元不多,美元就很有价值。
如果美元太多,每一美元的价值就会降低。

想想稀有交易卡——稀有卡片更有价值!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Government Role',
  '政府的作用',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Who Controls Money?

Governments and central banks control how much money exists:

- **Print too much** = Money becomes less valuable (inflation)
- **Print too little** = Hard to do business (deflation)

They try to keep the amount "just right" so the economy stays healthy.

This is why you can''t just print money at home - it would make money worthless!',
  '# 谁控制货币?

政府和中央银行控制着货币的存量:

- **印太多** = 货币变得不值钱(通货膨胀)
- **印太少** = 难以开展商业活动(通货紧缩)

他们努力保持货币数量"恰到好处",以维持经济健康。

这就是为什么你不能在家里印钱——那会让货币变得毫无价值!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Trust in Money',
  '对货币的信任',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Why We Trust Money

Money only works if people trust it!

We trust money because:
1. The government says it''s legal
2. Stores accept it
3. We can pay taxes with it
4. It has security features (hard to fake)

If people stopped trusting it, money would become just paper or numbers.',
  '# 为什么我们信任货币

货币只有在人们信任它时才有用!

我们信任货币是因为:
1. 政府说它是合法的
2. 商店接受它
3. 我们可以用它纳税
4. 它有防伪特征(难以伪造)

如果人们不再信任它,货币就会变成只是纸张或数字。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What happens if a government prints too much money?',
  '如果政府印制过多货币会发生什么？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Everyone becomes rich',
  '每个人都会变得富有',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money becomes less valuable',
  '货币变得不那么值钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money becomes more valuable',
  '货币变得更有价值',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Nothing changes',
  '什么都不会改变',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Printing too much money causes inflation - each dollar is worth less.',
  '印刷过多的货币会导致通货膨胀——每一美元的价值就会降低。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Supply and demand means:',
  '供需关系是指:',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How much exists and how many want it',
  '存在多少以及有多少人想要它',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Where to buy things',
  '在哪里购买东西',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How to save money',
  '如何省钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Types of currency',
  '货币的种类',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Supply is how much exists, demand is how many people want it.',
  '供应量是指存在多少，需求量是指有多少人想要它。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why can''t you just print your own money?',
  '为什么你不能自己印钞票?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It would make all money worthless',
  '这会让所有的钱都变得一文不值',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Printers are expensive',
  '打印机很贵',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Paper is hard to find',
  '纸张很难找到',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'You can, it''s allowed',
  '你可以,这是允许的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If everyone could print money, there would be too much supply and it would lose value.',
  '如果每个人都能印钞票,那么货币供应量就会过多,货币就会失去价值。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money has value primarily because:',
  '货币之所以有价值，主要是因为：',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s pretty',
  '它很漂亮',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'People trust and accept it',
  '人们信任并接受它',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s made of precious materials',
  '它是由贵重材料制成的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s rare',
  '它很稀缺',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money''s value comes from collective trust and acceptance in society.',
  '货币的价值来自于社会的集体信任和接受。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What role do governments play with money?',
  '政府在货币中扮演什么角色?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They determine fashion trends',
  '他们决定时尚潮流',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They control the supply',
  '他们控制货币供应量',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They force you to spend',
  '他们强迫你消费',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Nothing at all',
  '完全不参与',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Governments and central banks control how much money is in circulation.',
  '政府和中央银行控制流通中的货币数量。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Major Currencies',
  '主要货币',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# World Money

Different countries use different money!

**Major World Currencies:**
- 🇺🇸 US Dollar (USD) - Most widely used
- 🇪🇺 Euro (EUR) - Used in many European countries
- 🇬🇧 British Pound (GBP) - Used in United Kingdom
- 🇯🇵 Japanese Yen (JPY) - Used in Japan
- 🇨🇳 Chinese Yuan (CNY) - Used in China

Each has its own symbol and value!',
  '# 世界货币

不同的国家使用不同的货币!

**主要世界货币:**
- 🇺🇸 美元 (USD) - 使用最广泛
- 🇪🇺 欧元 (EUR) - 在许多欧洲国家使用
- 🇬🇧 英镑 (GBP) - 在英国使用
- 🇯🇵 日元 (JPY) - 在日本使用
- 🇨🇳 人民币 (CNY) - 在中国使用

每种货币都有自己的符号和价值!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Exchange Rates',
  '汇率',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 国家之间的货币兑换

**汇率**告诉你一种货币在另一种货币中值多少钱。

例如:
1 USD = 0.85 EUR

这意味着一美元可以兑换0.85欧元。

**汇率每天都在变化**，取决于:
- 各个经济体的强弱程度
- 利率
- 政治稳定性
- 供求关系',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'International Trade',
  '国际贸易',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Why Exchange Rates Matter

When countries trade with each other, they need to exchange currencies:

- A US company buying products from Japan needs Yen
- A European tourist in America needs Dollars
- Online shopping from other countries requires conversion

**Strong currency** = Your money buys more in other countries
**Weak currency** = Your money buys less abroad

This affects travel, shopping, and business!',
  '# 为什么汇率很重要

当国家之间进行贸易时,它们需要兑换货币:

- 美国公司从日本购买产品需要日元
- 欧洲游客在美国需要美元
- 从其他国家网上购物需要货币兑换

**强势货币** = 你的钱在其他国家能买到更多东西
**弱势货币** = 你的钱在国外买到的东西更少

这会影响旅行、购物和商业活动!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is the currency used in most European countries?',
  '大多数欧洲国家使用的货币是什么?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Dollar',
  '美元',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Euro',
  '欧元',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Pound',
  '英镑',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Peso',
  '比索',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'The Euro (EUR) is used by 20 European Union countries.',
  '欧元(EUR)被20个欧盟国家使用。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What does an exchange rate tell you?',
  '汇率告诉你什么?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How fast money grows',
  '钱增长的速度',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Where to shop',
  '去哪里购物',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How much one currency is worth in another',
  '一种货币在另一种货币中的价值',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How to save money',
  '如何省钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Exchange rates show the value of one currency compared to another.',
  '汇率显示一种货币相对于另一种货币的价值。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If 1 USD = 100 JPY, how many yen is $5?',
  '如果 1 美元 = 100 日元，那么 5 美元是多少日元？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '50 yen',
  '50日元',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '100 yen',
  '100日元',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '500 yen',
  '500日元',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '5 yen',
  '5日元',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '5 dollars × 100 yen per dollar = 500 yen.',
  '5美元 × 每美元100日元 = 500日元。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'When would you need to exchange currency?',
  '什么时候你需要兑换货币?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Traveling to another country',
  '去另一个国家旅行',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Shopping at local stores',
  '在当地商店购物',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Paying bills at home',
  '在家支付账单',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Saving money',
  '存钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'You need to exchange currency when traveling abroad or buying from international sellers.',
  '当您出国旅行或从国际卖家购买商品时,需要兑换货币。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What makes a currency "strong"?',
  '什么使一种货币"强势"?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s made of strong materials',
  '它由坚固的材料制成',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It buys more in other countries',
  '它在其他国家能买到更多东西',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s heavy',
  '它很重',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s colorful',
  '它色彩鲜艳',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A strong currency has high purchasing power in international markets.',
  '强势货币在国际市场上具有较高的购买力。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is Inflation',
  '什么是通货膨胀',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 当物品变得更贵时

**通货膨胀**是指价格随时间上涨。

例子：
- 1990年：一块糖果售价0.50美元
- 2025年：同样的糖果售价1.50美元

你的钱买到的东西比以前少了！

**发生的原因：**
- 流通中的货币增多
- 产品需求增加
- 生产成本上升

一些通货膨胀（每年2-3%）是正常且健康的。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How Inflation Affects You',
  '# 通货膨胀如何影响你',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 你的钱会贬值

**购买力** = 你的钱能买到什么

通货膨胀时：
- 今天的100美元比明年的100美元能买更多东西
- 如果只是把储蓄放在罐子里，它们会贬值
- 工资需要增长才能跟上

**例子：**
如果通货膨胀率是每年3%：
- 今天的100美元 = 明年97美元的购买力
- 今天的100美元 = 2年后94美元的购买力

这就是为什么爷爷奶奶会说"我们那时候东西更便宜"——确实如此！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Protecting Against Inflation',
  '# 抵御通货膨胀',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 如何对抗通货膨胀

别让通货膨胀吃掉你的钱!方法如下:

**1. 把钱存入有利息的储蓄账户**
- 利息帮助钱增长
- 抵消部分通货膨胀

**2. 投资股票、债券或房地产**
- 这些通常比通货膨胀增长更快
- 风险更高但能保护购买力

**3. 增加你的收入**
- 要求加薪
- 学习新技能
- 开展副业

**4. 明智地做预算**
- 追踪钱的去向
- 寻找更优惠的交易
- 减少不必要的开支

记住:藏在床垫下的现金每年都在贬值!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is inflation?',
  '什么是通货膨胀?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'When prices go down',
  '当价格下降时',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'When prices go up over time',
  '当价格随着时间推移而上涨',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'When money is printed',
  '当货币被印刷时',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'When people save money',
  '当人们储蓄金钱时',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Inflation is the general increase in prices over time.',
  '通货膨胀是指价格随时间推移普遍上涨的现象。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If inflation is 5% and you have $100 in cash for a year, what happens?',
  '如果通货膨胀率为5%，而你有100美元现金放了一年，会发生什么？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'You can buy 5% more',
  '你可以多买 5% 的东西',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'You can buy the same amount',
  '你可以购买相同数量的商品',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'You can buy 5% less',
  '你能买到的东西减少5%',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Your money disappears',
  '你的钱消失了',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'With 5% inflation, your $100 loses 5% of purchasing power.',
  '在5%的通货膨胀率下，你的100美元会损失5%的购买力。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why do prices tend to increase over time?',
  '为什么价格会随着时间推移而上涨?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Stores want more profit only',
  '商店只想要更多利润',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Due to inflation and increased costs',
  '由于通货膨胀和成本上升',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Because money becomes stronger',
  '因为货币变得更强劲',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s random',
  '这是随机的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Prices increase due to inflation, which comes from various economic factors.',
  '价格上涨是由通货膨胀引起的,而通货膨胀来自各种经济因素。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is a good way to protect against inflation?',
  '什么是抵御通货膨胀的好方法?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Hide cash under your mattress',
  '把现金藏在床垫下',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Spend all your money immediately',
  '立即花光所有钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Invest in assets that grow',
  '投资于能增值的资产',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Do nothing',
  '什么都不做',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Investing in growing assets helps maintain or increase purchasing power.',
  '投资增长型资产有助于维持或增加购买力。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is "purchasing power"?',
  '什么是"购买力"?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How strong you are',
  '你有多强壮',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What you can buy with your money',
  '你的钱能买到什么',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Your job title',
  '你的职位名称',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How much money you earn',
  '你赚了多少钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Purchasing power is what your money can actually buy.',
  '购买力是指你的钱实际上能买到什么。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Is some inflation considered normal?',
  '一定程度的通货膨胀被认为是正常的吗?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'No, inflation is always bad',
  '不，通货膨胀总是有害的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Yes, 2-3% annual inflation is normal',
  '是的,每年2-3%的通货膨胀是正常的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Only in poor countries',
  '仅在贫穷国家',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Inflation never happens',
  '通货膨胀从不发生',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Moderate inflation of 2-3% per year is normal and indicates economic growth.',
  '每年2-3%的温和通货膨胀是正常的，表明经济在增长。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Jobs and Careers',
  '工作与职业',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Working for Money

**Active income** = Money you earn by working

Types of jobs:
- **Employee:** Work for a company (steady paycheck)
- **Freelancer:** Work for yourself (multiple clients)
- **Contractor:** Work on specific projects

**For kids:** Chores, lawn mowing, pet sitting
**For adults:** Full-time jobs, part-time work, consulting',
  '# 工作赚钱

**主动收入** = 通过工作赚取的钱

工作类型：
- **雇员：** 为公司工作（稳定的薪水）
- **自由职业者：** 为自己工作（多个客户）
- **承包商：** 从事特定项目工作

**对于孩子：** 做家务、修剪草坪、照看宠物
**对于成人：** 全职工作、兼职工作、咨询',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Self-Employment',
  '自雇就业',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Being Your Own Boss

**Self-employment** means working for yourself!

Examples:
- Start a small business
- Offer services (tutoring, cleaning, design)
- Sell products online
- Create content (YouTube, blog)

**Pros:** Flexibility, unlimited earning potential
**Cons:** No steady paycheck, more responsibility',
  '# 成为自己的老板

**自雇**意味着为自己工作！

例子：
- 创办小企业
- 提供服务（辅导、清洁、设计）
- 在线销售产品
- 创作内容（YouTube、博客）

**优点：**灵活性、无限的收入潜力
**缺点：**没有稳定的薪水、更多的责任',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Passive Income',
  '被动收入',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '# Money While You Sleep

**Passive income** = Earning money without active work

Examples:
- Rental properties (rent from tenants)
- Investments (dividends from stocks)
- Royalties (from books, music, patents)
- Online courses (sell once, earn forever)

Note: Usually requires upfront work or money to start!',
  '# 睡觉时也能赚钱

**被动收入** = 无需主动工作也能赚钱

例子：
- 出租房产（从租客那里收取租金）
- 投资（从股票获得分红）
- 版税（来自书籍、音乐、专利）
- 在线课程（销售一次，永久获益）

注意：通常需要前期的工作或资金投入才能开始！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is active income?',
  '什么是主动收入?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money earned by working',
  '通过工作赚取的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money earned while sleeping',
  '睡觉时赚取的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money from investments',
  '来自投资的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money found on the street',
  '在街上捡到的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Active income is money earned through active work and effort.',
  '主动收入是通过积极的工作和努力赚取的钱。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which is an example of passive income?',
  '以下哪项是被动收入的例子?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Your salary from a job',
  '你从工作中获得的工资',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Payment for mowing a lawn',
  '修剪草坪的报酬',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Rent from a property you own',
  '您拥有的房产的租金收入',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Allowance from parents',
  '父母给的零花钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Rental income is passive - you earn it without active daily work.',
  '租金收入是被动收入——无需每天主动工作就能获得。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What does self-employment mean?',
  '自雇是什么意思?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Working for a big company',
  '为大公司工作',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Working for yourself',
  '为自己工作',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Being unemployed',
  '失业',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Working part-time',
  '兼职工作',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Self-employment means you are your own boss and work for yourself.',
  '自雇意味着你是自己的老板,为自己工作。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which is true about passive income?',
  '关于被动收入，哪个说法是正确的？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It requires no effort ever',
  '永远不需要任何努力',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Anyone can start immediately with no money',
  '任何人都可以在没有资金的情况下立即开始',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It often requires upfront work or investment',
  '它通常需要前期工作或投资',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It always earns more than active income',
  '它总是比主动收入赚得更多',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Passive income streams usually require initial work or capital to establish.',
  '被动收入来源通常需要前期的工作或资金投入才能建立。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Gross vs Net Income',
  '# 总收入与净收入',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 你真正赚了多少钱?

**总收入** = 扣除任何费用之前的总金额
**净收入** = 你实际到手的钱(扣除税款和其他扣款后)

例子:
- 总收入:$1,000
- 税款:-$200
- 医疗保险:-$50
- 退休金:-$50
- **净收入(实际到手):$700**

做预算时要始终关注净收入!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Salary vs Hourly',
  '工资制 vs 计时制',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 两种获得报酬的方式

**薪资制:**
- 每年固定金额
- 例如:每年$50,000
- 每月工资相同
- 通常包含福利

**时薪制:**
- 按工作小时数计酬
- 例如:每小时$15
- 工资根据工作小时数变化
- 可能获得加班费(1.5倍或2倍费率)

两种方式没有"更好"之分——取决于具体工作!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Benefits and Bonuses',
  '福利和奖金',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 不仅仅是金钱

**福利** = 工资以外的额外补偿

常见福利：
- 健康保险
- 退休金缴纳（401k配套）
- 带薪休假日
- 病假
- 专业发展

**奖金：**
- 因良好表现获得的额外报酬
- 节日奖金
- 佣金（基于销售的收入）
- 利润分成

福利的价值可能相当于你工资的20-30%！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is net income?',
  '什么是净收入?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Total income before deductions',
  '扣除前的总收入',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money you take home after deductions',
  '扣除后你实际拿到手的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money from the internet',
  '来自互联网的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Bonus payments',
  '奖金支付',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Net income is what you actually receive after taxes and deductions.',
  '净收入是扣除税款和其他扣除项后你实际收到的金额。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If your gross income is $2,000 and $400 is deducted, what is your net income?',
  '如果你的总收入是 $2,000，扣除 $400 后，你的净收入是多少？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$2,400',
  '$2,400',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$2,000',
  '$2,000',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$1,600',
  '$1,600',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$400',
  '$400',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Net income = Gross - Deductions = $2,000 - $400 = $1,600.',
  '净收入 = 总收入 - 扣除额 = $2,000 - $400 = $1,600。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is a benefit of hourly pay?',
  '计时工资的好处是什么?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Same paycheck every month',
  '每月获得相同的薪水',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Can earn overtime pay',
  '可以赚取加班费',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Always includes health insurance',
  '总是包括健康保险',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Never changes',
  '从不改变',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Hourly workers often earn overtime (extra pay) for working extra hours.',
  '按小时计酬的工人通常可以通过加班(额外工作时间)获得加班费(额外报酬)。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which is NOT typically a job benefit?',
  '以下哪项通常不是工作福利？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Health insurance',
  '健康保险',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Paid vacation',
  '带薪假期',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Free groceries',
  '免费食品杂货',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '401k matching',
  '401k配套',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Free groceries are not a standard job benefit, unlike insurance or retirement contributions.',
  '免费杂货不是标准的工作福利,不同于保险或退休金缴纳。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Finding Opportunities',
  '寻找机会',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 在哪里寻找工作

**对于年轻人：**
- 询问家人和邻居
- 查看当地商店的"招聘中"标志
- 学校就业公告栏
- 社区中心

**对于成年人：**
- 在线招聘网站（领英、Indeed）
- 公司官网
- 社交招聘活动
- 招聘机构
- 职业人脉

小贴士：许多工作都是通过你认识的人找到的！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Interview Skills',
  '面试技巧',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 给人留下好印象

**面试前：**
- 了解公司情况
- 准备常见问题的答案
- 选择合适的服装
- 提前10分钟到达

**面试中：**
- 握手要有力
- 保持眼神交流
- 说话清晰、自信
- 提出有见地的问题
- 表现出热情

**面试后：**
- 在24小时内发送感谢邮件
- 如果一周内没有收到回复，进行跟进',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'First Day Tips',
  '第一天工作小贴士',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 强势开局

**第一天：**
- 提早到达
- 带上笔记本和笔
- 提出问题（这表明你很在意！）
- 记住同事的名字
- 观察职场文化
- 记录工作流程

**第一周/第一个月：**
- 保持可靠（准时到岗）
- 主动积极
- 从容接受反馈
- 不要害怕承认错误
- 与同事建立良好关系

记住：每个人都曾是新人。大家都希望你成功！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What should you do before a job interview?',
  '在参加工作面试之前，你应该做什么？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Nothing, just show up',
  '什么都不做,直接去就行',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Research the company',
  '了解公司情况',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Memorize your resume',
  '背诵你的简历',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Bring your parents',
  '带上你的父母',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Researching the company shows you''re serious and helps you answer questions better.',
  '研究公司表明你很认真,并帮助你更好地回答问题。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How early should you arrive for an interview?',
  '面试应该提前多久到达?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '1 hour early',
  '提前1小时',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Exactly on time',
  '准时到达',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '10 minutes early',
  '提前10分钟',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '10 minutes late',
  '迟到10分钟',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Arriving 10 minutes early shows punctuality without being too early.',
  '提前10分钟到达既能展现守时,又不会过早到达。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What does "networking" mean when job hunting?',
  '在求职时，"人际网络"是什么意思？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Using the internet',
  '使用互联网',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Building professional connections',
  '建立职业人脉',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Working with computers',
  '使用电脑工作',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Social media posting',
  '在社交媒体上发帖',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Networking is building relationships with people who can help your career.',
  '人脉关系是指与能够帮助你职业发展的人建立联系。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'On your first day, you should:',
  '在第一天上班时，你应该：',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Pretend to know everything',
  '假装什么都懂',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Stay quiet and don''t ask questions',
  '保持安静，不要提问',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Ask questions and take notes',
  '提问并做笔记',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Leave early to avoid mistakes',
  '早点离开以避免犯错',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Asking questions and taking notes shows you want to learn and do well.',
  '提问和做笔记表明你想要学习并做好工作。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why Diversify',
  '# 为什么要多元化',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 不要把所有鸡蛋放在一个篮子里

**为什么多元化收入来源很重要:**

1. **安全性:** 如果失去一个收入来源,你还有其他的
2. **增长:** 多个来源 = 更多总收入
3. **自由:** 减少对单一雇主的依赖
4. **机会:** 学习新技能

**真实案例:**
莎拉有:
- 全职工作: 每年$50,000
- 周末辅导: 每年$5,000
- 出租房产: 每年$10,000
- 总计: 每年$65,000,还有备用计划!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Side Hustles',
  '副业',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 额外收入点子

**热门副业：**

**线上：**
- 自由职业写作、设计、编程
- 在线辅导
- 在Etsy上销售手工艺品
- YouTube内容创作
- 联盟营销

**线下：**
- 网约车司机（Uber、Lyft）
- 外卖配送
- 宠物看护/遛狗
- 家庭维修/杂工服务
- 活动摄影

**提示：**
- 从小做起，逐步发展
- 选择你喜欢的事情
- 不要让自己精疲力竭
- 记录收入和支出',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Investment Income',
  '投资收入',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 钱生钱

**投资收入类型：**

**1. 股息：**
- 公司向股东支付
- 通常按季度支付
- 可以再投资或提取现金

**2. 利息：**
- 来自储蓄账户
- 债券支付利息
- 通常风险较低

**3. 资本利得：**
- 出售投资获利
- 以50美元买入股票，以100美元卖出 = 50美元收益
- 可能有风险

**4. 租金收入：**
- 拥有房产，出租给租户
- 需要大量前期资金
- 需要持续维护

**关键：** 尽早开始投资，即使是小额投资也会随着时间增长！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why is having multiple income streams beneficial?',
  '为什么拥有多种收入来源是有益的?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s more complicated',
  '它更复杂',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Provides financial security if one source fails',
  '在一个收入来源失败时提供财务保障',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'You work less',
  '你工作更少',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s required by law',
  '这是法律要求的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Multiple income streams provide security - if one stops, you still have others.',
  '多元收入来源提供安全保障——如果一个收入来源中断，你仍然拥有其他收入来源。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is a "side hustle"?',
  '什么是"副业"?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Your main job',
  '你的主要工作',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A dance move',
  '一个舞蹈动作',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Extra work for additional income',
  '为赚取额外收入而做的工作',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A type of investment',
  '一种投资类型',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A side hustle is extra work outside your main job to earn more money.',
  '副业是在你主要工作之外的额外工作,用来赚取更多收入。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What are dividends?',
  '什么是股息?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money companies pay shareholders',
  '公司支付给股东的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Bank fees',
  '银行费用',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Types of savings accounts',
  '储蓄账户的类型',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Job bonuses',
  '工作奖金',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Dividends are payments companies make to shareholders from profits.',
  '股息是公司从利润中向股东支付的款项。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which is considered passive investment income?',
  '哪一项被认为是被动投资收入?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Salary from your job',
  '工作薪水',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Dividends from stocks',
  '股票分红',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Payment for freelance work',
  '自由职业工作的报酬',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Tips from waiting tables',
  '餐桌服务的小费',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Dividends are passive income - you earn them without active daily work.',
  '股息是被动收入——你无需每天主动工作就能获得这笔收入。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'When starting a side hustle, you should:',
  '当开始副业时，你应该：',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Quit your main job immediately',
  '立即辞掉你的主要工作',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Start small and grow gradually',
  '从小做起，逐步发展',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Ignore tracking income',
  '忽略收入追踪',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Never tell anyone',
  '绝不告诉任何人',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s smart to start small, test the market, and grow sustainably.',
  '从小规模开始、测试市场并可持续增长是明智的做法。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Essential Expenses',
  '必需开支',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 生存所需

**需求** = 生存和基本福祉所必需的东西

真正的需求：
- 食物和水
- 住所（住房）
- 衣物（适合天气的）
- 医疗保健
- 基本交通（上班/上学）
- 水电煤气（电力、水、暖气）

**对于孩子：** 学习用品、健康食品
**对于成年人：** 房贷/租金、保险、基本日用品',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Discretionary Spending',
  '可自由支配的支出',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 让生活更美好的东西

**想要的东西** = 能改善生活但对生存并非必需的东西

例子：
- 餐厅用餐（你可以在家做饭）
- 最新款手机（旧款也能用）
- 名牌服装（普通衣服也能穿）
- 流媒体服务
- 度假旅行
- 玩具和游戏

想要的东西并不坏！但需要的东西要优先考虑。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Making Choices',
  '做出选择',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 棘手的中间地带

有些消费既是需要也是想要：

**手机：**
- 需要：用于安全/工作的基本手机
- 想要：1,200美元的旗舰机型

**食物：**
- 需要：营养餐
- 想要：每天去昂贵的餐厅

**服装：**
- 需要：冬天的保暖外套
- 想要：名牌外套

**明智消费 = 首先满足需要，在预算内享受想要**',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which of these is a true NEED?',
  '以下哪项是真正的**需求**?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Designer sneakers',
  '名牌运动鞋',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Basic shelter',
  '基本住所',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Video games',
  '电子游戏',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Vacation',
  '度假',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Shelter is essential for survival, making it a need.',
  '住所对生存至关重要,因此它是一种需要。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which is a WANT?',
  '以下哪项是**想要**的东西?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Medicine when sick',
  '生病时的药品',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Water to drink',
  '喝水',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Streaming service subscription',
  '流媒体服务订阅',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Winter coat in cold climate',
  '寒冷气候下的冬季外套',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Streaming services are entertainment wants, not survival needs.',
  '流媒体服务是娱乐性的想要,而不是生存必需品。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why is it important to identify needs vs wants?',
  '为什么识别需求和欲望很重要?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'To never enjoy anything',
  '从不享受任何东西',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'To prioritize spending wisely',
  '为了明智地安排支出优先顺序',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Wants are illegal',
  '欲望是非法的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Needs are free',
  '需求是免费的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Identifying needs vs wants helps you spend money on essentials first.',
  '区分需要和想要可以帮助你优先把钱花在必需品上。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A $1,200 phone when a $300 phone works is an example of:',
  '当一个300美元的手机就能用时，却买一个1200美元的手机，这是一个什么例子：',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A need',
  '需求',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Smart spending',
  '明智消费',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Upgrading a need to a want',
  '将需求升级为欲望',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Required spending',
  '必需支出',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'The basic phone is the need; the expensive one adds want features.',
  '基础手机是需求;昂贵的手机增加了想要的功能。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Comparing Prices',
  '比较价格',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 找到最优惠的价格

**比价技巧：**

1. **查看多家商店** - 同样的商品，不同的价格
2. **使用比价网站** - Google Shopping、CamelCamelCamel
3. **考虑单位价格** - 每盎司价格、每件价格
4. **留意促销周期** - 电子产品在新型号推出前会降价

**示例：**
麦片A：12盎司售价$4 = $0.33/盎司
麦片B：18盎司售价$5 = $0.28/盎司

麦片B更划算！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Coupons and Discounts',
  '优惠券和折扣',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 免费省钱方法

**在哪里找到优惠:**
- 商店应用程序和会员计划
- 电子邮件通讯
- 优惠券网站(RetailMeNot, Honey)
- 学生/老年人折扣
- 返现信用卡
- 买一送一优惠

**优惠券规则:**
✅ 只用于你真正需要的东西
❌ 不要仅仅因为打折就购买
✅ 尽可能叠加使用优惠券
❌ 不要让优惠券过期未使用

在你不需要的东西上省1美元 = 浪费金钱!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Avoiding Impulse Buys',
  '避免冲动购物',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 停下来,先思考

**冲动购物** = 没有计划的购买,通常是情绪化的

**如何抵制:**

1. **24小时原则** - 在购买想要的东西之前等待一天
2. **列清单** - 只买清单上的东西
3. **避免在情绪化时购物** - 悲伤、开心或无聊时
4. **取消订阅营销邮件**
5. **把信用卡留在家里** - 用现金进行非必需品购物
6. **用工作时间计算成本** - "100美元的鞋子 = 5小时工作。值得吗?"

**需要警惕的商店技巧:**
- 收银台的糖果(诱惑)
- "限时优惠!"(虚假紧迫感)
- 到处都是促销标志(不一定是真正的优惠)
- 宜人的气味/音乐(让你流连忘返)',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What should you compare when shopping for the best deal?',
  '购物时寻找最优惠商品时，你应该比较什么？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Only the total price',
  '只看总价',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Brand name only',
  '仅品牌名称',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Unit price and quality',
  '单价和质量',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'The prettiest package',
  '最漂亮的包装',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Comparing unit price (price per unit) and quality gives you the best value.',
  '比较单价(每单位价格)和质量能让你获得最佳性价比。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is the 24-hour rule?',
  '购物前等待24小时的规则是什么?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Stores are open 24 hours',
  '商店24小时营业',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Wait a day before buying wants',
  '在购买想要的东西之前等待一天',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Shop for 24 hours straight',
  '连续购物24小时',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Sales last 24 hours',
  '促销活动持续24小时',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'The 24-hour rule means waiting a day to avoid impulse purchases.',
  '24小时规则是指等待一天以避免冲动购物。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'When should you use coupons?',
  '什么时候应该使用优惠券?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'For everything on sale',
  '对所有打折商品使用',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Only for items you actually need',
  '只用于你实际需要的物品',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Never',
  '从不',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Only on weekends',
  '仅在周末',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Coupons save money only if used for things you actually need.',
  '优惠券只有在用于购买你真正需要的东西时才能省钱。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is an impulse buy?',
  '什么是冲动购买?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A planned purchase',
  '有计划的购买',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Buying without planning, often emotionally',
  '没有计划的购买,通常是冲动的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Buying groceries',
  '购买日用品',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Using a coupon',
  '使用优惠券',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Impulse buying is unplanned purchasing driven by emotion rather than need.',
  '冲动购买是由情绪而非需求驱动的无计划购买行为。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Price vs Quality',
  '# 价格与质量',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 好、快、便宜 - 只能选两个

**价值 = 质量 ÷ 价格**

**有时候贵是值得的:**
- 穿5年的鞋 vs 穿6个月的鞋
- 耐用的工具 vs 容易坏的工具
- 健康食品 vs 便宜的垃圾食品

**有时候便宜就够了:**
- 基本用品(纸张、铅笔)
- 很少使用的物品
- 会过时的流行物品

**例子:**
20美元的鞋(穿6个月)= 40美元/年
80美元的鞋(穿3年)= 27美元/年

贵的鞋实际上更便宜!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Long-term Cost',
  '长期成本',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 总拥有成本

不要只看价格标签！

**考虑因素：**
- 维护成本
- 维修成本
- 能源/燃料成本
- 使用寿命
- 转售价值

**例子：两辆汽车**

**汽车A：$15,000**
- 耗油量大：$3,000/年
- 频繁维修：$1,500/年
- 5年 = $15,000 + $22,500 = $37,500

**汽车B：$22,000**
- 燃油效率高：$1,500/年
- 可靠，很少维修：$500/年
- 5年 = $22,000 + $10,000 = $32,000

更便宜的汽车实际上多花了$5,500！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Brand vs Generic',
  '品牌产品与普通产品',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 品牌名称何时重要

**普通品牌/商店品牌通常适用于：**
- 基础食品（面粉、糖、大米）
- 非处方药（成分相同）
- 清洁用品
- 学习用品
- 基础服装

**品牌可能值得购买：**
- 电子产品（更好的售后支持）
- 专业工具
- 有安全顾虑的物品
- 日常使用的物品

**如何决定：**
1. 检查成分/材料
2. 阅读评价
3. 先尝试普通品牌
4. 如果普通品牌好用，就继续用！

通常，普通品牌和名牌是在同一家工厂生产的！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What does "value" mean in shopping?',
  '购物中的"价值"是什么意思?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'The cheapest price',
  '最便宜的价格',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Quality divided by price',
  '质量除以价格',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'The most expensive item',
  '最贵的商品',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Brand name',
  '品牌名称',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Value is the balance between quality and price - best quality for the price paid.',
  '价值是质量与价格之间的平衡——以所支付的价格获得最好的质量。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why might expensive shoes be a better value?',
  '为什么昂贵的鞋子可能更有价值？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They look better',
  '它们看起来更好看',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They last longer, costing less per year',
  '它们更耐用,平均每年的花费更少',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Expensive is always better',
  '贵的总是更好',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They''re trendy',
  '它们很时尚',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If expensive shoes last much longer, the cost per year of use is often lower.',
  '如果昂贵的鞋子使用寿命更长,每年的使用成本通常会更低。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is "total cost of ownership"?',
  '"总拥有成本"是什么？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Just the purchase price',
  '仅仅是购买价格',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'All costs including maintenance over time',
  '包括维护在内的所有长期成本',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'The price including tax',
  '含税价格',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What you can sell it for later',
  '之后你能以多少价格卖掉它',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Total cost includes purchase price plus all future costs like maintenance and fuel.',
  '总成本包括购买价格加上所有未来成本，如维护和燃料费用。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'When is generic/store brand usually fine?',
  '什么时候自有品牌/商店品牌通常是不错的选择?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Never',
  '从不',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Always',
  '总是',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'For basic items like flour or medicine',
  '对于面粉或药品等基本物品',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Only for food',
  '仅限食品',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Generic brands often have the same quality as name brands for basic items.',
  '对于基本商品，无品牌产品的质量往往与名牌产品相同。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Marketing Tactics',
  '营销策略',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 商店如何让你花更多钱

**常见伎俩:**

1. **锚定价格:** "~~$200~~ $99!" - 让$99看起来很便宜
2. **诱饵定价:** 小杯($3)、中杯($5)、大杯($5.50) - 每个人都选大杯
3. **稀缺性:** "仅剩3件!" - 制造虚假紧迫感
4. **免费配送门槛:** "满$50免运费" - 你为了省$5而花$50
5. **捆绑销售:** "买3件,省10%" - 你只需要1件

**如何抵制:**
- 购物前了解自己的预算
- 事先调查价格
- 情绪化时不要购物
- 仔细质疑"优惠"',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Subscription Traps',
  '订阅陷阱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 缓慢的金钱流失

**订阅风险：**

**并非真正免费的试用：**
- 需要信用卡
- 试用期后自动续订
- 难以取消
- 你会忘记它们

**每月订阅累积起来：**
- 流媒体：$15
- 音乐：$10
- 游戏：$15
- 软件：$20
- 健身房（未使用）：$40
- **总计：$100/月 = $1,200/年！**

**保护策略：**
- 为试用期结束设置日历提醒
- 每月审查订阅
- 使用会过期的虚拟卡
- 问问自己："这个月用过吗？用过就保留。没用过？取消它。"
- 免费试用后立即取消',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Hidden Fees',
  '隐藏费用',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 阅读细则条款

**注意以下事项：**

**度假村/酒店费用：**
- 客房：$100/晚
- "度假村费用"：$30/晚
- 停车费：$25/晚
- **实际费用：$155/晚！**

**门票费用：**
- 音乐会门票：$50
- "服务费"：$15
- "场地费"：$8
- **实际费用：$73**

**银行费用：**
- 透支费用
- ATM手续费
- 月度账户维护费
- 外币交易费

**如何避免：**
1. 购买前阅读所有条款
2. 提前询问总费用
3. 寻找"免费用"的替代选择
4. 承诺之前计算真实费用',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is "anchor pricing"?',
  '"锚定价格"是什么?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Selling boat anchors',
  '销售船锚',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Showing a high price crossed out to make sale price look better',
  '显示一个被划掉的高价格,使促销价格看起来更优惠',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Giving discounts to sailors',
  '给水手打折',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Setting the lowest price',
  '设定最低价格',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Anchor pricing shows a high "original" price to make the sale price seem like a great deal.',
  '锚定定价通过展示一个较高的"原价"，让促销价格看起来非常划算。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why are "free trials" sometimes a trap?',
  '为什么"免费试用"有时是个陷阱?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They''re actually free',
  '它们实际上是免费的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They auto-renew and charge your card',
  '它们会自动续费并扣除你的卡费',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They give you free stuff',
  '它们给你免费的东西',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They''re illegal',
  '它们是非法的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Free trials often auto-renew into paid subscriptions that charge your card.',
  '免费试用通常会自动续订为付费订阅，并从您的卡中扣款。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If you have 5 subscriptions at $15 each, how much per year?',
  '如果你有5个订阅服务，每个15美元，一年总共多少钱？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$75',
  '$75',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$180',
  '$180',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$900',
  '$900',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$750',
  '$750',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '5 × $15 = $75/month × 12 months = $900/year.',
  '5 × $15 = $75/月 × 12个月 = $900/年。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What are "hidden fees"?',
  '什么是"隐藏费用"?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Illegal charges',
  '非法收费',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Additional costs not shown in advertised price',
  '广告价格中未显示的额外费用',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Fees for hiding things',
  '藏东西的费用',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Discounts',
  '折扣',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Hidden fees are extra costs added on top of the advertised price.',
  '隐藏费用是在广告价格之外额外增加的成本。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Best way to avoid subscription traps:',
  '避免订阅陷阱的最佳方法:',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Never subscribe to anything',
  '永远不要订阅任何东西',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Review and cancel unused subscriptions regularly',
  '定期检查并取消未使用的订阅服务',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Subscribe to everything',
  '订阅所有服务',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Ignore your bank statements',
  '忽略您的银行对账单',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Regularly reviewing subscriptions helps you cancel ones you don''t use.',
  '定期检查订阅服务可以帮助你取消不使用的订阅。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Emergency Fund',
  '应急基金',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 为意外情况做准备

**应急基金** = 为意外问题储蓄的钱

**为什么需要它：**
- 汽车抛锚：500美元维修费
- 医疗急诊：1,000美元账单
- 失业：需要3-6个月的开支
- 房屋维修：热水器坏了

**没有应急基金：**
- 陷入债务（信用卡、贷款）
- 无法支付账单
- 压力和担忧

**有应急基金：**
- 冷静处理问题
- 不需要负债
- 内心平静

**目标：** 3-6个月的生活开支',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Future Goals',
  '未来目标',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 为你想要的东西储蓄

**短期目标（< 1年）：**
- 新手机
- 生日派对
- 学校旅行
- 节日礼物

**中期目标（1-5年）：**
- 汽车
- 大学
- 婚礼
- 房屋首付

**长期目标（5年以上）：**
- 退休
- 子女教育
- 梦想假期
- 创业

储蓄让你无需负债就能实现梦想！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Financial Security',
  '财务安全',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 内心的平静

**财务安全意味着：**
- 不再月光族
- 能够应对紧急情况
- 不为金钱感到压力
- 有自由做出选择
- 能够帮助他人

**储蓄的好处：**
1. **自由** - 可以拒绝不好的工作
2. **机会** - 能够为梦想冒险
3. **减少压力** - 晚上睡得更安稳
4. **独立** - 不依赖他人
5. **未来的你** - 会感谢现在的你！

"不要把花剩下的钱拿来储蓄；要把储蓄后剩下的钱拿来花。" —— 沃伦·巴菲特',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is an emergency fund?',
  '什么是应急基金?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money for vacations',
  '度假的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money saved for unexpected problems',
  '为意外情况储备的资金',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money for shopping',
  '用于购物的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money you never touch',
  '永远不动用的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'An emergency fund is savings set aside for unexpected expenses or emergencies.',
  '应急基金是为意外支出或紧急情况而预留的储蓄。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How many months of expenses should an emergency fund cover?',
  '应急基金应该覆盖多少个月的开支？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '1 week',
  '1周',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '1 month',
  '1个月',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '3-6 months',
  '3-6个月',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '10 years',
  '10年',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Financial experts recommend 3-6 months of living expenses for emergencies.',
  '理财专家建议为紧急情况储备3-6个月的生活费用。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which is a short-term savings goal?',
  '以下哪项是短期储蓄目标?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Retirement',
  '退休',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'College in 10 years',
  '10年后的大学学费',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'New video game in 3 months',
  '3个月内购买新电子游戏',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Buying a house',
  '买房',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Short-term goals are things you want to buy within a year.',
  '短期目标是指你想在一年内购买的东西。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What does Warren Buffett say about saving?',
  '沃伦·巴菲特对储蓄有什么看法?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Spend first, save what''s left',
  '先花钱,剩下的再存',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Save first, spend what''s left',
  '先储蓄,再花剩下的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Never save anything',
  '什么都不要存',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Save everything',
  '把所有钱都存起来',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Buffett advises to save first (pay yourself first), then spend what remains.',
  '巴菲特建议先储蓄(先支付自己),然后再花剩下的钱。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'SMART Goals',
  'SMART目标',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 设定有效的目标

**SMART = 具体、可衡量、可实现、相关、有时限**

❌ 不好的目标："存更多钱"
✅ SMART目标："在12月31日前存1,200美元买一台新笔记本电脑"

**详细分解：**
- **具体：**新笔记本电脑
- **可衡量：**1,200美元
- **可实现：**每月100美元，持续12个月
- **相关：**学习/工作需要
- **有时限：**12月31日前

**如何制定SMART目标：**
1. 明确决定你想要什么
2. 调查所需费用
3. 设定截止日期
4. 计算每月需要存的金额
5. 确保目标符合你的收入实际情况',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Short-term vs Long-term',
  '短期目标与长期目标',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 不同目标,不同策略

**短期目标(< 1年):**
- 存入储蓄账户
- 易于存取
- 低风险
- 例如:新自行车、音乐会门票

**中期目标(1-5年):**
- 高收益储蓄或定期存款
- 有一定增长,仍可存取
- 低至中等风险
- 例如:汽车、大学学费、婚礼

**长期目标(5年以上):**
- 可投资股票/债券
- 更高增长潜力
- 中高风险(有时间弥补损失)
- 例如:退休、房子

根据你的时间规划来匹配储蓄策略!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Tracking Progress',
  '追踪进度',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 保持动力

**追踪方法：**

1. **视觉追踪器：**
   - 储蓄温度计
   - 涂色图表（每10美元涂一格）
   - 将目标物品照片设为手机壁纸

2. **应用程序和电子表格：**
   - Mint、YNAB、Personal Capital
   - 简单的Excel/Google表格
   - 银行应用程序的储蓄目标功能

3. **实物方法：**
   - 为每个目标准备单独的罐子/信封
   - 将钱转到单独的账户
   - 每周与监督伙伴进行检查

**庆祝里程碑：**
- 存够25%：小小的奖励
- 存够50%：告诉朋友
- 存够75%：计划如何使用
- 存够100%：成就解锁！🎉',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What does SMART goals stand for?',
  'SMART目标代表什么？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Simple, Money, Achievable, Real, Timely',
  '简单、金钱、可实现、真实、及时',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Specific, Measurable, Achievable, Relevant, Time-bound',
  '具体的、可衡量的、可实现的、相关的、有时限的',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Save, Make, Acquire, Reach, Total',
  '储蓄、赚取、获得、达成、总计',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Spend, Manage, Allocate, Record, Track',
  '花费、管理、分配、记录、追踪',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'SMART is an acronym for Specific, Measurable, Achievable, Relevant, Time-bound.',
  'SMART是一个首字母缩略词,代表具体的(Specific)、可衡量的(Measurable)、可实现的(Achievable)、相关的(Relevant)、有时限的(Time-bound)。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'For a goal 8 years away, where should you keep the money?',
  '对于8年后的目标,你应该把钱存放在哪里?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Under your mattress',
  '藏在床垫下',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'In your wallet',
  '在你的钱包里',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Can invest in stocks for growth',
  '可以投资股票以获得增长',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'In a piggy bank',
  '在储蓄罐里',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Long-term goals (5+ years) can be invested for higher growth potential.',
  '长期目标（5年以上）可以进行投资以获得更高的增长潜力。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If you want to save $600 in 6 months, how much per month?',
  '如果你想在6个月内存600美元,每月需要存多少?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$50',
  '$50',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$100',
  '$100',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$150',
  '$150',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$200',
  '$200',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$600 ÷ 6 months = $100 per month.',
  '$600 ÷ 6个月 = 每月$100。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why is tracking progress important?',
  '为什么跟踪进度很重要?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'It''s not important',
  '这不重要',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Helps you stay motivated and on track',
  '帮助你保持动力并坚持目标',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Required by law',
  '法律要求',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Banks force you to',
  '银行强迫你',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Tracking progress keeps you motivated and helps ensure you reach your goal.',
  '跟踪进度可以保持动力，并有助于确保你实现目标。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Savings Accounts',
  '储蓄账户',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 银行基本储蓄账户

**储蓄账户特点:**
- 赚取利息(通常为0.01%至0.50%)
- 联邦存款保险公司(FDIC)承保(最高25万美元)
- 资金容易取用
- 最低余额要求低或无要求
- 可能有取款限制

**何时使用:**
- 应急基金
- 短期目标
- 您可能很快需要的资金

**提示:** 某些账户在余额过低时会收取费用。选择免费账户!',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Interest Rates',
  '利率',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 你的钱如何增长

**利息** = 银行因为你把钱存在那里而付给你的钱

**例子:**
- 存入$1,000
- 利率:每年5%
- 1年后:$1,050
- 2年后:$1,102.50(复利!)

**复利** = 用你的利息赚取利息

**哪里可以找到更高的利息:**
- 网上银行(1%到5%+)
- 高收益储蓄账户
- 定期存单(CDs)
- 货币市场账户

**比较利率** - 小差异 = 长期来看有大不同!

按1%计算:$1,000 → 10年后$1,104
按5%计算:$1,000 → 10年后$1,629',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Bank vs Credit Union',
  '银行 vs 信用合作社',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 在哪里开户

**银行：**
- 营利性公司
- 更多网点和ATM机
- 更好的技术/应用程序
- 利率通常较低
- 例如：Chase、美国银行

**信用合作社：**
- 非营利性、会员所有
- 利率较高
- 费用较低
- 网点较少
- 可能需要会员资格
- 例如：Navy Federal、本地信用合作社

**两者都安全** - FDIC（银行）或NCUA（信用合作社）承保

**如何选择：**
- 需要网点/ATM机？→ 银行
- 想要更好的利率？→ 信用合作社
- 可以使用网上银行？→ 在线银行（最佳利率）',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is FDIC insurance?',
  'FDIC保险是什么?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Car insurance',
  '汽车保险',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Protection for bank deposits up to $250,000',
  '为银行存款提供高达 $250,000 的保护',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Health insurance',
  '健康保险',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A type of savings account',
  '一种储蓄账户类型',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'FDIC insurance protects your bank deposits up to $250,000 if the bank fails.',
  'FDIC保险在银行倒闭时为您的银行存款提供最高25万美元的保护。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is compound interest?',
  '什么是复利?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Flat interest rate',
  '固定利率',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Interest earned on both principal and previous interest',
  '本金和之前利息共同产生的利息',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Interest you pay on loans',
  '您为贷款支付的利息',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'No interest',
  '没有利息',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Compound interest means you earn interest on your interest, accelerating growth.',
  '复利意味着你的利息也能产生利息,从而加速增长。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Where typically find the highest interest rates?',
  '在哪里通常能找到最高的利率?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Traditional bank branches',
  '传统银行网点',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Under your mattress',
  '在你的床垫下',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Online banks and credit unions',
  '网上银行和信用合作社',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Piggy banks',
  '储蓄罐',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Online banks and credit unions often offer higher interest rates than traditional banks.',
  '网上银行和信用合作社通常比传统银行提供更高的利率。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If you save $100 at 4% interest for 1 year, how much will you have?',
  '如果你以4%的利率存$100一年,你将拥有多少钱?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$100',
  '$100',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$104',
  '$104',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$400',
  '$400',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$140',
  '$140',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$100 + ($100 × 0.04) = $104.',
  '$100 + ($100 × 0.04) = $104.',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Pay Yourself First',
  '# 先支付给自己',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 储蓄的黄金法则

**"先支付自己"** = 在花费其他任何东西之前先储蓄

**运作方式：**

❌ 旧方式：
1. 收到工资
2. 支付账单
3. 购买物品
4. 储蓄剩余的钱（通常是0元）

✅ 新方式：
1. 收到工资
2. **立即储蓄10-20%**
3. 支付账单
4. 用剩余的钱购买物品

**为什么有效：**
- 将储蓄视为账单（不可协商）
- 你会根据剩余的钱调整支出
- 储蓄真正得以实现

"不要储蓄花费后剩下的钱；花费储蓄后剩下的钱。"',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Automatic Transfers',
  '自动转账',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 设置后就不用管了

**自动储蓄** = 无需您做任何操作，钱就会自动转入储蓄账户

**如何设置：**

1. **工资分配：**
   - 要求雇主将一定百分比存入储蓄账户
   - 其余部分存入支票账户
   - 每次发工资时自动进行

2. **银行自动转账：**
   - 设置定期转账
   - 每个发薪日，$X 金额转入储蓄账户
   - 可随时调整或暂停

3. **按计划储蓄：**
   - 每周：心理上更容易接受
   - 每两周：与发薪时间表匹配
   - 每月：简单，金额较大

**好处：**
- 无需意志力
- 不会忘记
- 持续进步
- "眼不见，心不烦"',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Round-up Apps',
  '余额自动进位应用',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 无痛微额储蓄

**凑整储蓄应用** = 将消费金额凑整到最接近的整数美元，储蓄差额

**运作方式：**

你购买咖啡：$4.50
应用凑整到：$5.00
储蓄差额：$0.50

10次消费 × 平均$0.50 = $5/天 = $150/月！

**热门应用：**
- Acorns
- Digit
- Qapital
- Chime（具有此功能）
- 许多银行都提供此功能

**其他微额储蓄技巧：**
- 储蓄所有收到的$5纸币
- 每天结束时储蓄所有硬币
- 立即储蓄退税
- 在消费前储蓄奖金/礼金
- 储蓄加薪（工资增加时提高自动转账金额）

**关键：** 从小额开始！$1/天 = $365/年',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What does "pay yourself first" mean?',
  '"优先支付自己"是什么意思?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Buy things for yourself',
  '为自己购买东西',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Save money before paying bills',
  '在支付账单之前先储蓄',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Give yourself a paycheck',
  '给自己发工资',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Save money before spending on other things',
  '在花钱购买其他东西之前先存钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Pay yourself first means saving a portion of income before spending on anything else.',
  '先付自己意味着在花费任何其他东西之前，先储蓄一部分收入。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'What is automatic savings?',
  '什么是自动储蓄?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Money that appears magically',
  '神奇出现的钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Automatic transfers from checking to savings',
  '从支票账户自动转账到储蓄账户',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Savings that grow automatically',
  '自动增长的储蓄',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A type of bank account',
  '一种银行账户类型',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Automatic savings is when money automatically transfers from checking to savings.',
  '自动储蓄是指资金从支票账户自动转账到储蓄账户。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How do round-up apps work?',
  '储蓄整数应用程序如何运作?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Round down your balance',
  '向下舍入您的余额',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Round purchases up and save the difference',
  '将消费金额向上取整并储蓄差额',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Give you money',
  '给你钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Round your interest',
  '四舍五入你的利息',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Round-up apps round each purchase up to the nearest dollar and save the difference.',
  '余额宝类应用会将每笔消费向上取整到最接近的整数金额,并将差额存起来。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If a round-up app saves $0.50 per transaction and you make 200 transactions/month, how much saved?',
  '如果一个凑整储蓄应用每笔交易储蓄 $0.50，而你每月进行 200 笔交易，能储蓄多少钱？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$50',
  '$50',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$100',
  '$100',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$150',
  '$150',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$200',
  '$200',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '200 transactions × $0.50 = $100 saved per month.',
  '200笔交易 × $0.50 = 每月节省$100。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How Much to Save',
  '# 应该存多少钱',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 你的应急基金目标

**标准建议：3-6个月的开支**

**计算你的数字：**

1. 列出每月开支：
   - 房租/房贷：$1,000
   - 水电费：$150
   - 食物：$400
   - 交通：$200
   - 保险：$150
   - 其他必需品：$100
   - **总计：$2,000/月**

2. 乘以3-6：
   - 最低：$6,000
   - 理想：$12,000

**需要考虑的因素：**
- 工作稳定性（不稳定 = 6个月以上）
- 收入来源（单一收入 = 需要更多）
- 健康状况（有医疗问题 = 需要更多）
- 受抚养人（有孩子 = 需要更多）',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'When to Use It',
  '# 何时使用应急基金',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 仅限真正的紧急情况

**应急基金用于：**

✅ **真正的紧急情况：**
- 失业
- 医疗紧急情况
- 必要的房屋维修（热水器、暖气炉）
- 必要的汽车维修（无法上班）
- 家庭紧急情况

❌ **不是紧急情况：**
- 电视促销
- 度假
- 新衣服
- 外出就餐
- 非必要的升级
- "我真的很想要"

**经验法则：**
问自己："如果我不花这笔钱，会发生不好的事情吗？"
- 是 = 紧急情况
- 否 = 不是紧急情况

单独设立"娱乐资金"有助于避免动用应急基金！',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Rebuilding After Use',
  '# 使用后重建',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
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
  '# 重回正轨

**如果你动用了应急基金:**

**1. 不要感到内疚!**
- 这就是它的用途
- 你提前规划做得很对
- 为自己有这笔钱感到自豪

**2. 暂时停止其他储蓄:**
- 优先重建应急基金
- 其他目标可以等待
- 应急基金 = 第一优先级

**3. 尽可能快速地重建:**
- 立即开始(即使20美元也有帮助)
- 使用任何意外收入(退税、奖金)
- 暂时削减可自由支配的开支
- 考虑副业收入

**4. 回顾发生的情况:**
- 是否可以预防?
- 需要更多保险吗?
- 需要更大的应急基金吗?
- 相应调整计划

**重建计划示例:**
- 已使用:2,000美元
- 收入:每月3,000美元
- 可储蓄:每月500美元
- 重建时间:4个月',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'How many months of expenses should an emergency fund cover?',
  '应急基金应该覆盖多少个月的开支？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '1 week',
  '1周',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '1 month',
  '1个月',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '3-6 months',
  '3-6个月',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '10 years',
  '10年',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Financial experts recommend 3-6 months of living expenses.',
  '理财专家建议储备3-6个月的生活开支。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Which is a TRUE emergency for using your emergency fund?',
  '以下哪项是使用应急基金的**真正**紧急情况?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'TV is on sale',
  '电视机正在打折',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Want to go on vacation',
  '想去度假',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Car breaks down and you can''t get to work',
  '汽车抛锚导致无法上班',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'New video game release',
  '新发布的电子游戏',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'A car needed for work is a true emergency. Other examples are wants.',
  '工作所需的汽车是真正的紧急情况。其他例子是想要的东西。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'If your monthly expenses are $2,500, what''s a minimum emergency fund?',
  '如果你的月支出是 $2,500，最低应急基金是多少？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$2,500',
  '$2,500',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$5,000',
  '$5,000',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$7,500',
  '$7,500',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '$25,000',
  '$25,000',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  '3 months × $2,500 = $7,500 minimum.',
  '3个月 × $2,500 = 最少$7,500。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'After using emergency fund, what should you do?',
  '在使用应急基金后,你应该做什么?',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Forget about it',
  '忘掉这件事',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Immediately rebuild it',
  '立即重建它',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Wait a year to rebuild',
  '等待一年再重建',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Use it for other things',
  '用于其他事情',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Rebuild your emergency fund as soon as possible after using it.',
  '在使用应急基金后,应尽快重建您的应急基金。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Why might someone need 6+ months of expenses saved?',
  '为什么有人可能需要储蓄6个月以上的开支？',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'They like big numbers',
  '他们喜欢大数字',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Unstable job or single income household',
  '工作不稳定或单一收入家庭',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Banks require it',
  '银行要求这样做',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Everyone needs exactly 6 months',
  '每个人都需要正好6个月的储蓄',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
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
  'zh',
  'Less stable situations warrant larger emergency funds for more protection.',
  '不太稳定的情况需要更大的应急基金以获得更多保障。',
  '2026-01-06T02:00:40.343Z',
  '2027-01-06T02:00:40.343Z'
);

-- ========================================
-- VERIFICATION
-- ========================================
SELECT 'Translation completed for zh!' as message;
SELECT COUNT(*) as total_translations
FROM "ContentTranslation"
WHERE target_language = 'zh';
