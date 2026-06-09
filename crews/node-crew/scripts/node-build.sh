#!/bin/bash
set -e
echo "==> Building Node.js application..."
if [ -f package.json ]; then
    npm ci 2>&1
    npm run build 2>&1
    echo "==> Build complete"
else
    echo "==> No package.json found — skipping build"
fi
