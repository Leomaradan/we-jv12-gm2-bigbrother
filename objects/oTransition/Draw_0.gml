if(mode != Transition.OFF) {
	
	draw_set_color(c_black);
	draw_set_alpha(percent);
	draw_rectangle(
		0, 
		0,	
		room_width,
		room_height,
		false
	);
	draw_set_alpha(1);	
	
	
	/*selectedCamera = -1;
	
	with(oPlayer) {
		other.selectedCamera = currentCamerasObject[currentCameraIndex].cam;
	}
	
	cameraX = camera_get_view_x(selectedCamera);
	cameraY = camera_get_view_y(selectedCamera);
	cameraWidth = camera_get_view_width(selectedCamera);
	cameraHeight = camera_get_view_height(selectedCamera);
	cameraHalfHeight = cameraHeight * 0.5;
	cameraHalfWidth = cameraWidth * 0.5;
	
	
	
	draw_rectangle(
		0, 
		0,	
		percent * cameraHalfWidth, 
		percent * cameraHalfHeight, 
		false
	); // Top-left to middle
	
	draw_rectangle(
		0, 
		cameraHeight, 
		percent * cameraHalfWidth,
		cameraHeight - (percent * cameraHalfHeight), 
		false
	); // Bottom-left to middle
	
	draw_rectangle(
		cameraWidth, 
		0,	
		cameraWidth - (percent * cameraHalfWidth), 
		percent * cameraHalfHeight, 
		false
	); // Top-right to middle
	
	draw_rectangle(
		cameraWidth, 
		cameraHeight, 
		cameraWidth - (percent * cameraHalfWidth), 
		cameraHeight - (percent * cameraHalfHeight), 
		false
	); // Bottom-right to middle
	*/
}