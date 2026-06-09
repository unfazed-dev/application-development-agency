#!/bin/bash
set -e
echo "==> Running linters..."
if [ -f Cargo.toml ]; then
    cargo clippy -- -D warnings 2>&1
    echo "==> Lint passed"
else
    echo "==> No Rust project found — skipping clippy"
fi
