// Easing functions source: http://sol.gfxile.net/interpolation/
// If you liked this asset, please give it a rating. Thank you! 


/////////////////////////////////////////////////////////
//		 Make sure to set your game to 60 fps		 ///
//		 Turn off pixel 'smoothing' or interpolation //
//		 Just incase... (:							//
room_speed = 60;
gpu_set_tex_filter( false );

//////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////


#region  General	
/////////////////////////////////////////////////////////////////

//font	= font_add_sprite( sfont_jasontomlee, ord(" "), 1, 1);
draw_set_font( fMenu );

pause		= false;
gwidth		= display_get_gui_width();
gheight		= display_get_gui_height();
cx			= gwidth/2;
cy			= gheight/2;
screen_alpha		= 0;
screen_alpha_set	= 0;

// Insert your sounds here
//sound[0] = //Scroll through buttons
//sound[1] = //Confirm 

// Check if your Window is open/closed
window		= true;
windowPrev	= true;

/////////////////////////////////////////////////////////////////
#endregion

#region Buttons 
/////////////////////////////////////////////////////////////////

b		= 1; //selected
bc		= 0;
bgap	= 40; //vertical spacing between buttons


var	n = 0;
bstring[ n ]	= " Resume  "; n++;
// bstring[ n ]	= " Restart "; n++;
bstring[ n ]	= " Main Menu "; n++;
bstring[ n ]	= " Exit "; n++;
bc		= n; //total button count;


//Initialize Button values
for( var i = 0; i< bc; i++; ){
	bx[ i ]		= 0;
	by[ i ]		= 0;
	bsca[ i ]	= 1;
	bcol[ i ]	= c_white;
	balpha[ i ]	= 1;
	bxoff[ i ]	= 0;
	byoff[ i ]	= 0;
}

/////////////////////////////////////////////////////////////////
#endregion

