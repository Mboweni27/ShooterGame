//this is a comment
//variables for movement
	moveDir = 0;
	moveSpd = 2; 
	//im guessing this is for 60FPS and 30FPS would be just 1 unit
	xspd = 0;
	yspd = 0; 

rightKey = "";
leftKey = "";
upKey =  "";
downKey = "";


//sprite control
	//doing the aim direction stuf now, using the mouse
	centerYOffset = -17;
	centerY = y + centerYOffset;//set in step event
	weaponOffsetDist = 7;
	aimDir = 0;
	//sprite controls of which have to be put into an array.
	face = 0;
	sprite[0] = sPlayerRight;//0 degrees
	//now if i was doing 8 directions, i would have to add stuff in between those
	//sprite[1] = sPlayerUpRight;
	sprite[1] = sPlayerUp;//90 degrees
	//sprite[3] = sPlayerUpLeft; 
	sprite[2] = sPlayerLeft;//180 degrees
	sprite[3] = sPlayerDown;//270 degrees

	//sprite_index = sprite[face];
