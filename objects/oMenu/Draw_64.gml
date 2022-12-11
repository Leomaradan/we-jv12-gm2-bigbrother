/// @description Insert description here
// You can write your code in this editor

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for(var i = 0; i < menuItems; i++) {
	
	var offset = 2;
	var text = menu[i];
	if(menuCursor == i) {
		text = string_insert("> ", text, 0);
		var col = c_white;
	} else {
		var col = c_gray;	
	}
	
	var xx = menuX;
	var yy = menuY - (menuItemHeight * (i * 1.5));
	
	draw_set_color(c_black);
	draw_text(xx-offset,yy,text);
	draw_text(xx+offset,yy,text);
	draw_text(xx,yy+offset,text);
	draw_text(xx,yy-offset,text);
	draw_set_color(col);
	draw_text(xx,yy,text);
}

draw_set_color(c_black);
draw_rectangle(
	800, 
	400,
	1000,
	800,

	false);