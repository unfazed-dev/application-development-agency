#!/bin/bash
set -e
echo "==> Running Supabase tests..."
if [ -d supabase/functions ]; then
    for f in supabase/functions/*/; do
        if [ -f "${f}test.ts" ] || [ -f "${f}test.js" ]; then
            deno test "${f}" 2>&1
        fi
    done
    echo "==> Supabase tests passed"
else
    echo "==> No Supabase functions found — skipping tests"
fi
