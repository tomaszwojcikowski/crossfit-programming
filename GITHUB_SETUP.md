# GitHub Wiki Publisher Setup Guide

## Prerequisites

1. **GitHub CLI** (`gh`) installed and authenticated
   ```bash
   # Install (macOS)
   brew install gh
   
   # Authenticate
   gh auth login
   ```

2. **Git** installed and configured
   ```bash
   git config --global user.email "your-email@example.com"
   git config --global user.name "Your Name"
   ```

## Quick Start

### Option 1: Automated Script (Recommended)

```bash
cd /home/tomasz-wojcikowski/personal/crossfit
chmod +x publish_to_github.sh
./publish_to_github.sh
```

This script:
- ✅ Creates a new public GitHub repo (`crossfit-programming`)
- ✅ Pushes all markdown files
- ✅ Initializes GitHub Wiki
- ✅ Creates Home page with navigation
- ✅ Sets up sidebar for easy browsing
- ✅ Returns wiki URL ready to share

### Option 2: Manual Steps

```bash
# 1. Create repo
gh repo create crossfit-programming --public \
  --description "CrossFit programming guides and weekly workouts" \
  --source=. --remote=origin --push

# 2. Clone wiki
git clone https://github.com/YOUR-USERNAME/crossfit-programming.wiki.git /tmp/wiki-clone
cd /tmp/wiki-clone

# 3. Copy files
cp ../week_04_2026_warmups_cooldowns.md .
cp ../agents.md .
cp ../PAP_PAPE_Research.md .

# 4. Commit and push
git add .
git commit -m "Initial wiki content"
git push origin master
```

## What Gets Published

| File | Wiki Page | Purpose |
|------|-----------|---------|
| `week_04_2026_warmups_cooldowns.md` | Week 04 Workouts | Daily session protocols |
| `agents.md` | Programming Guidelines | Core principles & playbook |
| `PAP_PAPE_Research.md` | PAP/PAPE Research | Timing & templates |
| `Coach_Quickguide.md` | Coach Quickguide | 60-min checklist |
| `The_Science_and_Art_of_HIFT.md` | HIFT Science | Theory & applications |

## Accessing Your Wiki

**After running the script:**
- Wiki URL: `https://github.com/YOUR-USERNAME/crossfit-programming/wiki`
- Mobile URL: Same (GitHub Wiki is mobile-responsive)
- Direct file: `https://github.com/YOUR-USERNAME/crossfit-programming/wiki/week_04_2026_warmups_cooldowns`

## Share with Athletes

```
Send this link to your athletes:
https://github.com/YOUR-USERNAME/crossfit-programming/wiki

They can:
- Bookmark on mobile
- Search with Ctrl+F / Cmd+F
- Read all formats (phone, tablet, desktop)
- Share with training partners
```

## Updates & Maintenance

### Add New Weeks

1. Create new file: `week_05_2026_warmups_cooldowns.md`
2. Update `_Sidebar.md` with new week link
3. Run script again to publish

### Edit Existing Content

1. Modify markdown file locally
2. Run script to push changes
3. Changes appear on wiki within seconds

### Full Sync

```bash
# Pull latest wiki state
git clone --depth 1 https://github.com/YOUR-USERNAME/crossfit-programming.wiki.git
cd crossfit-programming.wiki

# Make updates, then:
git add .
git commit -m "Updates"
git push origin master
```

## Tips for Mobile Athletes

✅ Bookmark the wiki home page  
✅ Download for offline: Use GitHub's download feature  
✅ Zoom/pinch to enlarge on small screens  
✅ Landscape mode for full width on phones  
✅ Search functionality (Ctrl+F / Cmd+F)  

## Troubleshooting

**Script fails: "gh repo create"**
- Ensure: `gh auth login` completed
- Check internet connection

**Wiki doesn't appear**
- Wait 30 seconds for GitHub to initialize
- Refresh page
- Check: Settings → GitHub Pages → Wiki enabled

**Files not updated after push**
- Hard refresh: Ctrl+Shift+R (Windows) or Cmd+Shift+R (Mac)
- Clear browser cache

## Advanced: Custom Wiki Home

Edit the Home page directly on GitHub:
1. Go to: `https://github.com/YOUR-USERNAME/crossfit-programming/wiki`
2. Click "New Page" or edit existing
3. Add custom branding, links, images
4. Save (auto-commits)

---

**Script Location:** `/home/tomasz-wojcikowski/personal/crossfit/publish_to_github.sh`  
**Last Updated:** 21 January 2026
