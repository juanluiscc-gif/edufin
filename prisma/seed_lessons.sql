-- Seed script para lecciones en Neon
-- Ejecuta este script directamente en la consola SQL de Neon

-- Primero, limpia las lecciones existentes
DELETE FROM "UserLessonProgress";
DELETE FROM "Lesson";

-- Insertar Lección 1: What is Money?
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

-- Insertar Lección 2: Different Types of Currency
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Different Types of Currency',
  'Explore coins, bills, digital money, and cryptocurrency',
  1,
  'both',
  2,
  15,
  '{"sections":[{"title":"Coins and Bills","content":"# Physical Money\n\n**Coins** are made of metal and usually worth less. They''re good for small purchases like candy or parking meters.\n\n**Bills (Banknotes)** are made of paper or plastic and worth more. They''re lighter and easier to carry than lots of coins.\n\n💡 Fun fact: The ink and paper for bills cost less than 10 cents, but the bill might be worth $100!","order":1},{"title":"Digital Money","content":"# Money You Can''t Touch\n\nMost money today is **digital** - it exists as numbers in a computer!\n\nExamples:\n- Money in your bank account\n- Payment apps like PayPal, Venmo\n- Credit card payments\n- Mobile wallets like Apple Pay\n\nYou never touch this money, but you can still spend it!","order":2},{"title":"Cryptocurrency Basics","content":"# A New Kind of Money\n\n**Cryptocurrency** is digital money that uses computer code to secure transactions.\n\nMost famous examples:\n- Bitcoin (BTC)\n- Ethereum (ETH)\n\n**Key differences:**\n- No government controls it\n- Works across all countries\n- Very secure but can be risky\n- Prices change a lot!\n\n⚠️ For beginners, stick to regular money until you learn more!","order":3}],"quiz":{"questions":[{"question":"What are coins usually made of?","options":["Paper","Metal","Plastic","Wood"],"correctAnswer":1,"explanation":"Coins are made of metal, which makes them durable and hard to counterfeit."},{"question":"Which is an example of digital money?","options":["A $10 bill","A quarter","Your bank account balance","Gold bars"],"correctAnswer":2,"explanation":"Bank account balances are digital money - they exist as electronic records."},{"question":"What is true about cryptocurrency?","options":["It is controlled by governments","It never changes in value","It uses computer code for security","You can hold it in your hand"],"correctAnswer":2,"explanation":"Cryptocurrency uses advanced computer code (cryptography) to secure transactions."},{"question":"Why is digital money convenient?","options":["You can carry large amounts easily","It weighs a lot","It can get wet","You must count it manually"],"correctAnswer":0,"explanation":"Digital money is convenient because you can have millions in your account without physical storage."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Insertar Lección 3: How Money Gets Its Value
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'How Money Gets Its Value',
  'Understand why money is worth something',
  2,
  'both',
  3,
  15,
  '{"sections":[{"title":"Supply and Demand","content":"# What Makes Money Valuable?\n\nMoney has value because of **supply and demand**:\n\n**Supply** = How much money exists\n**Demand** = How many people want it\n\nIf everyone wants dollars and there aren''t many, dollars are valuable.\nIf there are too many dollars, each one is worth less.\n\nThink of it like rare trading cards - rare cards are more valuable!","order":1},{"title":"Government Role","content":"# Who Controls Money?\n\nGovernments and central banks control how much money exists:\n\n- **Print too much** = Money becomes less valuable (inflation)\n- **Print too little** = Hard to do business (deflation)\n\nThey try to keep the amount \"just right\" so the economy stays healthy.\n\nThis is why you can''t just print money at home - it would make money worthless!","order":2},{"title":"Trust in Money","content":"# Why We Trust Money\n\nMoney only works if people trust it!\n\nWe trust money because:\n1. The government says it''s legal\n2. Stores accept it\n3. We can pay taxes with it\n4. It has security features (hard to fake)\n\nIf people stopped trusting it, money would become just paper or numbers.","order":3}],"quiz":{"questions":[{"question":"What happens if a government prints too much money?","options":["Everyone becomes rich","Money becomes less valuable","Money becomes more valuable","Nothing changes"],"correctAnswer":1,"explanation":"Printing too much money causes inflation - each dollar is worth less."},{"question":"Supply and demand means:","options":["How much exists and how many want it","Where to buy things","How to save money","Types of currency"],"correctAnswer":0,"explanation":"Supply is how much exists, demand is how many people want it."},{"question":"Why can''t you just print your own money?","options":["It would make all money worthless","Printers are expensive","Paper is hard to find","You can, it''s allowed"],"correctAnswer":0,"explanation":"If everyone could print money, there would be too much supply and it would lose value."},{"question":"Money has value primarily because:","options":["It''s pretty","People trust and accept it","It''s made of precious materials","It''s rare"],"correctAnswer":1,"explanation":"Money''s value comes from collective trust and acceptance in society."},{"question":"What role do governments play with money?","options":["They determine fashion trends","They control the supply","They force you to spend","Nothing at all"],"correctAnswer":1,"explanation":"Governments and central banks control how much money is in circulation."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Insertar Lección 4: Money Around the World
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Money Around the World',
  'Learn about different currencies and exchange rates',
  2,
  'both',
  4,
  15,
  '{"sections":[{"title":"Major Currencies","content":"# World Money\n\nDifferent countries use different money!\n\n**Major World Currencies:**\n- 🇺🇸 US Dollar (USD) - Most widely used\n- 🇪🇺 Euro (EUR) - Used in many European countries\n- 🇬🇧 British Pound (GBP) - Used in United Kingdom\n- 🇯🇵 Japanese Yen (JPY) - Used in Japan\n- 🇨🇳 Chinese Yuan (CNY) - Used in China\n\nEach has its own symbol and value!","order":1},{"title":"Exchange Rates","content":"# Trading Money Between Countries\n\n**Exchange rates** tell you how much one currency is worth in another.\n\nExample:\n1 USD = 0.85 EUR\n\nThis means one US dollar can be traded for 0.85 euros.\n\n**Exchange rates change daily** based on:\n- How strong each economy is\n- Interest rates\n- Political stability\n- Supply and demand","order":2},{"title":"International Trade","content":"# Why Exchange Rates Matter\n\nWhen countries trade with each other, they need to exchange currencies:\n\n- A US company buying products from Japan needs Yen\n- A European tourist in America needs Dollars\n- Online shopping from other countries requires conversion\n\n**Strong currency** = Your money buys more in other countries\n**Weak currency** = Your money buys less abroad\n\nThis affects travel, shopping, and business!","order":3}],"quiz":{"questions":[{"question":"What is the currency used in most European countries?","options":["Dollar","Euro","Pound","Peso"],"correctAnswer":1,"explanation":"The Euro (EUR) is used by 20 European Union countries."},{"question":"What does an exchange rate tell you?","options":["How fast money grows","Where to shop","How much one currency is worth in another","How to save money"],"correctAnswer":2,"explanation":"Exchange rates show the value of one currency compared to another."},{"question":"If 1 USD = 100 JPY, how many yen is $5?","options":["50 yen","100 yen","500 yen","5 yen"],"correctAnswer":2,"explanation":"5 dollars × 100 yen per dollar = 500 yen."},{"question":"When would you need to exchange currency?","options":["Traveling to another country","Shopping at local stores","Paying bills at home","Saving money"],"correctAnswer":0,"explanation":"You need to exchange currency when traveling abroad or buying from international sellers."},{"question":"What makes a currency \"strong\"?","options":["It''s made of strong materials","It buys more in other countries","It''s heavy","It''s colorful"],"correctAnswer":1,"explanation":"A strong currency has high purchasing power in international markets."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Insertar Lección 5: Inflation and Purchasing Power
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

