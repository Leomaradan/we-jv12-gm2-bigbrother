horizontalSpeed = 0;
verticalSpeed = 0;

gravityForce = 0.3;

walkSpeed = 4;
jumpSpeed = 5;

hasControl = true;
onRope = false;

//currentCamera = 10; // view_get_camera(view_current);
currentCameraIndex = -1// view_get_camera(view_current);
activeCamera = 0;
changedCamera = -1;

currentCamerasObject = [];

greenKey = false;
cooldownInterraction = -1;

/*var NB_CAMERA = 2;
FIRST_CAMERA = currentCamera + 1;
LAST_CAMERA = FIRST_CAMERA + NB_CAMERA;

view_set_camera(view_hport[0], FIRST_CAMERA);*/

#region Keyboard remapping
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("Z"), vk_up);

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("Q"), vk_left);

keyboard_set_map(ord("S"), vk_down);

keyboard_set_map(ord("D"), vk_right);
#endregion

enum ActionStates {
	IDLE,
	WALK,
	ROPE,
	CLIMB,
	JUMP_FALL,
	INTERRACT,
	DEAD
}

state = ActionStates.IDLE;

started = false; // Set to true after the first game interraction