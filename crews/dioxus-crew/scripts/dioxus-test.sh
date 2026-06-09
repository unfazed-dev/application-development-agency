#!/bin/bash
set -e
echo "==> Running Dioxus tests..."
if [ -f Cargo.toml ]; then
    cargo test 2>&1
    cargo clippy -- -D warnings 2>&1
    echo "==> Dioxus tests passed"
else
    echo "==> No Rust project found — skipping tests"
fi
