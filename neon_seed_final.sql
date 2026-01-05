-- ============================================
-- EDUFIN DATABASE SEED - FINAL CORRECTED VERSION
-- Execute this in Neon SQL Editor
-- ============================================

-- Clean existing data (if any)
DELETE FROM "UserLessonProgress";
DELETE FROM "GameScore";
DELETE FROM "Leaderboard";
DELETE FROM "Lesson";
DELETE FROM "Game";

-- ============================================
-- INSERT LESSONS
-- ============================================

INSERT INTO "Lesson" (id, title, description, content, difficulty_level, age_group, display_order, estimated_minutes, created_at, updated_at) VALUES
('lesson-1', 'What is Money?', 'Learn about the concept of money and why we use it', 'Money is something we use to buy things we need and want. Long ago, people traded things directly, called bartering. Money makes trading easier because everyone agrees it has value, it does not go bad, and it is easy to carry.', 1, 'both', 1, 10, NOW(), NOW()),
('lesson-2', 'Counting Money', 'Practice identifying and counting coins and bills', 'Being able to count money is an important skill. In the US, we have pennies (1 cent), nickels (5 cents), dimes (10 cents), and quarters (25 cents). To count money: sort by type, count each type, and add them up. Practice counting money every day to get better!', 1, 'kid', 2, 15, NOW(), NOW()),
('lesson-3', 'Earning Money', 'Learn about different ways people earn money', 'Money does not grow on trees! People work to earn money. Kids can earn money by doing chores, pet sitting, or yard work. Adults earn money through jobs, self-employment, or freelancing. When you work, you get paid hourly, salary, commission, or tips.', 2, 'both', 3, 12, NOW(), NOW()),
('lesson-4', 'Needs vs Wants', 'Understanding the difference between needs and wants', 'One of the most important money skills is knowing the difference between needs and wants. Needs are things you must have to live: food, water, shelter, clothing, and healthcare. Wants are things you would like to have but do not need: toys, games, candy, and entertainment. Take care of needs first, save some money, then think about wants.', 2, 'both', 4, 10, NOW(), NOW()),
('lesson-5', 'Saving Money', 'Why and how to save money for future goals', 'Saving money means keeping some instead of spending it all. Saving helps you buy bigger things, handle emergencies, reach goals, and feel secure. For kids: use a piggy bank, save part of your allowance. For adults: open a savings account, save 10-20% of each paycheck, and build an emergency fund. Even small amounts add up!', 2, 'both', 5, 15, NOW(), NOW()),
('lesson-6', 'Creating a Budget', 'Learn how to create and stick to a monthly budget', 'A budget is a plan for your money. It helps you track income and expenses so you do not overspend. Steps: 1) Calculate income, 2) List fixed expenses, 3) Estimate variable expenses, 4) Set savings goals. Popular methods include zero-based budget, 50/30/20 rule, and envelope system. Track everything and review monthly.', 3, 'adult', 6, 20, NOW(), NOW()),
('lesson-7', 'Understanding Credit', 'Learn about credit scores, credit cards, and borrowing', 'Credit is borrowing money with a promise to pay it back. Your credit score (300-850) measures how trustworthy you are with borrowed money. Payment history is 35% of your score. Credit cards can help build credit but have high interest rates. Golden rules: pay in full every month, keep utilization below 30%, and never miss a payment.', 4, 'adult', 7, 18, NOW(), NOW());

-- ============================================
-- INSERT GAMES (Note: Game table only has created_at, no updated_at)
-- ============================================

INSERT INTO "Game" (id, title, description, game_type, age_group, difficulty_level, max_score, created_at) VALUES
('game-1', 'Money Math Challenge', 'Test your skills at counting coins and making change', 'quiz', 'kid', 2, 100, NOW()),
('game-2', 'Lemonade Stand', 'Run your own lemonade stand and learn about profit', 'simulation', 'kid', 2, 100, NOW()),
('game-3', 'Coin Sorter', 'Sort coins and make exact change as fast as you can', 'puzzle', 'kid', 1, 100, NOW()),
('game-4', 'Birthday Money Decision', 'You got birthday money! What will you do with it?', 'scenario', 'kid', 1, 100, NOW()),
('game-5', 'Budget Master', 'Create and manage a monthly budget challenge', 'simulation', 'adult', 3, 100, NOW()),
('game-6', 'Investment Matcher', 'Match investment types to their risk levels', 'puzzle', 'adult', 3, 100, NOW()),
('game-7', 'Credit Score Quiz', 'Test your knowledge of credit scores and credit cards', 'quiz', 'adult', 3, 100, NOW()),
('game-8', 'Emergency Fund Scenario', 'Navigate unexpected expenses and make smart financial decisions', 'scenario', 'adult', 4, 100, NOW());

-- ============================================
-- VERIFICATION QUERIES
-- ============================================

-- Check lessons count
SELECT COUNT(*) as lesson_count FROM "Lesson";

-- Check games count
SELECT COUNT(*) as game_count FROM "Game";

-- Show all lessons
SELECT id, title, age_group, difficulty_level FROM "Lesson" ORDER BY display_order;

-- Show all games
SELECT id, title, game_type, age_group, difficulty_level FROM "Game";
