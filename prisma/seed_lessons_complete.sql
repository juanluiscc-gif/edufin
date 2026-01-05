-- ============================================================
-- SEED COMPLETO DE LECCIONES PARA NEON
-- Ejecuta este script directamente en la consola SQL de Neon
-- Incluye 18 lecciones completas con todo el contenido
-- ============================================================

-- Paso 1: Limpia las lecciones existentes
DELETE FROM "UserLessonProgress";
DELETE FROM "Lesson";

-- ============================================================
-- CATEGORÍA 1: MONEY BASICS (5 lecciones)
-- ============================================================

-- Lección 1: What is Money?
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'What is Money?',
  'Learn about the concept of money and why we use it',
  1,
  'both',
  1,
  10,
  '{"sections":[{"title":"Introduction","content":"# What is Money?\n\nMoney is what we use to buy things we need and want. It''s a tool that makes trading easier!\n\n**For Kids:** Money is like tickets at an arcade - you exchange them for prizes!\n\n**For Adults:** Money serves as a medium of exchange, eliminating the inefficiencies of barter systems.","order":1},{"title":"History of Money","content":"# How Money Started\n\nLong ago, people traded items directly - like trading 5 apples for 1 chicken. This was called **bartering**.\n\nBut bartering had problems:\n- What if you had apples but the other person didn''t want them?\n- How many apples equal one chicken?\n\nSo humans invented money to solve these problems!","order":2},{"title":"Why We Use Money","content":"# Why Money is Useful\n\nMoney makes life easier because:\n\n1. **Store of Value** - You can save it for later\n2. **Unit of Account** - Everything has a clear price\n3. **Medium of Exchange** - Everyone accepts it\n\nInstead of carrying around chickens and apples, you carry money!","order":3},{"title":"Modern Money","content":"# Money Today\n\nToday, money comes in many forms:\n- **Physical:** Coins and bills you can touch\n- **Digital:** Money in bank accounts and apps\n- **Cryptocurrency:** New digital money on the internet\n\nMost people use a mix of all three types!","order":4}],"quiz":{"questions":[{"question":"What is the main purpose of money?","options":["To make trading easier","To be pretty","To collect","To burn"],"correctAnswer":0,"explanation":"Money was invented to make trading goods and services easier than bartering."},{"question":"What was the old way of trading before money?","options":["Selling","Bartering","Giving away","Stealing"],"correctAnswer":1,"explanation":"Bartering means trading items directly, like 5 apples for 1 chicken."},{"question":"Which is NOT a form of modern money?","options":["Digital money","Coins","Rocks","Cryptocurrency"],"correctAnswer":2,"explanation":"While some ancient cultures used special rocks as money, regular rocks are not modern currency."},{"question":"Money helps us \"store value\" means:","options":["We can save it for later","We must spend it now","It loses value quickly","It takes up space"],"correctAnswer":0,"explanation":"Storing value means money keeps its worth over time so you can save it."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 2: Different Types of Currency
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Different Types of Currency',
  'Explore coins, bills, digital money, and cryptocurrency',
  1,
  'both',
  2,
  8,
  '{"sections":[{"title":"Coins and Bills","content":"# Physical Money\n\n**Coins** are made of metal and usually worth less. They''re good for small purchases like candy or parking meters.\n\n**Bills (Banknotes)** are made of paper or plastic and worth more. They''re lighter and easier to carry than lots of coins.\n\n💡 Fun fact: The ink and paper for bills cost less than 10 cents, but the bill might be worth $100!","order":1},{"title":"Digital Money","content":"# Money You Can''t Touch\n\nMost money today is **digital** - it exists as numbers in a computer!\n\nExamples:\n- Money in your bank account\n- Payment apps like PayPal, Venmo\n- Credit card payments\n- Mobile wallets like Apple Pay\n\nYou never touch this money, but you can still spend it!","order":2},{"title":"Cryptocurrency Basics","content":"# A New Kind of Money\n\n**Cryptocurrency** is digital money that uses computer code to secure transactions.\n\nMost famous examples:\n- Bitcoin (BTC)\n- Ethereum (ETH)\n\n**Key differences:**\n- No government controls it\n- Works across all countries\n- Very secure but can be risky\n- Prices change a lot!\n\n⚠️ For beginners, stick to regular money until you learn more!","order":3}],"quiz":{"questions":[{"question":"What are coins usually made of?","options":["Paper","Metal","Plastic","Wood"],"correctAnswer":1,"explanation":"Coins are made of metal, which makes them durable and hard to counterfeit."},{"question":"Which is an example of digital money?","options":["A $10 bill","A quarter","Your bank account balance","Gold bars"],"correctAnswer":2,"explanation":"Bank account balances are digital money - they exist as electronic records."},{"question":"What is true about cryptocurrency?","options":["It is controlled by governments","It never changes in value","It uses computer code for security","You can hold it in your hand"],"correctAnswer":2,"explanation":"Cryptocurrency uses advanced computer code (cryptography) to secure transactions."},{"question":"Why is digital money convenient?","options":["You can carry large amounts easily","It weighs a lot","It can get wet","You must count it manually"],"correctAnswer":0,"explanation":"Digital money is convenient because you can have millions in your account without physical storage."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 3: How Money Gets Its Value
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'How Money Gets Its Value',
  'Understand why money is worth something',
  2,
  'both',
  3,
  10,
  '{"sections":[{"title":"Supply and Demand","content":"# What Makes Money Valuable?\n\nMoney has value because of **supply and demand**:\n\n**Supply** = How much money exists\n**Demand** = How many people want it\n\nIf everyone wants dollars and there aren''t many, dollars are valuable.\nIf there are too many dollars, each one is worth less.\n\nThink of it like rare trading cards - rare cards are more valuable!","order":1},{"title":"Government Role","content":"# Who Controls Money?\n\nGovernments and central banks control how much money exists:\n\n- **Print too much** = Money becomes less valuable (inflation)\n- **Print too little** = Hard to do business (deflation)\n\nThey try to keep the amount \"just right\" so the economy stays healthy.\n\nThis is why you can''t just print money at home - it would make money worthless!","order":2},{"title":"Trust in Money","content":"# Why We Trust Money\n\nMoney only works if people trust it!\n\nWe trust money because:\n1. The government says it''s legal\n2. Stores accept it\n3. We can pay taxes with it\n4. It has security features (hard to fake)\n\nIf people stopped trusting it, money would become just paper or numbers.","order":3}],"quiz":{"questions":[{"question":"What happens if a government prints too much money?","options":["Everyone becomes rich","Money becomes less valuable","Money becomes more valuable","Nothing changes"],"correctAnswer":1,"explanation":"Printing too much money causes inflation - each dollar is worth less."},{"question":"Supply and demand means:","options":["How much exists and how many want it","Where to buy things","How to save money","Types of currency"],"correctAnswer":0,"explanation":"Supply is how much exists, demand is how many people want it."},{"question":"Why can''t you just print your own money?","options":["It would make all money worthless","Printers are expensive","Paper is hard to find","You can, it''s allowed"],"correctAnswer":0,"explanation":"If everyone could print money, there would be too much supply and it would lose value."},{"question":"Money has value primarily because:","options":["It''s pretty","People trust and accept it","It''s made of precious materials","It''s rare"],"correctAnswer":1,"explanation":"Money''s value comes from collective trust and acceptance in society."},{"question":"What role do governments play with money?","options":["They determine fashion trends","They control the supply","They force you to spend","Nothing at all"],"correctAnswer":1,"explanation":"Governments and central banks control how much money is in circulation."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 4: Money Around the World
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Money Around the World',
  'Learn about different currencies and exchange rates',
  2,
  'both',
  4,
  12,
  '{"sections":[{"title":"Major Currencies","content":"# World Money\n\nDifferent countries use different money!\n\n**Major World Currencies:**\n- 🇺🇸 US Dollar (USD) - Most widely used\n- 🇪🇺 Euro (EUR) - Used in many European countries\n- 🇬🇧 British Pound (GBP) - Used in United Kingdom\n- 🇯🇵 Japanese Yen (JPY) - Used in Japan\n- 🇨🇳 Chinese Yuan (CNY) - Used in China\n\nEach has its own symbol and value!","order":1},{"title":"Exchange Rates","content":"# Trading Money Between Countries\n\n**Exchange rates** tell you how much one currency is worth in another.\n\nExample:\n1 USD = 0.85 EUR\n\nThis means one US dollar can be traded for 0.85 euros.\n\n**Exchange rates change daily** based on:\n- How strong each economy is\n- Interest rates\n- Political stability\n- Supply and demand","order":2},{"title":"International Trade","content":"# Why Exchange Rates Matter\n\nWhen countries trade with each other, they need to exchange currencies:\n\n- A US company buying products from Japan needs Yen\n- A European tourist in America needs Dollars\n- Online shopping from other countries requires conversion\n\n**Strong currency** = Your money buys more in other countries\n**Weak currency** = Your money buys less abroad\n\nThis affects travel, shopping, and business!","order":3}],"quiz":{"questions":[{"question":"What is the currency used in most European countries?","options":["Dollar","Euro","Pound","Peso"],"correctAnswer":1,"explanation":"The Euro (EUR) is used by 20 European Union countries."},{"question":"What does an exchange rate tell you?","options":["How fast money grows","Where to shop","How much one currency is worth in another","How to save money"],"correctAnswer":2,"explanation":"Exchange rates show the value of one currency compared to another."},{"question":"If 1 USD = 100 JPY, how many yen is $5?","options":["50 yen","100 yen","500 yen","5 yen"],"correctAnswer":2,"explanation":"5 dollars × 100 yen per dollar = 500 yen."},{"question":"When would you need to exchange currency?","options":["Traveling to another country","Shopping at local stores","Paying bills at home","Saving money"],"correctAnswer":0,"explanation":"You need to exchange currency when traveling abroad or buying from international sellers."},{"question":"What makes a currency \"strong\"?","options":["It''s made of strong materials","It buys more in other countries","It''s heavy","It''s colorful"],"correctAnswer":1,"explanation":"A strong currency has high purchasing power in international markets."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 5: Inflation and Purchasing Power
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Inflation and Purchasing Power',
  'Understand how inflation affects your money',
  3,
  'both',
  5,
  15,
  '{"sections":[{"title":"What is Inflation","content":"# When Things Get More Expensive\n\n**Inflation** means prices go up over time.\n\nExample:\n- 1990: A candy bar cost $0.50\n- 2025: The same candy costs $1.50\n\nYour money buys less than it used to!\n\n**Why it happens:**\n- More money in circulation\n- Higher demand for products\n- Increased production costs\n\nSome inflation (2-3% per year) is normal and healthy.","order":1},{"title":"How Inflation Affects You","content":"# Your Money Loses Value\n\n**Purchasing power** = What you can buy with your money\n\nWith inflation:\n- $100 today buys more than $100 next year\n- Savings lose value if just sitting in a jar\n- Salaries need to increase to keep up\n\n**Example:**\nIf inflation is 3% per year:\n- $100 today = $97 of purchasing power next year\n- $100 today = $94 of purchasing power in 2 years\n\nThat''s why grandparents say \"things were cheaper in my day\" - they were!","order":2},{"title":"Protecting Against Inflation","content":"# How to Fight Inflation\n\nDon''t let inflation eat your money! Here''s how:\n\n**1. Put money in savings accounts with interest**\n- Interest helps money grow\n- Offsets some inflation\n\n**2. Invest in stocks, bonds, or real estate**\n- These often grow faster than inflation\n- Riskier but protects purchasing power\n\n**3. Increase your income**\n- Ask for raises\n- Learn new skills\n- Start a side business\n\n**4. Budget wisely**\n- Track where money goes\n- Find better deals\n- Reduce unnecessary spending\n\nRemember: Cash under your mattress loses value every year!","order":3}],"quiz":{"questions":[{"question":"What is inflation?","options":["When prices go down","When prices go up over time","When money is printed","When people save money"],"correctAnswer":1,"explanation":"Inflation is the general increase in prices over time."},{"question":"If inflation is 5% and you have $100 in cash for a year, what happens?","options":["You can buy 5% more","You can buy the same amount","You can buy 5% less","Your money disappears"],"correctAnswer":2,"explanation":"With 5% inflation, your $100 loses 5% of purchasing power."},{"question":"Why do prices tend to increase over time?","options":["Stores want more profit only","Due to inflation and increased costs","Because money becomes stronger","It''s random"],"correctAnswer":1,"explanation":"Prices increase due to inflation, which comes from various economic factors."},{"question":"What is a good way to protect against inflation?","options":["Hide cash under your mattress","Spend all your money immediately","Invest in assets that grow","Do nothing"],"correctAnswer":2,"explanation":"Investing in growing assets helps maintain or increase purchasing power."},{"question":"What is \"purchasing power\"?","options":["How strong you are","What you can buy with your money","Your job title","How much money you earn"],"correctAnswer":1,"explanation":"Purchasing power is what your money can actually buy."},{"question":"Is some inflation considered normal?","options":["No, inflation is always bad","Yes, 2-3% annual inflation is normal","Only in poor countries","Inflation never happens"],"correctAnswer":1,"explanation":"Moderate inflation of 2-3% per year is normal and indicates economic growth."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- ============================================================
