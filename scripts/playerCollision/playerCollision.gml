// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkPlayerCollision(obstacle){
	
	_free = true;
	
	with(oPlayer) {
	
		if (place_meeting(x+horizontalSpeed, y, obstacle)) {
		// Sign will return -1 or 1 depending on the base sign of the input. So in this loop, we move 1px each time to fine the closest position
			while (!place_meeting(x+sign(horizontalSpeed), y, obstacle)) {
				x = x + sign(horizontalSpeed);	
			}
			horizontalSpeed = 0;	
			_free = false;
	
		}
		x = x + horizontalSpeed;	

		// Vertical collision (but getting as close as possible)
		if (place_meeting(x, y+verticalSpeed, obstacle)) {
			while (!place_meeting(x, y+sign(verticalSpeed), obstacle)) {
				y = y + sign(verticalSpeed);	
			}
			verticalSpeed = 0;
			_free = false;
		}
		y = y + verticalSpeed;	
	}
	
	return _free;
}

function playerCollision(){
	var _free = checkPlayerCollision(oWall);
	
	if(_free) {
		_free = checkPlayerCollision(oDoorBlue);	
	}
	
	if(_free) {
		_free = checkPlayerCollision(oDoorGreen);	
	}
	
	if(_free) {
		checkPlayerCollision(oDoorRed);	
	}
}