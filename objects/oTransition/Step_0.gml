var PERCENT_TARGET = 1.2;

if(mode != Transition.OFF) {

	if(mode == Transition.INTRO){
		// percent = max(0, percent - 0.05); // Fast transition
		percent = max(0, percent - max((percent/10),0.005)); // Smooth non-linear transition
	} else {
		// percent = min(1, percent + 0.05); // Fast transition
		percent = min(PERCENT_TARGET, percent + max(((PERCENT_TARGET - percent)/10),0.005)); // Smooth non-linear transition
	}
	
	if(percent >= 1 || percent == 0) {
		switch(mode) {
			case Transition.INTRO: {
				mode = Transition.OFF;
				break;
			}
			case Transition.NEXT: {
				mode = Transition.INTRO;
				room_goto_next();
				break;
			}
			case Transition.GOTO: {
				mode = Transition.INTRO;
				room_goto(target);
				break;
			}	
			case Transition.RESTART: {
				game_restart();
				break;
			}			
		}
	}
}