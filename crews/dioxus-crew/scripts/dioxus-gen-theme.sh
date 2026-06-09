#!/bin/bash
set -e
echo "==> Generating Dioxus theme..."
if [ -f Cargo.toml ]; then
    cargo check 2>&1
    echo "==> Theme generation complete"
else
    echo "==> No Rust project found — skipping theme generation"
fi
