letters += textSpeed;
textCurrent = string_copy(text, 1, floor(letters));

draw_set_font(fMenu);
if(textboxWidth == 0) {
	textboxHeight = string_height(text);
}

textboxWidth = string_width(textCurrent);

if(letters >= length && keyboard_check_pressed(vk_anykey)) {
	instance_destroy();
}
