// Item ease in
menuX += (menuXTarget - menuX) / menuSpeed;

function enterGame() {
	menuXTarget = guiWidth + 200	;
	menuCommitted = menuCursor;
	// screenShaker(4,30);
	menuControl = false;
	audio_stop_sound(snMusicMenu);
	audio_play_sound(alert_echofail, 10, false);
	audio_play_sound(snMusic, 10, true, 0.2);
}

// Keyboard Controls
if(menuControl) {
	if(keyboard_check_pressed(vk_up)) {
		audio_play_sound(click_wood_bleep, 10, false);
		menuCursor++;	
		if(menuCursor >= menuItems) {
			menuCursor = 0;	
		}
	}
	
	if(keyboard_check_pressed(vk_down)) {
		menuCursor--;	
		audio_play_sound(click_wood_bleep, 10, false);
		if(menuCursor < 0) {
			menuCursor = menuItems - 1;	
		}
	}
	
	if(keyboard_check_pressed(vk_enter)) {
		enterGame();
	}
	
	var mouseYGui = device_mouse_y_to_gui(0);
	
	if(mouseYGui < menuY && mouseYGui > menuTop) {
		var newMenuCursor = (menuY - mouseYGui) div (menuItemHeight * 1.5);
		if(menuCursor != newMenuCursor) {
			audio_play_sound(click_wood_bleep, 10, false);
			menuCursor = newMenuCursor;
		}
		
		if(mouse_check_button_pressed(mb_left)) {
			enterGame();
		}
	}
}

if(menuX > guiWidth + 150 && menuCommitted != -1) {
	switch(menuCommitted) {
		case 1: 
		default: 	
			slideTransition(Transition.GOTO, rTuto1); 
			break;
		case 0:
			game_end();
			break;
	}
}