-- CATEGORÍA 2: EARNING MONEY (4 lecciones)
-- ============================================================

-- Lección 6: Ways to Earn Money
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Ways to Earn Money',
  'Explore different methods of earning income',
  1,
  'both',
  6,
  7,
  '{"sections":[{"title":"Jobs and Careers","content":"# Working for Money\n\n**Active income** = Money you earn by working\n\nTypes of jobs:\n- **Employee:** Work for a company (steady paycheck)\n- **Freelancer:** Work for yourself (multiple clients)\n- **Contractor:** Work on specific projects\n\n**For kids:** Chores, lawn mowing, pet sitting\n**For adults:** Full-time jobs, part-time work, consulting","order":1},{"title":"Self-Employment","content":"# Being Your Own Boss\n\n**Self-employment** means working for yourself!\n\nExamples:\n- Start a small business\n- Offer services (tutoring, cleaning, design)\n- Sell products online\n- Create content (YouTube, blog)\n\n**Pros:** Flexibility, unlimited earning potential\n**Cons:** No steady paycheck, more responsibility","order":2},{"title":"Passive Income","content":"# Money While You Sleep\n\n**Passive income** = Earning money without active work\n\nExamples:\n- Rental properties (rent from tenants)\n- Investments (dividends from stocks)\n- Royalties (from books, music, patents)\n- Online courses (sell once, earn forever)\n\nNote: Usually requires upfront work or money to start!","order":3}],"quiz":{"questions":[{"question":"What is active income?","options":["Money earned by working","Money earned while sleeping","Money from investments","Money found on the street"],"correctAnswer":0,"explanation":"Active income is money earned through active work and effort."},{"question":"Which is an example of passive income?","options":["Your salary from a job","Payment for mowing a lawn","Rent from a property you own","Allowance from parents"],"correctAnswer":2,"explanation":"Rental income is passive - you earn it without active daily work."},{"question":"What does self-employment mean?","options":["Working for a big company","Working for yourself","Being unemployed","Working part-time"],"correctAnswer":1,"explanation":"Self-employment means you are your own boss and work for yourself."},{"question":"Which is true about passive income?","options":["It requires no effort ever","Anyone can start immediately with no money","It often requires upfront work or investment","It always earns more than active income"],"correctAnswer":2,"explanation":"Passive income streams usually require initial work or capital to establish."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 7: Understanding Income
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Understanding Income',
  'Learn about gross income, net income, and deductions',
  1,
  'both',
  7,
  8,
  '{"sections":[{"title":"Gross vs Net Income","content":"# How Much Do You Really Earn?\n\n**Gross Income** = Total money before anything is taken out\n**Net Income** = Money you actually take home (after taxes and deductions)\n\nExample:\n- Gross: $1,000\n- Taxes: -$200\n- Health insurance: -$50\n- Retirement: -$50\n- **Net (take-home): $700**\n\nAlways focus on net income when budgeting!","order":1},{"title":"Salary vs Hourly","content":"# Two Ways to Get Paid\n\n**Salary:**\n- Fixed amount per year\n- Example: $50,000/year\n- Same paycheck every month\n- Often includes benefits\n\n**Hourly:**\n- Paid per hour worked\n- Example: $15/hour\n- Paycheck varies based on hours\n- May get overtime pay (1.5x or 2x rate)\n\nNeither is \"better\" - it depends on the job!","order":2},{"title":"Benefits and Bonuses","content":"# More Than Just Money\n\n**Benefits** = Extra compensation beyond salary\n\nCommon benefits:\n- Health insurance\n- Retirement contributions (401k matching)\n- Paid vacation days\n- Sick leave\n- Professional development\n\n**Bonuses:**\n- Extra payments for good performance\n- Holiday bonuses\n- Commission (sales-based earnings)\n- Profit sharing\n\nBenefits can be worth 20-30% of your salary!","order":3}],"quiz":{"questions":[{"question":"What is net income?","options":["Total income before deductions","Money you take home after deductions","Money from the internet","Bonus payments"],"correctAnswer":1,"explanation":"Net income is what you actually receive after taxes and deductions."},{"question":"If your gross income is $2,000 and $400 is deducted, what is your net income?","options":["$2,400","$2,000","$1,600","$400"],"correctAnswer":2,"explanation":"Net income = Gross - Deductions = $2,000 - $400 = $1,600."},{"question":"What is a benefit of hourly pay?","options":["Same paycheck every month","Can earn overtime pay","Always includes health insurance","Never changes"],"correctAnswer":1,"explanation":"Hourly workers often earn overtime (extra pay) for working extra hours."},{"question":"Which is NOT typically a job benefit?","options":["Health insurance","Paid vacation","Free groceries","401k matching"],"correctAnswer":2,"explanation":"Free groceries are not a standard job benefit, unlike insurance or retirement contributions."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 8: Starting Your First Job
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Starting Your First Job',
  'Tips for finding and succeeding in your first job',
  2,
  'both',
  8,
  10,
  '{"sections":[{"title":"Finding Opportunities","content":"# Where to Look for Jobs\n\n**For Young People:**\n- Ask family and neighbors\n- Check local stores for \"Now Hiring\" signs\n- School job boards\n- Community centers\n\n**For Adults:**\n- Online job boards (LinkedIn, Indeed)\n- Company websites\n- Networking events\n- Recruitment agencies\n- Professional connections\n\nTip: Many jobs are found through people you know!","order":1},{"title":"Interview Skills","content":"# Making a Good Impression\n\n**Before the interview:**\n- Research the company\n- Prepare answers to common questions\n- Choose appropriate clothing\n- Arrive 10 minutes early\n\n**During the interview:**\n- Shake hands firmly\n- Make eye contact\n- Speak clearly and confidently\n- Ask thoughtful questions\n- Show enthusiasm\n\n**After the interview:**\n- Send a thank-you email within 24 hours\n- Follow up if you haven''t heard back in a week","order":2},{"title":"First Day Tips","content":"# Starting Strong\n\n**Your first day:**\n- Arrive early\n- Bring a notebook and pen\n- Ask questions (it shows you care!)\n- Learn coworkers'' names\n- Observe workplace culture\n- Take notes on processes\n\n**First week/month:**\n- Be reliable (show up on time)\n- Take initiative\n- Accept feedback gracefully\n- Don''t be afraid to admit mistakes\n- Build relationships with colleagues\n\nRemember: Everyone was new once. People want you to succeed!","order":3}],"quiz":{"questions":[{"question":"What should you do before a job interview?","options":["Nothing, just show up","Research the company","Memorize your resume","Bring your parents"],"correctAnswer":1,"explanation":"Researching the company shows you''re serious and helps you answer questions better."},{"question":"How early should you arrive for an interview?","options":["1 hour early","Exactly on time","10 minutes early","10 minutes late"],"correctAnswer":2,"explanation":"Arriving 10 minutes early shows punctuality without being too early."},{"question":"What does \"networking\" mean when job hunting?","options":["Using the internet","Building professional connections","Working with computers","Social media posting"],"correctAnswer":1,"explanation":"Networking is building relationships with people who can help your career."},{"question":"On your first day, you should:","options":["Pretend to know everything","Stay quiet and don''t ask questions","Ask questions and take notes","Leave early to avoid mistakes"],"correctAnswer":2,"explanation":"Asking questions and taking notes shows you want to learn and do well."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 9: Building Multiple Income Streams
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Building Multiple Income Streams',
  'Diversify your income sources for financial security',
  3,
  'both',
  9,
  15,
  '{"sections":[{"title":"Why Diversify","content":"# Don''t Put All Eggs in One Basket\n\n**Why multiple income streams matter:**\n\n1. **Security:** If you lose one source, you have others\n2. **Growth:** Multiple sources = more total income\n3. **Freedom:** Less dependent on single employer\n4. **Opportunities:** Learn new skills\n\n**Real example:**\nSarah has:\n- Full-time job: $50,000/year\n- Weekend tutoring: $5,000/year\n- Rental property: $10,000/year\n- Total: $65,000/year with backup plans!","order":1},{"title":"Side Hustles","content":"# Extra Income Ideas\n\n**Popular side hustles:**\n\n**Online:**\n- Freelance writing, design, programming\n- Online tutoring\n- Sell crafts on Etsy\n- YouTube content creation\n- Affiliate marketing\n\n**Offline:**\n- Ride-share driving (Uber, Lyft)\n- Food delivery\n- Pet sitting/dog walking\n- Home repairs/handyman services\n- Photography for events\n\n**Tips:**\n- Start small, grow gradually\n- Choose something you enjoy\n- Don''t burn yourself out\n- Track income and expenses","order":2},{"title":"Investment Income","content":"# Money Making Money\n\n**Investment income types:**\n\n**1. Dividends:**\n- Companies pay shareholders\n- Usually quarterly\n- Can reinvest or take as cash\n\n**2. Interest:**\n- From savings accounts\n- Bonds pay interest\n- Generally lower risk\n\n**3. Capital Gains:**\n- Selling investments for profit\n- Buy stock at $50, sell at $100 = $50 gain\n- Can be risky\n\n**4. Rental Income:**\n- Own property, rent to tenants\n- Requires significant upfront capital\n- Ongoing maintenance needed\n\n**Key:** Start investing early, even small amounts grow over time!","order":3}],"quiz":{"questions":[{"question":"Why is having multiple income streams beneficial?","options":["It''s more complicated","Provides financial security if one source fails","You work less","It''s required by law"],"correctAnswer":1,"explanation":"Multiple income streams provide security - if one stops, you still have others."},{"question":"What is a \"side hustle\"?","options":["Your main job","A dance move","Extra work for additional income","A type of investment"],"correctAnswer":2,"explanation":"A side hustle is extra work outside your main job to earn more money."},{"question":"What are dividends?","options":["Money companies pay shareholders","Bank fees","Types of savings accounts","Job bonuses"],"correctAnswer":0,"explanation":"Dividends are payments companies make to shareholders from profits."},{"question":"Which is considered passive investment income?","options":["Salary from your job","Dividends from stocks","Payment for freelance work","Tips from waiting tables"],"correctAnswer":1,"explanation":"Dividends are passive income - you earn them without active daily work."},{"question":"When starting a side hustle, you should:","options":["Quit your main job immediately","Start small and grow gradually","Ignore tracking income","Never tell anyone"],"correctAnswer":1,"explanation":"It''s smart to start small, test the market, and grow sustainably."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- ============================================================
