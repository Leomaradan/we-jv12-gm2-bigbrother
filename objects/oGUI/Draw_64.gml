/// @description Insert description here
// You can write your code in this editor

var animationFrame = 0;

frameCounter++;

if(frameCounter >= 60) {
	frameCounter = 0;	
}

if(frameCounter > 29) {
	animationFrame = 1	
}


//effect_create_above()

with(oPlayer) {
	var activeCameraObject = currentCamerasObject[currentCameraIndex];
	
	if(activeCameraObject.status == CameraStatus.ACTIVE) {
		draw_sprite(sCameraOverlay, animationFrame, 0, 0);
	} else {
		draw_sprite(sCameraOff, animationFrame, 0, 0);
	}
	
	var maxIndexActive = array_length(currentCamerasObject);
	
	for(var index = 0; index < 10; index++) {
		
		var drawY = floor(index / 2) * 100;
		var drawX = ((index % 2) * 100) + 600;
		
	
		if(index < maxIndexActive) {
			var camera = currentCamerasObject[index];
			if(camera.status == CameraStatus.ACTIVE) {
				draw_sprite_stretched(sCameraOverlaySmall, animationFrame, drawX, drawY, 100, 100);
			} else {
				draw_sprite_stretched(sCameraOffSmall, animationFrame, drawX, drawY, 100, 100);
			}
		} else {
			draw_sprite_stretched(sCameraShutdownSmall, animationFrame, drawX, drawY, 100, 100);
		}
	}
	
	draw_set_color(c_black);
	draw_rectangle(600, 500, 800, 600, false);
}