/// @description Insert description here
// You can write your code in this editor

function is_not_instance(element, index) {
	return cam != element.cam
}

with(oPlayer) {
	currentCamerasObject = array_filter(currentCamerasObject, is_not_instance)	
}
