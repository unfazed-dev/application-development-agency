#!/bin/bash
set -e
echo "==> Running Node.js tests..."
if [ -f package.json ]; then
    npm test 2>&1
    npm run lint 2>&1
    echo "==> Node.js tests passed"
else
    echo "==> No package.json found — skipping tests"
fi
