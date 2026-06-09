#!/bin/bash
set -e
echo "==> Generating nginx configuration..."
echo "server { listen 80; location / { proxy_pass http://localhost:3000; } }" > nginx.conf
echo "==> nginx config generated"
