#!/bin/bash

DEPLOYMENT_URL="${1:-https://edufin-02-r3q2jw7e1-juanluiscc-gifs-projects.vercel.app}"

echo "🔍 Verifying deployment at: $DEPLOYMENT_URL"
echo ""

TESTS_PASSED=0
TESTS_FAILED=0

# Test function
test_url() {
  local test_name="$1"
  local url="$2"
  local expected_status="${3:-200}"

  echo -n "Testing: $test_name ... "

  response=$(curl -s -o /dev/null -w "%{http_code}" -L "$url" 2>/dev/null)

  if [ "$response" -eq "$expected_status" ]; then
    echo "✅ PASS (HTTP $response)"
    TESTS_PASSED=$((TESTS_PASSED + 1))
  else
    echo "❌ FAIL (HTTP $response, expected $expected_status)"
    TESTS_FAILED=$((TESTS_FAILED + 1))
  fi
}

# Run tests
echo "1️⃣  Homepage Tests"
test_url "Homepage (English)" "$DEPLOYMENT_URL/en"
test_url "Homepage (Spanish)" "$DEPLOYMENT_URL/es"
test_url "Homepage (French)" "$DEPLOYMENT_URL/fr"
test_url "Homepage (German)" "$DEPLOYMENT_URL/de"
test_url "Homepage (Japanese)" "$DEPLOYMENT_URL/ja"
test_url "Homepage (Chinese)" "$DEPLOYMENT_URL/zh"
echo ""

echo "2️⃣  Navigation Tests"
test_url "Games page" "$DEPLOYMENT_URL/en/games"
test_url "Learn page" "$DEPLOYMENT_URL/en/learn"
test_url "Leaderboard page" "$DEPLOYMENT_URL/en/leaderboard"
test_url "Expenses page" "$DEPLOYMENT_URL/en/expenses"
test_url "Integrations page" "$DEPLOYMENT_URL/en/integrations"
echo ""

echo "3️⃣  API Routes Tests"
test_url "Google OAuth endpoint" "$DEPLOYMENT_URL/api/auth/google" "302"
test_url "Games list API" "$DEPLOYMENT_URL/api/games/list"
test_url "Lessons categories API" "$DEPLOYMENT_URL/api/lessons/categories"
echo ""

# Summary
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Results: $TESTS_PASSED passed, $TESTS_FAILED failed"
echo ""

if [ $TESTS_FAILED -eq 0 ]; then
  echo "✅ All tests passed! Deployment is healthy."
  exit 0
else
  echo "❌ Some tests failed. Review the failures above."
  exit 1
fi
