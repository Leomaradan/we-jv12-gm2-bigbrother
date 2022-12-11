cam = view_camera[0];
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
//follow = oPlayer;

xTo = xstart;
yTo = ystart;
first = false;

enum CameraStatus {
	ACTIVE,
	OFF,
	JAMMED,
}

status = CameraStatus.ACTIVE;
cameraDetectionSpeed = 0;

/*with(oPlayer) {
	array_push(currentCamerasObject, other);
}*/