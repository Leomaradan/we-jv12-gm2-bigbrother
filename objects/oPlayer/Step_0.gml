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
_mouse_right_click = 0;

if(hasControl) {
// Get player inputs
	_key_left = keyboard_check(vk_left);
	_key_right = keyboard_check(vk_right);
	_key_jump = keyboard_check_pressed(vk_space); // Only true on the first frame where space is pressed
	_key_interract = keyboard_check_pressed(vk_shift);
	_key_up = keyboard_check(vk_up);	
	_key_down = keyboard_check(vk_down);
	_mouse_left_click = mouse_check_button_pressed(mb_left);
	_mouse_right_click = mouse_check_button_pressed(mb_right);
}
#endregion

#region Calculate states and movements
state = ActionStates.IDLE;
_move = _key_right - _key_left; // Calculate movement.
_touchingFloor = place_meeting(x, y+1, oWall);
_onLadder = place_meeting(x, y+1, oLadder);
_canTakeRope = place_meeting(x, y-16, oRope);

_affectedByGravity = !(_onLadder || onRope); // Indicate if the gravity must be active (not active in ladder and rope)

if(_move != 0) {
	state = ActionStates.WALK;	
}

horizontalSpeed = _move * walkSpeed;

if(verticalSpeed != 0 && !_touchingFloor) {
	state = ActionStates.JUMP_FALL;	
}

if(_affectedByGravity) {
	verticalSpeed += gravityForce;	
}

// Check if the player can jump
if ((_touchingFloor || _canTakeRope) && _key_jump) {
	verticalSpeed = -jumpSpeed;
	onRope = false;
	state = ActionStates.JUMP_FALL;	
}

if (_touchingFloor && _canTakeRope && (_key_interract || _key_up)) {
	onRope = true;
}

if (onRope) {
	state = ActionStates.ROPE;
}

if(_onLadder) {
	if(!_touchingFloor) {
		state = ActionStates.CLIMB;	
	}
	
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
		state = ActionStates.JUMP_FALL;	
	}
}
#endregion


#region Calculate collisions


	if (place_meeting(x+horizontalSpeed, y, oBlock)) {
	// Sign will return -1 or 1 depending on the base sign of the input. So in this loop, we move 1px each time to fine the closest position
		while (!place_meeting(x+sign(horizontalSpeed), y, oBlock)) {
			x = x + sign(horizontalSpeed);	
		}
		horizontalSpeed = 0;	
	
	}
	x = x + horizontalSpeed;	

	// Vertical collision (but getting as close as possible)
	if (place_meeting(x, y+verticalSpeed, oBlock)) {
		while (!place_meeting(x, y+sign(verticalSpeed), oBlock)) {
			y = y + sign(verticalSpeed);	
		}
		verticalSpeed = 0;
	}
	y = y + verticalSpeed;
#endregion

#region Animation

switch(state) {
	case ActionStates.WALK: {
		image_speed = 0.5;
		sprite_index = sPlayerJohnWalk;	
		break;	
	}
	case ActionStates.JUMP_FALL: {
		// The player is on air
		sprite_index = sPlayerJohnJump;
		image_speed = 0;
		if(verticalSpeed > 0) {
			// Falling animation
			image_index = 1;	
		} else {
			// Jumping animation
			image_index = 0;	
		}		
		break;	
	}
	case ActionStates.ROPE: {
		sprite_index = sPlayerJohnRope;
		if(horizontalSpeed == 0) {
			image_speed = 0;
		} else {
			// Running animation
			image_speed = 0.5;
		}
		break;	
	}
	case ActionStates.CLIMB: {
		sprite_index = sPlayerJohnClimb;
		if(verticalSpeed == 0) {
			image_speed = 0;
		} else {
			// Running animation
			image_speed = 0.5;
		}		
		break;	
	}
	case ActionStates.INTERRACT: {
		break;	
	}
	case ActionStates.DEAD: {
		break;	
	}
	case ActionStates.IDLE: default: {
		image_speed = 0.5;
		sprite_index = sPlayerJohnIdle;	
		break;	
	}
}

if(horizontalSpeed != 0) {
	// Change sprite orientation based on horizontal speed
	image_xscale = sign(horizontalSpeed);	
}
#endregion


#region Camera Manipulation

NB_CAMERA = array_length(currentCamerasObject);
// FIRST_CAMERA = currentCamerasObject[0];
// LAST_CAMERA = currentCamerasObject[NB_CAMERA - 1];
CURRENT_CAMERA = 0;

if(activeCamera != currentCameraIndex) {
	if(currentCameraIndex == -1) {
		
		for (var i = 0; i < instance_number(oCamera); ++i;)
		{
		   array_push(currentCamerasObject, instance_find(oCamera, i));
		}
		
		var newFirstCameraIndex = array_find_index(currentCamerasObject, function(element) {
			return element.first;
		});
		
		if(newFirstCameraIndex != -1) {
			currentCameraIndex = newFirstCameraIndex;
		} else {
			currentCameraIndex = 0;
		}
	}
	
	view_set_camera(view_hport[0], currentCamerasObject[currentCameraIndex].cam);
	CURRENT_CAMERA = currentCamerasObject[currentCameraIndex].cam;
	activeCamera = currentCameraIndex;	
}

_previousCameraIndex = currentCameraIndex - 1;
_nextCameraIndex = currentCameraIndex + 1;

if(_previousCameraIndex <= 0) {
	_previousCameraIndex = NB_CAMERA - 1;	
}

if(_nextCameraIndex >= NB_CAMERA) {
	_nextCameraIndex = 0;	
}

if(_mouse_left_click) {
	//view_set_camera(view_hport[0], _nextCamera);
	
	//currentCamera = view_get_camera(view_current);
	currentCameraIndex = _nextCameraIndex;
}

if(_mouse_right_click) {
	//view_set_camera(view_hport[0], _previousCamera);
	
	//currentCamera = view_get_camera(view_current);
	currentCameraIndex = _previousCameraIndex;
}
#endregion