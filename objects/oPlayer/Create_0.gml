horizontalSpeed = 0;
verticalSpeed = 0;

gravityForce = 0.3;

walkSpeed = 4;
jumpSpeed = 5;

hasControl = true;
onRope = false;

currentCamera = 10; // view_get_camera(view_current);
nextCamera = currentCamera + 1;

var NB_CAMERA = 2;
FIRST_CAMERA = 10; //currentCamera + 1;
LAST_CAMERA = FIRST_CAMERA + NB_CAMERA;
CAMERAS = [10, 11];

view_set_camera(view_hport[0], FIRST_CAMERA);

