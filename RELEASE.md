# GitHub Release Guide

This document explains how to create releases for the BabyForever datapack on GitHub.

## Automatic Release (Recommended)

The repository includes a GitHub Actions workflow that automatically builds and creates releases.

### Steps:

1. **Commit and push your changes:**
   ```bash
   git add .
   git commit -m "Update datapack"
   git push
   ```

2. **Create and push a version tag:**
   ```bash
   git tag v1.0
   git push origin v1.0
   ```

3. **Done!** GitHub Actions will automatically:
   - Build the datapack ZIP
   - Create a GitHub Release
   - Attach the ZIP file for download

### Version Naming:

Use semantic versioning:
- `v1.0` - Initial release
- `v1.1` - Minor update (new features, optimizations)
- `v1.0.1` - Patch (bug fixes)
- `v2.0` - Major update (breaking changes)

## Manual Release

If you prefer to create releases manually:

1. **Build the datapack locally:**
   ```bash
   .\build.bat
   ```

2. **Go to GitHub:**
   - Navigate to your repository
   - Click "Releases" (right sidebar)
   - Click "Create a new release"

3. **Fill in the release form:**
   - **Tag:** Create a new tag (e.g., `v1.0`)
   - **Title:** `BabyForever v1.0`
   - **Description:** Add release notes
   - **Attach files:** Upload `Release/BabyForever-v1.0.zip`

4. **Publish release**

## Example Release Notes Template

```markdown
## BabyForever v1.0

A Minecraft 1.21.4+ datapack that prevents animals named "pimpek" from growing up.

### Features
- Prevents animals named "pimpek" from aging
- Optimized performance (checks only once per minute)
- Supports all ageable mobs in Minecraft 1.21.4

### Installation
1. Download `BabyForever-v1.0.zip`
2. Place it in `.minecraft/saves/[world_name]/datapacks/`
3. Run `/reload` in-game

### Changelog
- Initial release
```

## Updating Releases

To create a new release:

1. Make your changes to the datapack
2. Update version in file names if needed
3. Commit changes
4. Create and push a new tag:
   ```bash
   git tag v1.1
   git push origin v1.1
   ```

GitHub Actions will handle the rest!
