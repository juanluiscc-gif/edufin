-- Remove foreign key constraints from ContentTranslation table
-- These constraints prevent inserting translations when content IDs don't match exactly
-- Since the relations are optional (nullable) in Prisma schema, we can safely remove them

ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_lesson_fkey";

ALTER TABLE "ContentTranslation"
DROP CONSTRAINT IF EXISTS "ContentTranslation_game_fkey";

SELECT 'Foreign key constraints removed successfully!' as message;
