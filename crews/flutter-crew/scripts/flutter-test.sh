#!/bin/bash
set -e
echo "==> Running Flutter tests..."
if [ -f pubspec.yaml ]; then
    flutter analyze 2>&1
    flutter test 2>&1
    echo "==> Flutter tests passed"
else
    echo "==> No Flutter project found — skipping tests"
fi
