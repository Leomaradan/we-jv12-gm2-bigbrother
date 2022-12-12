# Don't Get Caught! Big Brother is Watching You

This is a prototype of game made during the 12th weekend of game programming for the website Developpez.com. The theme where "play with camera" and "big brother".

The GameJam version is archived on branch https://github.com/Leomaradan/we-jv12-gm2-bigbrother/tree/we-jv12, as I think it must remain accessible

## Gameplay
You control a character in a side-plateformer. You also control the security cameras of each levels. It means that your character can be off-scene, and you need to understand the level geometry with incomplete views.

Each levels had some alarm running, and beining detected reset the level. Beware, some camera increase quickly the detection time!

# Controls:
- `Left Arrow`, `A` or `Q` for walking to left
- `Right Arrow` or `D` for walking to right
- `Space` for jumping
- `Up Arrow`, `W` or `Z` for climbing ladder
- `Down Arrow` or `S` for descending
- `Shift` for using a computer
- `Shift` or `Up Arrow` for using a rope
- Mouse's `Left Click` and `Right Click` for switching cameras


## Engine & Assets
The game use GameMaker Studio 2.3, and my assets has been created with Gimp

### External assets
- Base source for TileSet : https://just-a-cookie.itch.io/idnustrial-platformer-asset-pack
- Keyboard Assets : https://dreammix.itch.io/keyboard-keys-for-ui
- Musics : https://slaleky.itch.io/retro-and-electronic-music-pack
- Pause Menu, because currently I don't know how to do this :) : https://marketplace.yoyogames.com/assets/7514/asset-pause-menu-basic
- Sound Effects : https://marketplace.yoyogames.com/assets/1951/audio-megapack-160-sounds
- USSR Stencil fonts : https://www.dafont.com/ussr-stencil.font
- TV Frame : https://pngimg.com/download/39242

## Roadmap
- More levels. I expect to add ~10 levels for the first version
- Upgraded assets. Some assets must be upgraded, and more animation frame must be added to the character
- The camera / viewport system must be reworked, as the current system are not synced with camera change. Because of that, switching to offline camera show the level for one frame
- Adding options menu:
  - switching between keyboards (maybe with remapping keys for specific layouts)
  - language switch (french or english)
  - fullscreen toggle
