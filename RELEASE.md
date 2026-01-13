# 📦 Release & Development Guide

This document explains how to build the BabyForever datapack locally and how to manage its distribution on GitHub.

## 🛠️ Building Locally

If you want to create a ZIP file manually from the source code, use the provided build scripts.

### Option 1: Double-click (Windows)
- Simply double-click `build.bat`. This is a wrapper for the PowerShell script.

### Option 2: PowerShell
Run the script directly from your terminal:
```powershell
.\build.ps1
```

**What it does:**
- Validates that `pack.mcmeta` and `data/` exist.
- Creates a `Release/` folder if it doesn't exist.
- Packages everything into `Release/BabyForever-v1.0.zip`.

---

## 🚀 GitHub Actions (Automatic Release)

We use a GitHub Actions workflow to automatically build and publish releases whenever a version tag is pushed.

### First-time Repository Setup:
If you haven't pushed the code to GitHub yet:
1. **Initialize and push:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/YourUsername/BabyForever.git
   git push -u origin main
   ```
2. **Enable Permissions:**
   Ensure your GitHub Actions have write permissions:
   - Go to **Settings** -> **Actions** -> **General**.
   - Set **Workflow permissions** to **Read and write permissions**.

### Creating a new Release:
1. **Create and push a version tag:**
   ```bash
   git tag v1.0
   git push origin v1.0
   ```
2. **Check the "Actions" tab:** GitHub will automatically build the ZIP and create a new Release with the file attached! ✨

---

## ✍️ Manual GitHub Release

If you prefer to create releases via the GitHub web interface:

1. **Build the ZIP** using the local build scripts described above.
2. **Go to GitHub** and navigate to your repository's "Releases" section.
3. Click **"Draft a new release"**.
4. Create a new tag (e.g., `v1.0`).
5. Upload the ZIP file found in the `Release/` folder.
6. **Publish Release**.

## 🔄 Versioning Strategy
We recommend using [Semantic Versioning](https://semver.org/):
- `v1.0` - Initial release.
- `v1.1` - New features or optimizations.
- `v1.0.1` - Bug fixes.
- `v2.0` - Major changes or breaking updates.
