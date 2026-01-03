#!/bin/bash

echo "🔍 Checking environment variables..."
echo ""

MISSING=()
OPTIONAL_MISSING=()

# Required variables
check_required() {
  local var_name="$1"
  if [ -z "${!var_name}" ]; then
    MISSING+=("$var_name")
    echo "❌ $var_name - MISSING (required)"
  else
    echo "✅ $var_name - Set"
  fi
}

# Optional variables
check_optional() {
  local var_name="$1"
  if [ -z "${!var_name}" ]; then
    OPTIONAL_MISSING+=("$var_name")
    echo "⚠️  $var_name - Not set (optional)"
  else
    echo "✅ $var_name - Set"
  fi
}

echo "Database variables:"
check_required "POSTGRES_URL_NON_POOLING"
check_optional "DATABASE_URL"
check_optional "POSTGRES_URL"
echo ""

echo "OAuth variables (Google):"
check_required "GOOGLE_CLIENT_ID"
check_required "GOOGLE_CLIENT_SECRET"
echo ""

echo "Application variables:"
check_required "NEXT_PUBLIC_APP_URL"
check_required "JWT_SECRET"
echo ""

echo "Optional variables:"
check_optional "APPLE_CLIENT_ID"
check_optional "APPLE_TEAM_ID"
check_optional "APPLE_KEY_ID"
check_optional "APPLE_PRIVATE_KEY"
check_optional "ENCRYPTION_KEY"
check_optional "OPENAI_API_KEY"
echo ""

# Summary
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ ${#MISSING[@]} -eq 0 ]; then
  echo "✅ All required environment variables are set!"
  echo "   You can proceed with deployment."
else
  echo "❌ Missing ${#MISSING[@]} required variable(s):"
  for var in "${MISSING[@]}"; do
    echo "   - $var"
  done
  echo ""
  echo "   Add these in Vercel Dashboard before deployment."
  exit 1
fi

if [ ${#OPTIONAL_MISSING[@]} -gt 0 ]; then
  echo ""
  echo "ℹ️  ${#OPTIONAL_MISSING[@]} optional variable(s) not set:"
  for var in "${OPTIONAL_MISSING[@]}"; do
    echo "   - $var"
  done
  echo "   These can be added later if needed."
fi
