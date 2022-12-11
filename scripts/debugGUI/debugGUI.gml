function debugGUI(element, index)
{
	var name = element[0];
	var value = element[1];
	var text = name + ": " + string(value);
	var position = (index * 20) + 400;
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_text(80,position, text);
}