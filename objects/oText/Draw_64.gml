/// @description Insert description here
// You can write your code in this editor



var halfWidth = textboxWidth * 0.5;

var center = 300;

// Draw the Box
draw_set_color(c_black);
draw_set_alpha(0.5)
/*draw_roundrect_ext(
	x - halfWidth - textboxBorder, 
	y - textboxHeight - (textboxBorder * 2),
	x + halfWidth + textboxBorder,
	y,
	15,
	15,
	false
);*/
draw_rectangle(
	center - halfWidth - textboxBorder, 
	center - textboxHeight - (textboxBorder * 2),
	center + halfWidth + textboxBorder,
	center,
	false);
// draw_sprite(sTriangle, 0, x, y);
draw_set_alpha(1);

// Draw the Text
drawSetText(c_white, fMenu, fa_center, fa_top);
draw_text(center, center - textboxHeight - textboxBorder, textCurrent);