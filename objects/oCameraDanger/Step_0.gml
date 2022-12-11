event_inherited();

if(instance_exists(oAlarm) && status == CameraStatus.ACTIVE) {
	if(place_meeting(x, y, oPlayer)) {
		if(!alarmSoundStarted) {
			alarmSoundStarted = true;
			audio_play_sound(snAlertCamera, 10, true);
		}
		with(oAlarm) {
			detectionSpeed = other.cameraDetectionSpeed;
		}
	} else {
		if(alarmSoundStarted) {
			audio_stop_sound(snAlertCamera);	
		}
		with(oAlarm) {
			detectionSpeed = 1;
		}	
	}
}