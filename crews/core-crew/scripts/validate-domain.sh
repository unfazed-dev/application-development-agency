#!/bin/bash
set -e
echo "==> Validating domain layer..."
if [ -f Cargo.toml ]; then
    cargo check --lib 2>&1
    echo "==> Domain layer check passed"
else
    echo "==> No Rust project found — skipping cargo check"
fi
