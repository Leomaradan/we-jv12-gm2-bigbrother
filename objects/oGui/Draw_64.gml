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

draw_sprite(sCameraOverlay, animationFrame, 0, 0);
//effect_create_above()

with(oPlayer) {
	
	var maxIndexActive = array_length(currentCamerasObject);
	
	for(var index = 0; index < 12; index++) {
		
		var drawY = floor(index / 2) * 100;
		var drawX = ((index % 2) * 100) + 600;
		
	
		if(index < maxIndexActive) {
			draw_sprite_stretched(sCameraOverlaySmall, animationFrame, drawX, drawY, 100, 100);
		} else {
			draw_sprite_stretched(sCameraOverlayOffSmall, animationFrame, drawX, drawY, 100, 100);
		}
	}
	
	/*array_foreach(currentCamerasObject, function(element, index) {

		
	})*/


}