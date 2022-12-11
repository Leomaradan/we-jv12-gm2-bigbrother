/// @description GUI/Vars/Menu setup

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = guiWidth + 200;
menuY = guiHeight - guiMargin;
menuXTarget = guiWidth - guiMargin;
menuSpeed = 25; // lower is faster;
menuFont = fMenu;
menuItemHeight = font_get_size(menuFont);
menuCommitted = -1;
menuControl = true;

//menu[2] = "New Game";
//menu[1] = "Options";
//menu[0] = "Quit";

menu = [
	"Quit",
	"New Game"
]


menuItems = array_length(menu);
menuCursor = menuItems - 1;