-- Insertar Lección 6: Ways to Earn Money
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Ways to Earn Money',
  'Explore different methods of earning income',
  1,
  'both',
  6,
  10,
  '{"sections":[{"title":"Jobs and Careers","content":"# Working for Money\n\n**Active income** = Money you earn by working\n\nTypes of jobs:\n- **Employee:** Work for a company (steady paycheck)\n- **Freelancer:** Work for yourself (multiple clients)\n- **Contractor:** Work on specific projects\n\n**For kids:** Chores, lawn mowing, pet sitting\n**For adults:** Full-time jobs, part-time work, consulting","order":1},{"title":"Self-Employment","content":"# Being Your Own Boss\n\n**Self-employment** means working for yourself!\n\nExamples:\n- Start a small business\n- Offer services (tutoring, cleaning, design)\n- Sell products online\n- Create content (YouTube, blog)\n\n**Pros:** Flexibility, unlimited earning potential\n**Cons:** No steady paycheck, more responsibility","order":2},{"title":"Passive Income","content":"# Money While You Sleep\n\n**Passive income** = Earning money without active work\n\nExamples:\n- Rental properties (rent from tenants)\n- Investments (dividends from stocks)\n- Royalties (from books, music, patents)\n- Online courses (sell once, earn forever)\n\nNote: Usually requires upfront work or money to start!","order":3}],"quiz":{"questions":[{"question":"What is active income?","options":["Money earned by working","Money earned while sleeping","Money from investments","Money found on the street"],"correctAnswer":0,"explanation":"Active income is money earned through active work and effort."},{"question":"Which is an example of passive income?","options":["Your salary from a job","Payment for mowing a lawn","Rent from a property you own","Allowance from parents"],"correctAnswer":2,"explanation":"Rental income is passive - you earn it without active daily work."},{"question":"What does self-employment mean?","options":["Working for a big company","Working for yourself","Being unemployed","Working part-time"],"correctAnswer":1,"explanation":"Self-employment means you are your own boss and work for yourself."},{"question":"Which is true about passive income?","options":["It requires no effort ever","Anyone can start immediately with no money","It often requires upfront work or investment","It always earns more than active income"],"correctAnswer":2,"explanation":"Passive income streams usually require initial work or capital to establish."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Insertar Lección 7: Understanding Income
