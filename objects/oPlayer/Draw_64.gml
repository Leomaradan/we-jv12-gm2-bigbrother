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



draw_set_color(c_white);
draw_text(50,50,"_key_left: " + string(_key_left));
draw_text(50,70,"_key_right: " + string(_key_right));
draw_text(50,90,"_key_jump: " + string(_key_jump));
draw_text(50,110,"_key_interract: " + string(_key_interract));
draw_text(50,130,"_key_up: " + string(_key_up));
draw_text(50,150,"_key_down: " + string(_key_down));
draw_text(50,170,"_move: " + string(_move));
draw_text(50,190,"_touchingFloor: " + string(_touchingFloor));
draw_text(50,210,"_onLadder: " + string(_onLadder));
draw_text(50,230,"_canTakeRope: " + string(_canTakeRope));
draw_text(50,250,"_affectedByGravity: " + string(_affectedByGravity));

draw_text(50,270,"horizontalSpeed: " + string(horizontalSpeed));
draw_text(50,290,"verticalSpeed: " + string(verticalSpeed));
draw_text(50,310,"onRope: " + string(onRope));
draw_text(50,330,"currentCamera: " + string(currentCamera));
draw_text(50,350,"nextCamera: " + string(nextCamera));
