used = false;

function displayMessage(msg) {
		if(!instance_exists(oText)) {
		with(instance_create_layer(x, y - 64, layer, oText)) {
			text = msg;
			length = string_length(msg);
		}
	}
}