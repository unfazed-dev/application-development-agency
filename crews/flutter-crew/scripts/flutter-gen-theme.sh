#!/bin/bash
set -e
echo "==> Generating Flutter theme..."
if [ -f pubspec.yaml ]; then
    flutter pub get 2>&1
    echo "==> Theme generation complete"
else
    echo "==> No Flutter project found — skipping theme generation"
fi
