#!/bin/bash

# 🏋️  CrossFit Programming Wiki Publisher
# Simple one-liner to push updates to GitHub Wiki
# Setup: Already complete. Just run this to publish changes.

set -e

REPO_OWNER="tomaszwojcikowski"
REPO_NAME="crossfit-programming"
WIKI_DIR="/tmp/crossfit-wiki-publish"
WIKI_URL="https://github.com/${REPO_OWNER}/${REPO_NAME}.wiki.git"

echo "🚀 Publishing updates to CrossFit Programming Wiki..."
echo ""

# Ensure wiki repo exists
if ! git ls-remote "$WIKI_URL" >/dev/null 2>&1; then
    echo "❗ Wiki repo not initialized yet."
    echo "Open this URL and create the first page (any title):"
    echo "   https://github.com/${REPO_OWNER}/${REPO_NAME}/wiki"
    echo "Then rerun: ./publish_wiki.sh"
    exit 1
fi

# Clone/update wiki repo
if [ -d "$WIKI_DIR" ]; then
    echo "📂 Updating wiki directory..."
    cd "$WIKI_DIR"
    git pull origin master
else
    echo "📂 Cloning wiki repository..."
    git clone "$WIKI_URL" "$WIKI_DIR"
    cd "$WIKI_DIR"
    git config user.email "tomasz@example.com"
    git config user.name "Tomasz Wojcikowski"
fi

# Copy updated markdown files
echo ""
echo "📋 Copying updated files..."
cp /home/tomasz-wojcikowski/personal/crossfit/week_04_2026_warmups_cooldowns.md .
cp /home/tomasz-wojcikowski/personal/crossfit/week_05_2026_warmups_cooldowns.md . 2>/dev/null || true
cp /home/tomasz-wojcikowski/personal/crossfit/week_06_2026_warmups_cooldowns.md . 2>/dev/null || true
cp /home/tomasz-wojcikowski/personal/crossfit/agents.md .
cp /home/tomasz-wojcikowski/personal/crossfit/PAP_PAPE_Research.md ./pap_pape_research.md 2>/dev/null || true
cp /home/tomasz-wojcikowski/personal/crossfit/Coach_Quickguide.md ./coach_quickguide.md 2>/dev/null || true
cp /home/tomasz-wojcikowski/personal/crossfit/The_Science_and_Art_of_HIFT.md ./the_science_and_art_of_hift.md 2>/dev/null || true

# Commit and push
echo ""
echo "📤 Committing and pushing to wiki..."

if git diff --quiet; then
    echo "✅ No changes to publish"
    exit 0
fi

git add .
git commit -m "Update: CrossFit programming docs ($(date +%d\ %b\ %Y))"
git push origin master

echo ""
echo "=================================================="
echo "✨ Wiki Updated Successfully!"
echo "=================================================="
echo ""
echo "🌐 View at:"
echo "   https://github.com/${REPO_OWNER}/${REPO_NAME}/wiki"
echo ""