-- CATEGORÍA 3: SMART SPENDING (4 lecciones)
-- ============================================================

-- Lección 10: Needs vs Wants
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Needs vs Wants',
  'Learn to distinguish between essential and discretionary spending',
  1,
  'both',
  10,
  6,
  '{"sections":[{"title":"Essential Expenses","content":"# What You Need to Survive\n\n**Needs** = Things required for survival and basic well-being\n\nTrue needs:\n- Food and water\n- Shelter (housing)\n- Clothing (appropriate for weather)\n- Healthcare\n- Basic transportation (to work/school)\n- Utilities (electricity, water, heat)\n\n**For kids:** School supplies, healthy food\n**For adults:** Mortgage/rent, insurance, basic groceries","order":1},{"title":"Discretionary Spending","content":"# Things That Make Life Better\n\n**Wants** = Things that improve life but aren''t necessary for survival\n\nExamples:\n- Restaurant meals (you can cook at home)\n- Latest phone (older model works)\n- Designer clothes (regular clothes cover you)\n- Streaming services\n- Vacations\n- Toys and games\n\nWants aren''t bad! But needs come first.","order":2},{"title":"Making Choices","content":"# The Tricky Middle Ground\n\nSome purchases are both:\n\n**Phone:**\n- Need: Basic phone for safety/work\n- Want: $1,200 flagship model\n\n**Food:**\n- Need: Nutritious meals\n- Want: Expensive restaurant every day\n\n**Clothing:**\n- Need: Warm coat in winter\n- Want: Designer brand coat\n\n**Smart spending = Meet needs first, enjoy wants within budget**","order":3}],"quiz":{"questions":[{"question":"Which of these is a true NEED?","options":["Designer sneakers","Basic shelter","Video games","Vacation"],"correctAnswer":1,"explanation":"Shelter is essential for survival, making it a need."},{"question":"Which is a WANT?","options":["Medicine when sick","Water to drink","Streaming service subscription","Winter coat in cold climate"],"correctAnswer":2,"explanation":"Streaming services are entertainment wants, not survival needs."},{"question":"Why is it important to identify needs vs wants?","options":["To never enjoy anything","To prioritize spending wisely","Wants are illegal","Needs are free"],"correctAnswer":1,"explanation":"Identifying needs vs wants helps you spend money on essentials first."},{"question":"A $1,200 phone when a $300 phone works is an example of:","options":["A need","Smart spending","Upgrading a need to a want","Required spending"],"correctAnswer":2,"explanation":"The basic phone is the need; the expensive one adds want features."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 11: Smart Shopping Strategies
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Smart Shopping Strategies',
  'Learn how to get the best value for your money',
  1,
  'both',
  11,
  9,
  '{"sections":[{"title":"Comparing Prices","content":"# Finding the Best Deal\n\n**Price comparison tips:**\n\n1. **Check multiple stores** - Same item, different prices\n2. **Use price comparison websites** - Google Shopping, CamelCamelCamel\n3. **Consider unit price** - Price per ounce, per item\n4. **Watch for sales cycles** - Electronics drop in price before new models\n\n**Example:**\nCereal A: $4 for 12 oz = $0.33/oz\nCereal B: $5 for 18 oz = $0.28/oz\n\nCereal B is the better deal!","order":1},{"title":"Coupons and Discounts","content":"# Free Money Savers\n\n**Where to find deals:**\n- Store apps and loyalty programs\n- Email newsletters\n- Coupon websites (RetailMeNot, Honey)\n- Student/senior discounts\n- Cashback credit cards\n- Buy-one-get-one (BOGO) offers\n\n**Coupon rules:**\n✅ Only use for things you actually need\n❌ Don''t buy just because it''s on sale\n✅ Stack coupons when possible\n❌ Don''t let coupons expire unused\n\nSaving $1 on something you don''t need = wasting money!","order":2},{"title":"Avoiding Impulse Buys","content":"# Stop and Think First\n\n**Impulse buying** = Buying without planning, usually emotionally\n\n**How to resist:**\n\n1. **The 24-hour rule** - Wait a day before buying wants\n2. **Make a list** - Only buy what''s on the list\n3. **Avoid shopping when emotional** - Sad, happy, or bored\n4. **Unsubscribe from marketing emails**\n5. **Leave credit cards at home** - Use cash for discretionary shopping\n6. **Calculate cost in hours worked** - \"$100 shoes = 5 hours of work. Worth it?\"\n\n**Store tricks to watch for:**\n- Candy at checkout (temptation)\n- \"Limited time offer!\" (false urgency)\n- Sale signs everywhere (not always deals)\n- Pleasant smells/music (makes you linger)","order":3}],"quiz":{"questions":[{"question":"What should you compare when shopping for the best deal?","options":["Only the total price","Brand name only","Unit price and quality","The prettiest package"],"correctAnswer":2,"explanation":"Comparing unit price (price per unit) and quality gives you the best value."},{"question":"What is the 24-hour rule?","options":["Stores are open 24 hours","Wait a day before buying wants","Shop for 24 hours straight","Sales last 24 hours"],"correctAnswer":1,"explanation":"The 24-hour rule means waiting a day to avoid impulse purchases."},{"question":"When should you use coupons?","options":["For everything on sale","Only for items you actually need","Never","Only on weekends"],"correctAnswer":1,"explanation":"Coupons save money only if used for things you actually need."},{"question":"What is an impulse buy?","options":["A planned purchase","Buying without planning, often emotionally","Buying groceries","Using a coupon"],"correctAnswer":1,"explanation":"Impulse buying is unplanned purchasing driven by emotion rather than need."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 12: Understanding Value
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Understanding Value',
  'Learn that cheap isn''t always best - focus on value',
  2,
  'both',
  12,
  10,
  '{"sections":[{"title":"Price vs Quality","content":"# Good, Fast, Cheap - Pick Two\n\n**Value = Quality ÷ Price**\n\n**Sometimes expensive is worth it:**\n- Shoes that last 5 years vs 6 months\n- Durable tools vs ones that break\n- Healthy food vs cheap junk food\n\n**Sometimes cheap is fine:**\n- Basic supplies (paper, pencils)\n- Items you rarely use\n- Trendy items that go out of style\n\n**Example:**\n$20 shoes (last 6 months) = $40/year\n$80 shoes (last 3 years) = $27/year\n\nExpensive shoes are actually cheaper!","order":1},{"title":"Long-term Cost","content":"# Total Cost of Ownership\n\nLook beyond the price tag!\n\n**Consider:**\n- Maintenance costs\n- Repair costs\n- Energy/fuel costs\n- Lifespan\n- Resale value\n\n**Example: Two Cars**\n\n**Car A: $15,000**\n- Uses a lot of gas: $3,000/year\n- Frequent repairs: $1,500/year\n- 5 years = $15,000 + $22,500 = $37,500\n\n**Car B: $22,000**\n- Efficient gas use: $1,500/year\n- Reliable, few repairs: $500/year\n- 5 years = $22,000 + $10,000 = $32,000\n\nCheaper car actually costs $5,500 MORE!","order":2},{"title":"Brand vs Generic","content":"# When Brand Names Matter\n\n**Generic/store brand often fine for:**\n- Basic foods (flour, sugar, rice)\n- Over-the-counter medicine (same ingredients)\n- Cleaning supplies\n- School supplies\n- Basic clothing\n\n**Brand might be worth it for:**\n- Electronics (better support)\n- Specialized tools\n- Items with safety concerns\n- Things you use daily\n\n**How to decide:**\n1. Check ingredients/materials\n2. Read reviews\n3. Try generic first\n4. If generic works, stick with it!\n\nOften, generic is made in the same factory as brand names!","order":3}],"quiz":{"questions":[{"question":"What does \"value\" mean in shopping?","options":["The cheapest price","Quality divided by price","The most expensive item","Brand name"],"correctAnswer":1,"explanation":"Value is the balance between quality and price - best quality for the price paid."},{"question":"Why might expensive shoes be a better value?","options":["They look better","They last longer, costing less per year","Expensive is always better","They''re trendy"],"correctAnswer":1,"explanation":"If expensive shoes last much longer, the cost per year of use is often lower."},{"question":"What is \"total cost of ownership\"?","options":["Just the purchase price","All costs including maintenance over time","The price including tax","What you can sell it for later"],"correctAnswer":1,"explanation":"Total cost includes purchase price plus all future costs like maintenance and fuel."},{"question":"When is generic/store brand usually fine?","options":["Never","Always","For basic items like flour or medicine","Only for food"],"correctAnswer":2,"explanation":"Generic brands often have the same quality as name brands for basic items."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 13: Avoiding Consumer Traps
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Avoiding Consumer Traps',
  'Recognize and avoid common marketing tricks',
  2,
  'both',
  13,
  12,
  '{"sections":[{"title":"Marketing Tactics","content":"# How Stores Make You Spend More\n\n**Common tricks:**\n\n1. **Anchor pricing:** \"$200 $99!\" - Makes $99 seem cheap\n2. **Decoy pricing:** Small ($3), Medium ($5), Large ($5.50) - Everyone picks large\n3. **Scarcity:** \"Only 3 left!\" - Creates false urgency\n4. **Free shipping minimum:** \"Free shipping over $50\" - You spend $50 to save $5\n5. **Bundles:** \"Buy 3, save 10%\" - You only needed 1\n\n**How to resist:**\n- Know your budget before shopping\n- Research prices beforehand\n- Don''t shop when emotional\n- Question \"deals\" carefully","order":1},{"title":"Subscription Traps","content":"# The Slow Money Leak\n\n**Subscription risks:**\n\n**Free trials that aren''t free:**\n- Require credit card\n- Auto-renew after trial\n- Hard to cancel\n- You forget about them\n\n**Monthly subscriptions add up:**\n- Streaming: $15\n- Music: $10\n- Gaming: $15\n- Software: $20\n- Gym (unused): $40\n- **Total: $100/month = $1,200/year!**\n\n**Protection strategies:**\n- Set calendar reminders for trial ends\n- Review subscriptions monthly\n- Use virtual cards that expire\n- Ask yourself: \"Used it this month? Keep it. Not used? Cancel it.\"\n- Cancel immediately after free trials","order":2},{"title":"Hidden Fees","content":"# Reading the Fine Print\n\n**Watch out for:**\n\n**Resort/Hotel fees:**\n- Room: $100/night\n- \"Resort fee\": $30/night\n- Parking: $25/night\n- **Real cost: $155/night!**\n\n**Ticket fees:**\n- Concert ticket: $50\n- \"Service charge\": $15\n- \"Facility fee\": $8\n- **Real cost: $73**\n\n**Banking fees:**\n- Overdraft fees\n- ATM fees\n- Monthly maintenance fees\n- Foreign transaction fees\n\n**How to avoid:**\n1. Read ALL terms before buying\n2. Ask about total cost upfront\n3. Look for \"fee-free\" alternatives\n4. Calculate true cost before committing","order":3}],"quiz":{"questions":[{"question":"What is \"anchor pricing\"?","options":["Selling boat anchors","Showing a high price crossed out to make sale price look better","Giving discounts to sailors","Setting the lowest price"],"correctAnswer":1,"explanation":"Anchor pricing shows a high \"original\" price to make the sale price seem like a great deal."},{"question":"Why are \"free trials\" sometimes a trap?","options":["They''re actually free","They auto-renew and charge your card","They give you free stuff","They''re illegal"],"correctAnswer":1,"explanation":"Free trials often auto-renew into paid subscriptions that charge your card."},{"question":"If you have 5 subscriptions at $15 each, how much per year?","options":["$75","$180","$900","$750"],"correctAnswer":2,"explanation":"5 × $15 = $75/month × 12 months = $900/year."},{"question":"What are \"hidden fees\"?","options":["Illegal charges","Additional costs not shown in advertised price","Fees for hiding things","Discounts"],"correctAnswer":1,"explanation":"Hidden fees are extra costs added on top of the advertised price."},{"question":"Best way to avoid subscription traps:","options":["Never subscribe to anything","Review and cancel unused subscriptions regularly","Subscribe to everything","Ignore your bank statements"],"correctAnswer":1,"explanation":"Regularly reviewing subscriptions helps you cancel ones you don''t use."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- ============================================================
