function debugGUI(element, index)
{
	var name = element[0];
	var value = element[1];
	var text = name + ": " + string(value);
	var position = (index * 20) + 20;
	
	draw_text(20,position, text);
}