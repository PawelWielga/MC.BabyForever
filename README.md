# BabyForever Datapack

A Minecraft 1.21.4+ datapack that prevents animals named "pimpek" from growing up.

## Building the Datapack

To create a distributable ZIP file:

**Option 1: Double-click**
- Simply double-click `build.bat`

**Option 2: PowerShell**
```powershell
.\build.ps1
```

This will create `BabyForever-v1.0.zip` in the `Release/` folder.

## Creating GitHub Releases (Automatic)

This repository includes GitHub Actions workflow for automatic release creation.

### First-time setup:

1. **Create repository on GitHub and push your code:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/YourUsername/BabyForever.git
   git push -u origin main
   ```

### Creating a release:

2. **Create and push a version tag:**
   ```bash
   git tag v1.0
   git push origin v1.0
   ```

3. **Done!** GitHub Actions will automatically:
   - ✅ Build the datapack ZIP
   - ✅ Create a GitHub Release
   - ✅ Add download link and installation instructions

### Future updates:

When you make changes:
```bash
git add .
git commit -m "Your changes"
git tag v1.1
git push origin v1.1
```

A new release will appear automatically in the "Releases" section!

For more details, see [RELEASE.md](RELEASE.md).

## Installation

**From ZIP file:**
1. Copy `BabyForever-v1.0.zip` (or `BabyForever` folder) to the `datapacks` folder in your Minecraft world
   - Path: `.minecraft/saves/[world_name]/datapacks/`
2. Start the world or use the `/reload` command if the world is already running
3. Verify the datapack is working with: `/datapack list`

## Usage

1. Find a baby animal
2. Use a nametag with the name "pimpek" on the animal
3. The animal will never grow up!

## How it works

The datapack uses highly optimized checking every **1 minute** (1200 ticks), which virtually eliminates any performance impact on the game.

For each animal named "pimpek":
- Sets the NBT `Age` value to the minimum value (-2147483648)
- Locks the age using `AgeLocked:1b`

This prevents natural growth progression without affecting game performance!

## Supported animals

- Cows, sheep, pigs, chickens
- Rabbits, horses, donkeys, mules, llamas
- Cats, wolves, ocelots, foxes, pandas
- Polar bears, turtles, bees
- Goats, axolotls, hoglins, striders
- Camels, sniffers, armadillos
- Mooshrooms
- Villagers and zombie villagers

## Minecraft Version

Compatible with Minecraft 1.21.4 and newer versions (pack_format: 48)