-- CATEGORÍA 4: SAVING GOALS (5 lecciones)
-- ============================================================

-- Lección 14: Why Save Money?
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Why Save Money?',
  'Understand the importance of saving for your future',
  1,
  'both',
  14,
  5,
  '{"sections":[{"title":"Emergency Fund","content":"# Preparing for the Unexpected\n\n**Emergency fund** = Money saved for unexpected problems\n\n**Why you need it:**\n- Car breaks down: $500 repair\n- Medical emergency: $1,000 bill\n- Job loss: Need 3-6 months expenses\n- Home repair: Broken water heater\n\n**Without emergency fund:**\n- Go into debt (credit cards, loans)\n- Can''t pay bills\n- Stress and worry\n\n**With emergency fund:**\n- Handle problems calmly\n- No debt needed\n- Peace of mind\n\n**Goal:** 3-6 months of living expenses","order":1},{"title":"Future Goals","content":"# Saving for What You Want\n\n**Short-term goals (< 1 year):**\n- New phone\n- Birthday party\n- School trip\n- Holiday gifts\n\n**Medium-term goals (1-5 years):**\n- Car\n- College\n- Wedding\n- Home down payment\n\n**Long-term goals (5+ years):**\n- Retirement\n- Children''s education\n- Dream vacation\n- Starting a business\n\nSaving lets you afford your dreams without debt!","order":2},{"title":"Financial Security","content":"# Peace of Mind\n\n**Financial security means:**\n- Not living paycheck to paycheck\n- Can handle emergencies\n- Not stressed about money\n- Freedom to make choices\n- Can help others\n\n**Benefits of saving:**\n1. **Freedom** - Say no to bad jobs\n2. **Opportunities** - Take chances on dreams\n3. **Less stress** - Sleep better at night\n4. **Independence** - Don''t rely on others\n5. **Future you** - Will thank present you!\n\n\"Don''t save what''s left after spending; spend what''s left after saving.\" - Warren Buffett","order":3}],"quiz":{"questions":[{"question":"What is an emergency fund?","options":["Money for vacations","Money saved for unexpected problems","Money for shopping","Money you never touch"],"correctAnswer":1,"explanation":"An emergency fund is savings set aside for unexpected expenses or emergencies."},{"question":"How many months of expenses should an emergency fund cover?","options":["1 week","1 month","3-6 months","10 years"],"correctAnswer":2,"explanation":"Financial experts recommend 3-6 months of living expenses for emergencies."},{"question":"Which is a short-term savings goal?","options":["Retirement","College in 10 years","New video game in 3 months","Buying a house"],"correctAnswer":2,"explanation":"Short-term goals are things you want to buy within a year."},{"question":"What does Warren Buffett say about saving?","options":["Spend first, save what''s left","Save first, spend what''s left","Never save anything","Save everything"],"correctAnswer":1,"explanation":"Buffett advises to save first (pay yourself first), then spend what remains."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 15: Setting Savings Goals
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Setting Savings Goals',
  'Learn to set and achieve effective savings goals',
  1,
  'both',
  15,
  8,
  '{"sections":[{"title":"SMART Goals","content":"# Setting Goals That Work\n\n**SMART = Specific, Measurable, Achievable, Relevant, Time-bound**\n\n❌ Bad goal: \"Save more money\"\n✅ SMART goal: \"Save $1,200 for a new laptop by December 31st\"\n\n**Breaking it down:**\n- **Specific:** New laptop\n- **Measurable:** $1,200\n- **Achievable:** $100/month for 12 months\n- **Relevant:** Need for school/work\n- **Time-bound:** By December 31st\n\n**How to make SMART goals:**\n1. Decide exactly what you want\n2. Research the cost\n3. Set a deadline\n4. Calculate monthly savings needed\n5. Make sure it''s realistic for your income","order":1},{"title":"Short-term vs Long-term","content":"# Different Goals, Different Strategies\n\n**Short-term (< 1 year):**\n- Keep in savings account\n- Easy access\n- Lower risk\n- Examples: New bike, concert tickets\n\n**Medium-term (1-5 years):**\n- High-yield savings or CDs\n- Some growth, still accessible\n- Low-medium risk\n- Examples: Car, college, wedding\n\n**Long-term (5+ years):**\n- Can invest in stocks/bonds\n- Higher growth potential\n- Medium-high risk (time to recover losses)\n- Examples: Retirement, house\n\nMatch your savings strategy to your timeline!","order":2},{"title":"Tracking Progress","content":"# Stay Motivated\n\n**Ways to track:**\n\n1. **Visual trackers:**\n   - Savings thermometer\n   - Coloring chart (color in $10 increments)\n   - Photo of goal item as phone wallpaper\n\n2. **Apps and spreadsheets:**\n   - Mint, YNAB, Personal Capital\n   - Simple Excel/Google Sheets\n   - Banking app savings goals\n\n3. **Physical methods:**\n   - Separate jar/envelope for each goal\n   - Move money to separate account\n   - Weekly check-ins with accountability partner\n\n**Celebrate milestones:**\n- 25% saved: Small treat\n- 50% saved: Tell a friend\n- 75% saved: Plan how you''ll use it\n- 100%: Achievement unlocked! 🎉","order":3}],"quiz":{"questions":[{"question":"What does SMART goals stand for?","options":["Simple, Money, Achievable, Real, Timely","Specific, Measurable, Achievable, Relevant, Time-bound","Save, Make, Acquire, Reach, Total","Spend, Manage, Allocate, Record, Track"],"correctAnswer":1,"explanation":"SMART is an acronym for Specific, Measurable, Achievable, Relevant, Time-bound."},{"question":"For a goal 8 years away, where should you keep the money?","options":["Under your mattress","In your wallet","Can invest in stocks for growth","In a piggy bank"],"correctAnswer":2,"explanation":"Long-term goals (5+ years) can be invested for higher growth potential."},{"question":"If you want to save $600 in 6 months, how much per month?","options":["$50","$100","$150","$200"],"correctAnswer":1,"explanation":"$600 ÷ 6 months = $100 per month."},{"question":"Why is tracking progress important?","options":["It''s not important","Helps you stay motivated and on track","Required by law","Banks force you to"],"correctAnswer":1,"explanation":"Tracking progress keeps you motivated and helps ensure you reach your goal."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 16: Where to Keep Your Savings
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Where to Keep Your Savings',
  'Learn about different savings accounts and options',
  2,
  'both',
  16,
  10,
  '{"sections":[{"title":"Savings Accounts","content":"# Basic Savings at Banks\n\n**Savings account features:**\n- Earn interest (usually 0.01% to 0.50%)\n- FDIC insured (up to $250,000)\n- Easy access to money\n- Low/no minimum balance\n- May have withdrawal limits\n\n**When to use:**\n- Emergency fund\n- Short-term goals\n- Money you might need soon\n\n**Tip:** Some accounts have fees if balance is too low. Choose fee-free accounts!","order":1},{"title":"Interest Rates","content":"# How Your Money Grows\n\n**Interest** = Money the bank pays you for keeping money there\n\n**Example:**\n- Save $1,000\n- Interest rate: 5% per year\n- After 1 year: $1,050\n- After 2 years: $1,102.50 (compound interest!)\n\n**Compound interest** = Earning interest on your interest\n\n**Where to find higher interest:**\n- Online banks (1% to 5%+)\n- High-yield savings accounts\n- Certificates of Deposit (CDs)\n- Money market accounts\n\n**Compare rates** - Small differences = big difference over time!\n\nAt 1%: $1,000 → $1,104 in 10 years\nAt 5%: $1,000 → $1,629 in 10 years","order":2},{"title":"Bank vs Credit Union","content":"# Where to Open an Account\n\n**Banks:**\n- For-profit companies\n- More locations and ATMs\n- Better technology/apps\n- Lower interest rates usually\n- Examples: Chase, Bank of America\n\n**Credit Unions:**\n- Non-profit, member-owned\n- Higher interest rates\n- Lower fees\n- Fewer locations\n- May require membership\n- Examples: Navy Federal, Local credit unions\n\n**Both are safe** - FDIC (banks) or NCUA (credit unions) insured\n\n**Choosing:**\n- Need branches/ATMs? → Bank\n- Want better rates? → Credit Union\n- Can use online banking? → Online bank (best rates)","order":3}],"quiz":{"questions":[{"question":"What is FDIC insurance?","options":["Car insurance","Protection for bank deposits up to $250,000","Health insurance","A type of savings account"],"correctAnswer":1,"explanation":"FDIC insurance protects your bank deposits up to $250,000 if the bank fails."},{"question":"What is compound interest?","options":["Flat interest rate","Interest earned on both principal and previous interest","Interest you pay on loans","No interest"],"correctAnswer":1,"explanation":"Compound interest means you earn interest on your interest, accelerating growth."},{"question":"Where typically find the highest interest rates?","options":["Traditional bank branches","Under your mattress","Online banks and credit unions","Piggy banks"],"correctAnswer":2,"explanation":"Online banks and credit unions often offer higher interest rates than traditional banks."},{"question":"If you save $100 at 4% interest for 1 year, how much will you have?","options":["$100","$104","$400","$140"],"correctAnswer":1,"explanation":"$100 + ($100 × 0.04) = $104."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 17: Automating Your Savings
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Automating Your Savings',
  'Set up automatic savings for effortless progress',
  2,
  'both',
  17,
  10,
  '{"sections":[{"title":"Pay Yourself First","content":"# The Golden Rule of Saving\n\n**\"Pay yourself first\"** = Save before spending on anything else\n\n**How it works:**\n\n❌ Old way:\n1. Receive paycheck\n2. Pay bills\n3. Buy stuff\n4. Save whatever is left (usually $0)\n\n✅ New way:\n1. Receive paycheck\n2. **Immediately save 10-20%**\n3. Pay bills\n4. Buy stuff with what''s left\n\n**Why it works:**\n- Treats savings as a bill (non-negotiable)\n- You adjust spending to what''s left\n- Savings actually happen\n\n\"Don''t save what is left after spending; spend what is left after saving.\"","order":1},{"title":"Automatic Transfers","content":"# Set It and Forget It\n\n**Automatic savings** = Money moves to savings without you doing anything\n\n**How to set up:**\n\n1. **Payroll split:**\n   - Ask employer to deposit % to savings\n   - Rest goes to checking\n   - Happens every paycheck\n\n2. **Bank auto-transfer:**\n   - Set up recurring transfer\n   - Every payday, $X moves to savings\n   - Can adjust or pause anytime\n\n3. **Save on a schedule:**\n   - Weekly: Easier psychologically\n   - Bi-weekly: Match paycheck schedule\n   - Monthly: Simple, larger amounts\n\n**Benefits:**\n- No willpower needed\n- No forgetting\n- Consistent progress\n- \"Out of sight, out of mind\"","order":2},{"title":"Round-up Apps","content":"# Painless Micro-Savings\n\n**Round-up apps** = Round purchases to nearest dollar, save the difference\n\n**How they work:**\n\nYou buy coffee: $4.50\nApp rounds to: $5.00\nSaves difference: $0.50\n\n10 purchases × $0.50 avg = $5/day = $150/month!\n\n**Popular apps:**\n- Acorns\n- Digit\n- Qapital\n- Chime (has this feature)\n- Many banks offer this\n\n**Other micro-saving tricks:**\n- Save all $5 bills you receive\n- Save all coins at end of day\n- Save tax refund immediately\n- Save bonuses/gifts before spending\n- Save raises (increase auto-transfer when salary increases)\n\n**Key:** Start small! $1/day = $365/year","order":3}],"quiz":{"questions":[{"question":"What does \"pay yourself first\" mean?","options":["Buy things for yourself","Save money before paying bills","Give yourself a paycheck","Save money before spending on other things"],"correctAnswer":3,"explanation":"Pay yourself first means saving a portion of income before spending on anything else."},{"question":"What is automatic savings?","options":["Money that appears magically","Automatic transfers from checking to savings","Savings that grow automatically","A type of bank account"],"correctAnswer":1,"explanation":"Automatic savings is when money automatically transfers from checking to savings."},{"question":"How do round-up apps work?","options":["Round down your balance","Round purchases up and save the difference","Give you money","Round your interest"],"correctAnswer":1,"explanation":"Round-up apps round each purchase up to the nearest dollar and save the difference."},{"question":"If a round-up app saves $0.50 per transaction and you make 200 transactions/month, how much saved?","options":["$50","$100","$150","$200"],"correctAnswer":1,"explanation":"200 transactions × $0.50 = $100 saved per month."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Lección 18: Building an Emergency Fund
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Building an Emergency Fund',
  'Create your financial safety net step by step',
  2,
  'both',
  18,
  12,
  '{"sections":[{"title":"How Much to Save","content":"# Your Emergency Fund Target\n\n**Standard recommendation: 3-6 months of expenses**\n\n**Calculate your number:**\n\n1. List monthly expenses:\n   - Rent/mortgage: $1,000\n   - Utilities: $150\n   - Food: $400\n   - Transportation: $200\n   - Insurance: $150\n   - Other essentials: $100\n   - **Total: $2,000/month**\n\n2. Multiply by 3-6:\n   - Minimum: $6,000\n   - Ideal: $12,000\n\n**Factors to consider:**\n- Job stability (unstable = 6+ months)\n- Income sources (single income = more needed)\n- Health (medical issues = more needed)\n- Dependents (kids = more needed)","order":1},{"title":"When to Use It","content":"# True Emergencies Only\n\n**Use emergency fund for:**\n\n✅ **True emergencies:**\n- Job loss\n- Medical emergency\n- Essential home repair (water heater, furnace)\n- Essential car repair (can''t get to work)\n- Family emergency\n\n❌ **NOT emergencies:**\n- Sale on TV\n- Vacation\n- New clothes\n- Eating out\n- Non-essential upgrades\n- \"I really want it\"\n\n**Rule of thumb:**\nAsk: \"If I don''t spend this money, will something bad happen?\"\n- Yes = Emergency\n- No = Not an emergency\n\nHaving separate \"fun money\" helps avoid dipping into emergency fund!","order":2},{"title":"Rebuilding After Use","content":"# Getting Back on Track\n\n**If you use your emergency fund:**\n\n**1. Don''t feel guilty!**\n- That''s what it''s for\n- You planned ahead correctly\n- Be proud you had it\n\n**2. Pause other savings temporarily:**\n- Focus on rebuilding emergency fund first\n- Other goals can wait\n- Emergency fund = priority #1\n\n**3. Rebuild as fast as reasonably possible:**\n- Start immediately (even $20 helps)\n- Use any windfalls (tax refund, bonus)\n- Temporarily cut discretionary spending\n- Consider side income\n\n**4. Review what happened:**\n- Was it preventable?\n- Need more insurance?\n- Need bigger emergency fund?\n- Adjust plan accordingly\n\n**Example rebuild plan:**\n- Used: $2,000\n- Income: $3,000/month\n- Can save: $500/month\n- Rebuilt in: 4 months","order":3}],"quiz":{"questions":[{"question":"How many months of expenses should an emergency fund cover?","options":["1 week","1 month","3-6 months","10 years"],"correctAnswer":2,"explanation":"Financial experts recommend 3-6 months of living expenses."},{"question":"Which is a TRUE emergency for using your emergency fund?","options":["TV is on sale","Want to go on vacation","Car breaks down and you can''t get to work","New video game release"],"correctAnswer":2,"explanation":"A car needed for work is a true emergency. Other examples are wants."},{"question":"If your monthly expenses are $2,500, what''s a minimum emergency fund?","options":["$2,500","$5,000","$7,500","$25,000"],"correctAnswer":2,"explanation":"3 months × $2,500 = $7,500 minimum."},{"question":"After using emergency fund, what should you do?","options":["Forget about it","Immediately rebuild it","Wait a year to rebuild","Use it for other things"],"correctAnswer":1,"explanation":"Rebuild your emergency fund as soon as possible after using it."},{"question":"Why might someone need 6+ months of expenses saved?","options":["They like big numbers","Unstable job or single income household","Banks require it","Everyone needs exactly 6 months"],"correctAnswer":1,"explanation":"Less stable situations warrant larger emergency funds for more protection."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- ============================================================
-- Verificación final
-- ============================================================
SELECT
  'Seed completado exitosamente!' as mensaje,
  COUNT(*) as total_lecciones
FROM "Lesson";
