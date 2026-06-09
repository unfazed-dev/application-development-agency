#!/bin/bash
set -e
echo "==> Running Supabase migrations..."
if command -v supabase &> /dev/null; then
    supabase db push 2>&1
    echo "==> Migrations applied"
else
    echo "==> Supabase CLI not found — skipping migrations"
fi
