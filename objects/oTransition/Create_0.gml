//_guiWidth = display_get_gui_width();
//_guiHeight = display_get_gui_height();
//_guiHalfHeight = _guiHeight * 0.5;
//_guiHalfWidth = _guiWidth * 0.5;

enum Transition {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = Transition.INTRO
percent = 1;
target = room;