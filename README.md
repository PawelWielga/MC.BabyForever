# 🐾 BabyForever Datapack 🐣

Have you ever found a baby cow or a tiny puppy in Minecraft and wished they would just stay small and adorable forever? Now they can! 

**BabyForever** is a lightweight Minecraft datapack that lets you freeze time for your favorite tiny friends. Simply give them a name, and they will stay babies for as long as you want! 💖

---

## 🧸 How to use

1. **Find a baby animal** (any ageable mob like a cow, pig, wolf, etc.).
2. **Grab a nametag** and name it **"pimpek"**.
3. **Tag your baby animal!**
4. ✨ *Poof!* ✨ Your animal will now stay small and cute forever!

## 📥 Installation

**From ZIP file:**
1. Download the latest `BabyForever.zip` from [Releases](../../releases).
2. Copy it to the `datapacks` folder in your Minecraft world:
   - Path: `.minecraft/saves/[world_name]/datapacks/`
3. Start the world or use the `/reload` command if the world is already running.
4. Verify the datapack is loaded with: `/datapack list`

## ⚙️ TECHNICAL STUFF

### How it works
The datapack uses a highly optimized system that checks your animals only once every **1 minute** (1200 ticks). This means it has **zero impact** on your game's performance! 🚀

For each animal named "pimpek":
- Sets their internal `Age` to the minimum possible value.
- Locks their age using the `AgeLocked` tag.

### Supported animals
- 🐄 Cows, Mooshrooms
- 🐷 Pigs, Sheep, Chickens
- 🐇 Rabbits
- 🐎 Horses, Donkeys, Mules
- 🦙 Llamas, Camels
- 🐕 Wolves, Cats, Ocelots, Foxes
- 🐼 Pandas, Polar Bears
- 🐢 Turtles, 🐝 Bees, 🐸 Frogs
- 🐐 Goats, 🐢 Armadillos
- 🐈 Axolotls
- 👹 Hoglins, Striders
- 🐘 Sniffers
- 👨‍🌾 Villagers and Zombie Villagers

### Minecraft Version
Compatible with **Minecraft 1.21.4** and newer versions (pack_format: 48).

---
*For building instructions and deployment guides, please see [RELEASE.md](RELEASE.md).*
