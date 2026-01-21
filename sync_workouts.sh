#!/bin/bash

# GitHub-only sync
REPO_DIR="/home/tomasz-wojcikowski/personal/crossfit"

echo "Syncing $REPO_DIR to GitHub..."
cd "$REPO_DIR"

git add -A

if git diff --cached --quiet; then
    echo "No changes to sync."
    exit 0
fi

git commit -m "Update workouts ($(date +%d\ %b\ %Y))"
git push

echo "Sync completed successfully!"