INSERT INTO "Lesson" (id, title, description, difficulty_level, age_group, display_order, estimated_minutes, content, created_at, updated_at)
VALUES (
  gen_random_uuid(),
  'Understanding Income',
  'Learn about gross income, net income, and deductions',
  1,
  'both',
  7,
  10,
  '{"sections":[{"title":"Gross vs Net Income","content":"# How Much Do You Really Earn?\n\n**Gross Income** = Total money before anything is taken out\n**Net Income** = Money you actually take home (after taxes and deductions)\n\nExample:\n- Gross: $1,000\n- Taxes: -$200\n- Health insurance: -$50\n- Retirement: -$50\n- **Net (take-home): $700**\n\nAlways focus on net income when budgeting!","order":1},{"title":"Salary vs Hourly","content":"# Two Ways to Get Paid\n\n**Salary:**\n- Fixed amount per year\n- Example: $50,000/year\n- Same paycheck every month\n- Often includes benefits\n\n**Hourly:**\n- Paid per hour worked\n- Example: $15/hour\n- Paycheck varies based on hours\n- May get overtime pay (1.5x or 2x rate)\n\nNeither is \"better\" - it depends on the job!","order":2},{"title":"Benefits and Bonuses","content":"# More Than Just Money\n\n**Benefits** = Extra compensation beyond salary\n\nCommon benefits:\n- Health insurance\n- Retirement contributions (401k matching)\n- Paid vacation days\n- Sick leave\n- Professional development\n\n**Bonuses:**\n- Extra payments for good performance\n- Holiday bonuses\n- Commission (sales-based earnings)\n- Profit sharing\n\nBenefits can be worth 20-30% of your salary!","order":3}],"quiz":{"questions":[{"question":"What is net income?","options":["Total income before deductions","Money you take home after deductions","Money from the internet","Bonus payments"],"correctAnswer":1,"explanation":"Net income is what you actually receive after taxes and deductions."},{"question":"If your gross income is $2,000 and $400 is deducted, what is your net income?","options":["$2,400","$2,000","$1,600","$400"],"correctAnswer":2,"explanation":"Net income = Gross - Deductions = $2,000 - $400 = $1,600."},{"question":"What is a benefit of hourly pay?","options":["Same paycheck every month","Can earn overtime pay","Always includes health insurance","Never changes"],"correctAnswer":1,"explanation":"Hourly workers often earn overtime (extra pay) for working extra hours."},{"question":"Which is NOT typically a job benefit?","options":["Health insurance","Paid vacation","Free groceries","401k matching"],"correctAnswer":2,"explanation":"Free groceries are not a standard job benefit, unlike insurance or retirement contributions."}],"passingScore":70},"recommendedGame":null}',
  NOW(),
  NOW()
);

-- Mensaje de confirmación
SELECT 'Seed completado! Se insertaron 7 lecciones con UUIDs.' as message;
