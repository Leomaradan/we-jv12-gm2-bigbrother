event_inherited();

function openGreenGate() {
	var _instancesNumber = instance_number(oDoorGreen);
	var _instances = [];

	for (var i = 0; i < _instancesNumber; ++i;)
	{
		_instances[i] = instance_find(oDoorGreen, i);
	}

	for (var i = 0; i < _instancesNumber; ++i;)
	{
		instance_destroy(_instances[i]);
	}
	
	sprite_index = sComputerOff;
	used = true;
	displayMessage("Green gate is now open");

	
}

function noGreenKey() {
	displayMessage("You don't have\nthe green key");
}

function useComputer() {
	if(!used) {
		with(oPlayer) {
			if(greenKey) {
				other.openGreenGate();	
				greenKey = false;
			} else {
				other.noGreenKey();
			}
		}
	}
}

