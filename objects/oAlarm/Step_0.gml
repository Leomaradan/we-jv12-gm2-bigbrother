/// @description Insert description here
// You can write your code in this editor

if(started) {
	alarmTimer -= detectionSpeed;

	if(alarmTimer <= 0) {
		audio_play_sound(exotic_diminish, 10, false);
		room_restart();	
	}

}
