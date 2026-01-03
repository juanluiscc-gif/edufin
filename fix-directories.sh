#!/bin/bash
set -e  # Exit on any error

echo "🔧 Fixing directory names (removing trailing spaces)..."
cd /workspace/cmjxrs873000ziloodjgwbxk0/edufin

# Count for progress tracking
TOTAL=33
COUNT=0

# Function to rename with progress
rename_dir() {
  local old_path="$1"
  local new_path="$2"
  if [ -d "$old_path" ]; then
    mv "$old_path" "$new_path"
    COUNT=$((COUNT + 1))
    echo "✓ [$COUNT/$TOTAL] Renamed: $new_path"
  else
    echo "⚠ Skipped (not found): $old_path"
  fi
}

# Rename in order: deepest directories first
echo ""
echo "📁 Fixing API route directories..."
rename_dir "src/app/api/auth/apple " "src/app/api/auth/apple"
rename_dir "src/app/api/auth/callback " "src/app/api/auth/callback"
rename_dir "src/app/api/auth/complete-signup " "src/app/api/auth/complete-signup"
rename_dir "src/app/api/auth/google " "src/app/api/auth/google"
rename_dir "src/app/api/expenses/stats " "src/app/api/expenses/stats"
rename_dir "src/app/api/expenses " "src/app/api/expenses"
rename_dir "src/app/api/games/[gameId] " "src/app/api/games/[gameId]"
rename_dir "src/app/api/games/list " "src/app/api/games/list"
rename_dir "src/app/api/games/submit " "src/app/api/games/submit"
rename_dir "src/app/api/integrations/[integrationId] " "src/app/api/integrations/[integrationId]"
rename_dir "src/app/api/integrations " "src/app/api/integrations"
rename_dir "src/app/api/leaderboard/[gameId] " "src/app/api/leaderboard/[gameId]"
rename_dir "src/app/api/leaderboard/global " "src/app/api/leaderboard/global"
rename_dir "src/app/api/lessons/[lessonId] " "src/app/api/lessons/[lessonId]"
rename_dir "src/app/api/lessons/categories " "src/app/api/lessons/categories"
rename_dir "src/app/api/lessons/stats " "src/app/api/lessons/stats"

echo ""
echo "📁 Fixing page directories..."
rename_dir "src/app/[locale]/dashboard " "src/app/[locale]/dashboard"
rename_dir "src/app/[locale]/expenses " "src/app/[locale]/expenses"
rename_dir "src/app/[locale]/games " "src/app/[locale]/games"
rename_dir "src/app/[locale]/integrations " "src/app/[locale]/integrations"
rename_dir "src/app/[locale]/leaderboard " "src/app/[locale]/leaderboard"
rename_dir "src/app/[locale]/learn " "src/app/[locale]/learn"
rename_dir "src/app/[locale]/profile " "src/app/[locale]/profile"

echo ""
echo "📁 Fixing lib directory..."
rename_dir "src/lib " "src/lib"

echo ""
echo "📁 Fixing additional directories found..."
rename_dir "src/app/[locale]/auth/signup " "src/app/[locale]/auth/signup"
rename_dir "src/app/[locale]/games/[gameId] " "src/app/[locale]/games/[gameId]"
rename_dir "src/app/[locale]/learn/[categoryId] " "src/app/[locale]/learn/[categoryId]"
rename_dir "src/app/[locale]/learn/lesson/[lessonId] " "src/app/[locale]/learn/lesson/[lessonId]"
rename_dir "src/app/api/auth/test-config " "src/app/api/auth/test-config"
rename_dir "src/app/api/lessons/[lessonId]/progress " "src/app/api/lessons/[lessonId]/progress"
rename_dir "src/app/api/lessons/category/[categoryId] " "src/app/api/lessons/category/[categoryId]"
rename_dir "src/components/lessons " "src/components/lessons"
rename_dir "src/components/games " "src/components/games"

echo ""
echo "✅ All directories fixed! ($COUNT/$TOTAL completed)"
echo ""
echo "🔍 Verifying no directories with trailing spaces remain..."
REMAINING=$(find src -type d -name '* ' 2>/dev/null | wc -l)
if [ "$REMAINING" -eq 0 ]; then
  echo "✅ Verification passed: No trailing spaces found"
else
  echo "⚠️  Warning: Found $REMAINING directories still with trailing spaces"
  find src -type d -name '* '
fi

echo ""
echo "📝 Next steps:"
echo "   1. Review changes: git status"
echo "   2. Test build locally: npm run build"
echo "   3. Commit changes: git add . && git commit -m 'fix: remove trailing spaces from directory names'"
echo "   4. Push to trigger Vercel deployment: git push origin main"
