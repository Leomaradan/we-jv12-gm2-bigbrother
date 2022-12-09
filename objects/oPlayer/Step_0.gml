/// @description Insert description here
// You can write your code in this editor

#region Controls

_key_left = 0;	
_key_right = 0;	
_key_jump = 0;	
_key_interract = 0;
_key_up = 0;
_key_down = 0;
_mouse_left_click = 0;

if(hasControl) {
// Get player inputs
	_key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	_key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	_key_jump = keyboard_check_pressed(vk_space); // Only true on the first frame where space is pressed
	_key_interract = keyboard_check_pressed(vk_shift);
	_key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));	
	_key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	_mouse_left_click = mouse_check_button_pressed(mb_left);
}
#endregion

_move = _key_right - _key_left; // Calculate movement.
_touchingFloor = place_meeting(x, y+1, oWall);
_onLadder = place_meeting(x, y+1, oLadder);
_canTakeRope = place_meeting(x, y-16, oRope);

_affectedByGravity = !(_onLadder || onRope); // Indicate if the gravity must be active (not active in ladder and rope)

horizontalSpeed = _move * walkSpeed;
if(_affectedByGravity) {
	verticalSpeed += gravityForce;	
}

// Check if the player can jump
if ((_touchingFloor || _canTakeRope) && _key_jump) {
	verticalSpeed = -jumpSpeed;
}

if (_touchingFloor && _canTakeRope && (_key_interract || _key_up)) {
	onRope = true;
}

if(_onLadder) {
	if(_key_up) {
		verticalSpeed = -walkSpeed;	
	} else if(_key_down) {
		verticalSpeed = walkSpeed;	
	} else {
		verticalSpeed = 0;
	}
}

if(onRope) {
	if(_key_down) {
		verticalSpeed += gravityForce;	
		onRope = false;
	}
}



#region Calculate collisions
	if (place_meeting(x+horizontalSpeed, y, oWall)) {
	// Sign will return -1 or 1 depending on the base sign of the input. So in this loop, we move 1px each time to fine the closest position
		while (!place_meeting(x+sign(horizontalSpeed), y, oWall)) {
			x = x + sign(horizontalSpeed);	
		}
		horizontalSpeed = 0;	
	
	}
	x = x + horizontalSpeed;	

	// Vertical collision (but getting as close as possible)
	if (place_meeting(x, y+verticalSpeed, oWall)) {
		while (!place_meeting(x, y+sign(verticalSpeed), oWall)) {
			y = y + sign(verticalSpeed);	
		}
		verticalSpeed = 0;
	}
	y = y + verticalSpeed;	
#endregion

#region Animation
if(horizontalSpeed != 0) {
	// Change sprite orientation based on horizontal speed
	image_xscale = sign(horizontalSpeed);	
}
#endregion


#region Camera Manipulation
if(_mouse_left_click) {
	
	view_set_camera(view_hport[0], nextCamera);
	
	//currentCamera = view_current + 1;
	currentCamera = view_get_camera(view_current);
	nextCamera = currentCamera + 1;

	if(nextCamera >= LAST_CAMERA) {
		nextCamera = FIRST_CAMERA;	
	}

	//view_camera[currentCamera];
	// 	
}
#endregion