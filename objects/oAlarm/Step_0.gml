/// @description Insert description here
// You can write your code in this editor

if(started) {
	alarmTimer -= detectionSpeed;

	if(alarmTimer <= 0) {
		audio_stop_sound(snAlertCamera);
		audio_play_sound(snGameOver, 10, false);
		room_restart();	
	}

}
