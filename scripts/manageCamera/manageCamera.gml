
function manageCamera(cam, xTo, yTo, levelWidth, levelHeight) {
	

	// Update object position
	// Division by 25 it to make smooth movements
	x += (xTo - x) / 25;
	y += (yTo - y) / 25;

	// Prevent camera to go outside of the room
	x = clamp(x, view_w_half, room_width - view_w_half);
	y = clamp(y, view_h_half, room_height - view_h_half);

	// Update camera view
	camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
}