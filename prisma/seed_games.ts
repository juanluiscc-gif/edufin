import { PrismaClient, GameType, AgeGroup } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  console.log('🌱 Seeding database with example games...\n');

  // Clear existing game data (optional, for development)
  console.log('Clearing existing games...');
  await prisma.gameScore.deleteMany({});
  await prisma.leaderboard.deleteMany({});
  await prisma.game.deleteMany({});

  // ========================================
  // QUIZ GAMES (5 examples)
  // ========================================
  console.log('\n📝 Creating Quiz Games...');

  const moneyBasicsQuiz = await prisma.game.create({
    data: {
      title: "💰 Money Basics Quiz",
      description: JSON.stringify({
        instructions: "Test your knowledge about basic money concepts! Each question is worth 100 points, with time bonuses for quick answers.",
        questions: [
          {
            id: 1,
            text: "What is the best way to save money?",
            options: ["Spend it all now", "Save regularly in a safe place", "Hide it under your mattress", "Give it all away"],
            correctIndex: 1,
            explanation: "Saving regularly in a safe place like a bank helps you build wealth over time and keeps your money secure."
          },
          {
            id: 2,
            text: "What does 'budget' mean?",
            options: ["A fancy wallet", "A plan for spending and saving money", "A type of bank account", "Money you owe"],
            correctIndex: 1,
            explanation: "A budget is a plan that helps you track how much money you have, how much you spend, and how much you save."
          },
          {
            id: 3,
            text: "Which of these is an example of 'earning' money?",
            options: ["Getting an allowance for doing chores", "Finding money on the street", "Borrowing from a friend", "Using your savings"],
            correctIndex: 0,
            explanation: "Earning money means you work for it, like doing chores, having a job, or providing a service."
          },
          {
            id: 4,
            text: "What is the difference between 'needs' and 'wants'?",
            options: ["There is no difference", "Needs are essential, wants are nice to have", "Wants are more important", "Needs cost less"],
            correctIndex: 1,
            explanation: "Needs are things you must have to survive (food, shelter), while wants are things you'd like to have but aren't essential."
          },
          {
            id: 5,
            text: "Why is it important to save money?",
            options: ["To impress friends", "For emergencies and future goals", "Because parents say so", "To have heavy pockets"],
            correctIndex: 1,
            explanation: "Saving money helps you prepare for unexpected expenses and achieve your future goals."
          },
          {
            id: 6,
            text: "What is interest?",
            options: ["Money you pay to borrow money", "A hobby", "Free money from the government", "Both earning and paying depending on context"],
            correctIndex: 3,
            explanation: "Interest can be money you earn on savings or money you pay when you borrow. It's a percentage calculated on the principal amount."
          },
          {
            id: 7,
            text: "Which is the safest place to keep your money?",
            options: ["In your pocket", "Under your bed", "In a bank account", "In your school locker"],
            correctIndex: 2,
            explanation: "Banks are secure institutions that protect your money and often pay you interest for keeping it there."
          },
          {
            id: 8,
            text: "What does it mean to 'invest' money?",
            options: ["Spend it on clothes", "Put it in a piggy bank", "Use it to potentially earn more money", "Give it away"],
            correctIndex: 2,
            explanation: "Investing means using your money to buy things that may grow in value over time, like stocks or businesses."
          },
          {
            id: 9,
            text: "If you have $20 and save $5, what percentage did you save?",
            options: ["5%", "15%", "25%", "50%"],
            correctIndex: 2,
            explanation: "You saved $5 out of $20, which is 5÷20 = 0.25 = 25%."
          },
          {
            id: 10,
            text: "What is a good habit for managing money?",
            options: ["Spending first, saving if there's any left", "Tracking your spending", "Never checking prices", "Buying everything you see"],
            correctIndex: 1,
            explanation: "Tracking your spending helps you understand where your money goes and make better financial decisions."
          }
        ]
      }),
      game_type: GameType.quiz,
      age_group: AgeGroup.both,
      difficulty_level: 1,
      max_score: 1500
    }
  });
  console.log(`✓ Created: ${moneyBasicsQuiz.title}`);

  console.log('\n✨ Database seeding complete!');
  console.log('\n📊 Summary:');
  console.log(`  • 1 Quiz Game created as a starting point`);
  console.log(`  • Ready for more games to be added!\n`);
}

main()
  .catch((e) => {
    console.error('Error seeding database:', e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
