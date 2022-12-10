/// @description Insert description here
// You can write your code in this editor


draw_sprite(sCameraOverlay, 0, 0, 0);
//effect_create_above()

with(oPlayer) {
	
	array_foreach(currentCamerasObject, function(element, index) {
		var drawY = floor(index / 2) * 100;
		var drawX = ((index % 2) * 100) + 600;
		draw_sprite_stretched(sCameraOverlaySmall, 0, drawX, drawY, 100, 100);
	})


}