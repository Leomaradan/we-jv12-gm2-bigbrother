/// @description Insert description here
// You can write your code in this editor


/*
_key_left = 0;	
_key_right = 0;	
_key_jump = 0;	
_key_interract = 0;
_key_up = 0;
_key_down = 0;
_move = _key_left - _key_right; // Calculate movement.
_touchingFloor = place_meeting(x, y+1, oWall);
_onLadder = place_meeting(x, y, oLadder);
_onRope = place_meeting(x, y+1, oRope);

_affectedByGravity = _onLadder || _onRope; // Indicate if the gravity must be active (not active in ladder and rope)

*/


draw_flush();

draw_set_color(c_white);
var variables = [
	["_key_left", _key_left],
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
	["_mouse_left_click", _mouse_left_click],
	["horizontalSpeed", horizontalSpeed],
	["verticalSpeed", verticalSpeed],
	["onRope", onRope],
	["currentCamera", currentCamera],
	["nextCamera", nextCamera],
	["FIRST_CAMERA", FIRST_CAMERA],
	["LAST_CAMERA", LAST_CAMERA]
];

array_map(variables, debugGUI);

