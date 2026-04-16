#!/bin/bash

# cd /home/anastasia/backend
export PATH="$HOME/.local/bin:$PATH"
uv sync
docker compose up -d
sudo systemctl restart gunicorn || echo "gunicorn not found"
echo "Deploy OK: \$(date)"
