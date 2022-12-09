horizontalSpeed = 0;
verticalSpeed = 0;

gravityForce = 0.3;

walkSpeed = 4;
jumpSpeed = 5;

hasControl = true;
onRope = false;

currentCamera = view_get_camera(view_current);
nextCamera = currentCamera + 1;

var NB_CAMERA = 2;
FIRST_CAMERA = currentCamera;
LAST_CAMERA = FIRST_CAMERA + NB_CAMERA;