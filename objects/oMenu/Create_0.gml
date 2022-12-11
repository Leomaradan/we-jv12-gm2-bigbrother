/// @description GUI/Vars/Menu setup

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiXMargin = 32;
guiYMargin = 128;

menuX = guiWidth + 200;
menuY = guiHeight - guiYMargin;
menuXTarget = guiWidth - guiXMargin;
menuSpeed = 25; // lower is faster;
menuFont = fMenu;
menuItemHeight = font_get_size(menuFont);
menuCommitted = -1;
menuControl = true;

//menu[2] = "New Game";
//menu[1] = "Options";
//menu[0] = "Quit";

// Inverse order !
menu = [
	"Quit",
	"New Game"
]

menuItems = array_length(menu);

menuTop = menuY - ((menuItemHeight * 1.5) * menuItems);

menuCursor = menuItems - 1;

audio_play_sound(snMusicMenu, 10, true, 0.2);
