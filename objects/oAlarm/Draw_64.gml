/// @description Insert description here
// You can write your code in this editor

var percent = 1 - alarmTimer / alarmTimerInitial;

// draw_sprite_stretched(sCameraOverlaySmall, animationFrame, drawX, drawY, 100, 100);
draw_sprite_part(sAlarm, 0, 0, 0, percent * 200, 32, 600, 600 - 32);

drawSetText(c_white, fMenu, fa_left, fa_bottom);
if(started) {
	draw_text(620, 600 - 32, "Detection");
}