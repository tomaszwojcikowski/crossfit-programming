#!/bin/bash

# Configuration
REPO_DIR="/home/tomasz-wojcikowski/personal/crossfit"

cd "$REPO_DIR" || exit

# Ensure we are on the main branch
git checkout main 2>/dev/null || git checkout master

# Check for changes
if [[ -n $(git status -s) ]]; then
    echo "Changes detected. Syncing to GitHub..."
    
    # Add all changes
    git add -A
    
    # Commit with timestamp
    git commit -m "Update workouts and documentation ($(date +'%Y-%m-%d %H:%M'))"
    
    # Push to GitHub
    git push origin $(git branch --show-current)
    
    echo "Sync complete!"
else
    echo "No changes to sync."
fi
