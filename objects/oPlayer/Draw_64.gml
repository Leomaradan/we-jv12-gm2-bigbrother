/// @description Insert description here
// You can write your code in this editor

draw_flush();

draw_set_color(c_white);
variables = [
	/*["_key_left", _key_left],
	["_key_right", _key_right],
	["_key_jump", _key_jump],
	["_key_interract", _key_interract],
	["_key_up", _key_up],
	["_key_down", _key_down],
	["_move", _move],
	["_touchingFloor", _touchingFloor],
	["_onLadder", _onLadder],
	["_canTakeRope", _canTakeRope],
	["_affectedByGravity", _affectedByGravity],
	["_mouse_left_click", _mouse_left_click],*/
	["horizontalSpeed", horizontalSpeed],
	["verticalSpeed", verticalSpeed],
	["greenKey", greenKey],
	// ["onRope", onRope],
	/*["currentCameraIndex", currentCameraIndex],
	["activeCamera", activeCamera],
	["_previousCameraIndex", _previousCameraIndex],	
	["_nextCameraIndex", _nextCameraIndex],
	["NB_CAMERA", NB_CAMERA],
	["FIRST_CAMERA", FIRST_CAMERA],
	["LAST_CAMERA", LAST_CAMERA],*/
	["ActionStates", state]

];

function arrayDebugCamera(element, index) {
	var cameraDebug = ["camera" + string(index), element.cam];
	array_push(variables, cameraDebug); 
}

array_foreach(currentCamerasObject, arrayDebugCamera);

array_map(variables, debugGUI);

