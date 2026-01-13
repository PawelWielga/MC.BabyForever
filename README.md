# 🐾 BabyForever Datapack 🐣

Have you ever found a baby cow or a tiny puppy in Minecraft and wished they would just stay small and adorable forever? Now they can! 

**BabyForever** is a lightweight Minecraft datapack that lets you freeze time for your favorite tiny friends. Simply give them a name, and they will stay babies for as long as you want! 💖

---

## 🧸 How to use

There are two ways to keep your animals tiny:

### 1. 🧊 Freeze a Baby ('pimpek')
- **Find a baby animal** (any ageable mob like a cow, pig, wolf, etc.).
- **Grab a nametag** and name it **"pimpek"**.
- **Tag your baby animal!**
- ✨ *Poof!* ✨ Your animal will now stay small and cute forever! (Adults named "pimpek" are not affected).

### 2. ⏳ Rejuvenate an Adult ('flux')
- **Find any animal** (even a fully grown adult!).
- **Grab a nametag** and name it **"flux"**.
- **Tag the animal!**
- ⚡ *Zap!* ⚡ The animal will immediately turn into a baby, its name will change to **"pimpek"**, and it will stay a baby forever!

---

## 📥 Installation

**From ZIP file:**
1. Download the latest `BabyForever.zip` from [Releases](../../releases).
2. Copy it to the `datapacks` folder in your Minecraft world:
   - Path: `.minecraft/saves/[world_name]/datapacks/`
3. Start the world or use the `/reload` command if the world is already running.
4. Verify the datapack is loaded with: `/datapack list`

## ⚙️ TECHNICAL STUFF

### How it works
The datapack uses a highly optimized system that checks your animals once every **1 second** (20 ticks). This ensures nametags take effect almost instantly while maintaining **zero impact** on your game's performance! 🚀

**Behaviors:**
- **"pimpek" (on babies)**: Sets their internal `Age` to the minimum value and sets `AgeLocked:1b`.
- **"flux" (on anyone)**: Forces `Age` to minimum, sets `AgeLocked:1b`, and changes `CustomName` to "pimpek".

### Supported animals
- 🐄 Cows, Mooshrooms
- 🐷 Pigs, Sheep, Chickens, Piglins
- 🐇 Rabbits
- 🐎 Horses, Donkeys, Mules
- 🦙 Llamas, Camels
- 🐕 Wolves, Cats, Ocelots, Foxes
- 🐼 Pandas, Polar Bears
- 🐢 Turtles, 🐝 Bees, 🐸 Frogs, 🧊 Tadpoles
- 🐐 Goats, 🐢 Armadillos
- 🐈 Axolotls
- 👹 Hoglins, Zoglins, Striders
- 🐘 Sniffers
- 👨‍🌾 Villagers and Zombie Villagers

### Minecraft Version
Compatible with **Minecraft 1.21.4** and newer versions (pack_format: 48).

---
*For building instructions and deployment guides, please see [RELEASE.md](RELEASE.md).*
