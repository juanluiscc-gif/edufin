import 'dotenv/config';
import { PrismaClient, AgeGroup, GameType } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  console.log('Starting database seed...');

  // Seed Lessons
  console.log('Seeding lessons...');

  const lessons = [
    // Money Basics (Both age groups)
    {
      title: 'What is Money?',
      description: 'Learn about the concept of money and why we use it',
      content: `# What is Money?

Money is something we use to buy things we need and want. But what exactly is money, and why do we need it?

## The Story of Money

Long ago, people didn't have money. They would trade things directly. If you had apples and wanted bread, you'd find someone with bread who wanted apples. This is called **bartering**.

But bartering had problems:
- What if no one wanted your apples?
- How many apples equal one loaf of bread?
- How do you save apples for later? They go bad!

So people invented money. Money is special because:
- Everyone agrees it has value
- It doesn't go bad
- It's easy to carry
- You can split it into small amounts

## Types of Money

Today, we have different types of money:
- **Coins** - Metal money for small amounts
- **Bills** - Paper money for larger amounts
- **Digital money** - Money in computers and phones

All of these represent value that we can exchange for goods and services.

## Why Money Matters

Money helps us:
- Buy things we need (food, clothes, shelter)
- Save for things we want
- Trade easily with others
- Measure value consistently

Understanding money is the first step to being financially smart!`,
      difficulty_level: 1,
      age_group: AgeGroup.both,
      display_order: 1,
      estimated_minutes: 10,
    },
    {
      title: 'Counting Money',
      description: 'Practice identifying and counting coins and bills',
      content: `# Counting Money

Being able to count money is an important skill. Let's practice!

## Coins

In the US, we have these common coins:
- **Penny** = 1 cent (¢) = $0.01
- **Nickel** = 5 cents = $0.05
- **Dime** = 10 cents = $0.10
- **Quarter** = 25 cents = $0.25

## Bills

Common bills include:
- $1, $5, $10, $20, $50, $100

## Counting Practice

To count money:
1. Sort by type (all pennies together, all nickels together, etc.)
2. Count each type
3. Add them all up

**Example:**
- 3 quarters = 75¢
- 2 dimes = 20¢
- 1 nickel = 5¢
- Total = 75¢ + 20¢ + 5¢ = 100¢ = $1.00

## Making Change

When you buy something, you need to know if you have enough money and how much change you'll get back.

**Example:** You buy a toy for $3.50 and pay with $5.00
- Change = $5.00 - $3.50 = $1.50

Practice counting money every day to get better!`,
      difficulty_level: 1,
      age_group: AgeGroup.kid,
      display_order: 2,
      estimated_minutes: 15,
    },
    {
      title: 'Earning Money',
      description: 'Learn about different ways people earn money',
      content: `# Earning Money

Money doesn't grow on trees! People work to earn money. Let's learn how.

## For Kids: Ways to Earn

Kids can earn money by:
- **Doing chores** - Help around the house
- **Good grades** - Some families reward school success
- **Lemonade stand** - Sell things you make
- **Pet sitting** - Help neighbors with their pets
- **Yard work** - Rake leaves, pull weeds

## For Adults: Careers and Jobs

Adults earn money through:
- **Jobs** - Work for a company or organization
- **Self-employment** - Own your own business
- **Freelancing** - Do project-based work
- **Investments** - Money from savings and investments

## Understanding Payment

When you work, you get paid:
- **Hourly** - Paid for each hour worked ($15/hour)
- **Salary** - Fixed amount per year ($50,000/year)
- **Commission** - Based on sales or results
- **Tips** - Extra money for good service

## The Value of Work

Remember:
- Working hard leads to earning more
- Different jobs pay different amounts
- Skills and education affect earning potential
- You exchange your time and effort for money

Start thinking about what skills you want to develop!`,
      difficulty_level: 2,
      age_group: AgeGroup.both,
      display_order: 3,
      estimated_minutes: 12,
    },
    {
      title: 'Needs vs Wants',
      description: 'Understanding the difference between needs and wants',
      content: `# Needs vs Wants

One of the most important money skills is knowing the difference between needs and wants.

## What are Needs?

**Needs** are things you must have to live:
- Food and water
- Shelter (home)
- Clothing
- Healthcare
- Basic education

Without these, you cannot survive or function properly.

## What are Wants?

**Wants** are things you would like to have but don't need:
- Toys and games
- Candy and treats
- New phone or tablet
- Brand name clothes
- Entertainment

You can live without wants, even though they're nice to have.

## Making Smart Choices

When you have money to spend:
1. **Take care of needs first**
2. **Save some money**
3. **Then think about wants**

## The Gray Area

Sometimes it's tricky! Is a phone a need or want?
- **Need:** A basic phone to stay in touch
- **Want:** The latest expensive smartphone

## Practice Exercise

Look at these items and decide: Need or Want?
- New school shoes (yours have holes) → NEED
- Designer sneakers (you have working shoes) → WANT
- Lunch at school → NEED
- Ice cream after school → WANT
- Winter coat (you don't have one) → NEED
- Second winter coat (you already have one) → WANT

Understanding needs vs wants helps you spend money wisely!`,
      difficulty_level: 2,
      age_group: AgeGroup.both,
      display_order: 4,
      estimated_minutes: 10,
    },
    {
      title: 'Saving Money',
      description: 'Why and how to save money for future goals',
      content: `# Saving Money

Saving money means keeping some instead of spending it all. Let's learn why this is important!

## Why Save?

Saving helps you:
- **Buy bigger things** - Save up for something expensive
- **Handle emergencies** - Unexpected costs happen
- **Reach goals** - Save for something special
- **Feel secure** - Having savings reduces stress

## How to Save

**For Kids:**
1. Use a piggy bank or jar
2. Save part of your allowance
3. Don't spend all your birthday money
4. Set a goal (toy, game, etc.)

**For Adults:**
1. Open a savings account
2. Save a percentage of each paycheck (10-20%)
3. Automate savings (automatic transfer)
4. Emergency fund (3-6 months of expenses)

## The 50/30/20 Rule

A simple way to manage money:
- **50%** for needs
- **30%** for wants
- **20%** for savings

## Compound Interest

When you save money in a bank:
- The bank pays you interest
- Interest earns more interest
- Your money grows faster over time

**Example:**
- Save $100 at 5% interest
- After 1 year: $105
- After 2 years: $110.25 (interest on interest!)

## Make Saving Automatic

The best way to save is to make it automatic:
- Pay yourself first
- Set up automatic transfers
- Save before you spend

## Start Small

Even small amounts add up:
- $1 per day = $365 per year
- $5 per week = $260 per year
- $20 per month = $240 per year

Start saving today, no matter how small!`,
      difficulty_level: 2,
      age_group: AgeGroup.both,
      display_order: 5,
      estimated_minutes: 15,
    },
    // Adult-specific lessons
    {
      title: 'Creating a Budget',
      description: 'Learn how to create and stick to a monthly budget',
      content: `# Creating a Budget

A budget is a plan for your money. It helps you track income and expenses so you don't overspend.

## Why Budget?

Budgeting helps you:
- Know where your money goes
- Avoid overspending
- Save for goals
- Reduce financial stress
- Make informed decisions

## Step 1: Calculate Income

List all money coming in each month:
- Salary/wages (after taxes)
- Side hustle income
- Investment income
- Other sources

**Example:** $3,500/month after taxes

## Step 2: List Fixed Expenses

These stay the same each month:
- Rent/mortgage: $1,200
- Car payment: $300
- Insurance: $150
- Phone bill: $50
- Subscriptions: $50
- **Total Fixed:** $1,750

## Step 3: Estimate Variable Expenses

These change each month:
- Groceries: $400
- Gas: $150
- Utilities: $100
- Entertainment: $100
- Dining out: $150
- Personal care: $50
- **Total Variable:** $950

## Step 4: Set Savings Goals

- Emergency fund: $300
- Retirement: $250
- Other goals: $100
- **Total Savings:** $650

## The Math

- **Income:** $3,500
- **Fixed Expenses:** $1,750
- **Variable Expenses:** $950
- **Savings:** $650
- **Left Over:** $150

## Budgeting Methods

**1. Zero-Based Budget**
- Every dollar has a job
- Income - Expenses = $0

**2. 50/30/20 Rule**
- 50% needs
- 30% wants
- 20% savings

**3. Envelope System**
- Cash for each category
- When envelope is empty, stop spending

## Tips for Success

1. **Track everything** - Use an app or spreadsheet
2. **Be realistic** - Don't underestimate expenses
3. **Review monthly** - Adjust as needed
4. **Use tools** - Apps like Mint, YNAB
5. **Stay flexible** - Life changes, budgets should too

## Common Mistakes

- Forgetting irregular expenses (car maintenance, gifts)
- Being too restrictive (leads to burnout)
- Not tracking actual spending
- Giving up after one bad month

Start your budget today!`,
      difficulty_level: 3,
      age_group: AgeGroup.adult,
      display_order: 6,
      estimated_minutes: 20,
    },
    {
      title: 'Understanding Credit',
      description: 'Learn about credit scores, credit cards, and borrowing',
      content: `# Understanding Credit

Credit is borrowing money with a promise to pay it back. Understanding credit is crucial for financial health.

## What is Credit?

Credit allows you to:
- Borrow money now
- Pay it back later
- Usually with interest

Common types:
- Credit cards
- Personal loans
- Car loans
- Mortgages
- Student loans

## Credit Scores

Your credit score (300-850) measures how trustworthy you are with borrowed money.

**Score Ranges:**
- 300-579: Poor
- 580-669: Fair
- 670-739: Good
- 740-799: Very Good
- 800-850: Exceptional

## What Affects Your Score?

1. **Payment History (35%)** - Do you pay on time?
2. **Credit Utilization (30%)** - How much credit do you use?
3. **Length of History (15%)** - How long have you had credit?
4. **New Credit (10%)** - Recent applications
5. **Credit Mix (10%)** - Types of credit you have

## Credit Cards

**Pros:**
- Build credit history
- Convenience
- Rewards and cash back
- Fraud protection

**Cons:**
- Easy to overspend
- High interest rates (15-25%)
- Fees (annual, late, etc.)
- Can lead to debt

## Using Credit Wisely

**Golden Rules:**
1. Pay in full every month (avoid interest)
2. Keep utilization below 30%
3. Never miss a payment
4. Don't open too many cards
5. Read terms carefully

## Interest and APR

**APR** = Annual Percentage Rate

If you don't pay in full:
- Balance of $1,000
- APR of 20%
- Monthly interest ≈ $17

Over time, interest adds up fast!

## Building Good Credit

1. Get a secured credit card
2. Pay bills on time
3. Keep balances low
4. Don't close old accounts
5. Check credit report annually (free at annualcreditreport.com)

## Debt Management

If you have credit card debt:
1. Stop using the cards
2. Pay more than minimum
3. Focus on highest interest rate first
4. Consider balance transfer
5. Seek help if needed

Credit is a tool - use it wisely!`,
      difficulty_level: 4,
      age_group: AgeGroup.adult,
      display_order: 7,
      estimated_minutes: 18,
    },
  ];

  for (const lesson of lessons) {
    await prisma.lesson.create({
      data: lesson,
    });
  }

  console.log(`Created ${lessons.length} lessons`);

  // Seed Games
  console.log('Seeding games...');

  const games = [
    {
      title: 'Money Math Challenge',
      description: 'Test your skills at counting coins and making change',
      game_type: GameType.quiz,
      age_group: AgeGroup.kid,
      difficulty_level: 2,
      max_score: 100,
    },
    {
      title: 'Lemonade Stand',
      description: 'Run your own lemonade stand and learn about profit',
      game_type: GameType.simulation,
      age_group: AgeGroup.kid,
      difficulty_level: 2,
      max_score: 100,
    },
    {
      title: 'Coin Sorter',
      description: 'Sort coins and make exact change as fast as you can',
      game_type: GameType.puzzle,
      age_group: AgeGroup.kid,
      difficulty_level: 1,
      max_score: 100,
    },
    {
      title: 'Birthday Money Decision',
      description: 'You got birthday money! What will you do with it?',
      game_type: GameType.scenario,
      age_group: AgeGroup.kid,
      difficulty_level: 1,
      max_score: 100,
    },
    {
      title: 'Budget Master',
      description: 'Create and manage a monthly budget challenge',
      game_type: GameType.simulation,
      age_group: AgeGroup.adult,
      difficulty_level: 3,
      max_score: 100,
    },
    {
      title: 'Investment Matcher',
      description: 'Match investment types to their risk levels',
      game_type: GameType.puzzle,
      age_group: AgeGroup.adult,
      difficulty_level: 3,
      max_score: 100,
    },
    {
      title: 'Credit Score Quiz',
      description: 'Test your knowledge of credit scores and credit cards',
      game_type: GameType.quiz,
      age_group: AgeGroup.adult,
      difficulty_level: 3,
      max_score: 100,
    },
    {
      title: 'Emergency Fund Scenario',
      description: 'Navigate unexpected expenses and make smart financial decisions',
      game_type: GameType.scenario,
      age_group: AgeGroup.adult,
      difficulty_level: 4,
      max_score: 100,
    },
  ];

  for (const game of games) {
    await prisma.game.create({
      data: game,
    });
  }

  console.log(`Created ${games.length} games`);
  console.log('Database seed completed successfully!');
}

main()
  .catch((e) => {
    console.error('Error seeding database:', e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
