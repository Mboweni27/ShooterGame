//moving the bulllet
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	

	x += xspd;
	y += yspd;
	//collision for the bullets
	if place_meeting(x, y, oSolidWall)
	{
		instance_destroy();	
	}