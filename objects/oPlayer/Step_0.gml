//HERE i declare all my arroy key buttons to move my character
rightKey = keyboard_check( ord("D") );
leftKey = keyboard_check( ord("A") );
upKey =  keyboard_check( ord("W") );
downKey =  keyboard_check( ord("S") );


//player movementn down below
#region
	//ima be getting the directions here
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey  - upKey;
	moveDir = point_direction( 0, 0, _horizKey, _vertKey);
	//getting the x and y speeds down below
	var _spd = 0;
	var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
	//have to clamp it down to make sure the diagonal speed doesnt give more than 1 unit of value
	_inputLevel = clamp(_inputLevel, 0, 1)
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y( _spd, moveDir);
	
	//this is where the collision code will occur for the walls of the map
	if place_meeting( x + xspd, y, oWall){
		xspd = 0;
	}
	if place_meeting( x, y + yspd, oSolidWall){
		yspd = 0;
	}
	//move the player
	x += xspd;
	y += yspd;
	//adding the depth
	depth = -bbox_bottom;
#endregion


//player aiming
	centerY = y + centerYOffset
	//aim
	aimDir = point_direction( x, centerY, mouse_x, mouse_y);

//sprite control
#region
	//make sure our player is facing the correct direction
	face = round( aimDir/90 );//when doing 8 sprited i would have to divide by 45 degrees obviously
	if face == 4
	{
		face = 0;
	}
	if xspd == 0 && yspd ==0
	{
		image_index = 0;
	}
	
	//mask_index = sPlayerDown;
	//mask_index = sprite[3];
	//set player sprite
	sprite_index = sprite[face];
#endregion


