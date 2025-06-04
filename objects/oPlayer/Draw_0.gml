//draw weapon behind the player
if aimDir >= 0 && aimDir < 180
{
	drawWeapon();
}


//this is where i will be drawing my weapons
	draw_self();


//drawing the weapon
	//get weapon off body
	if aimDir >= 180 && aimDir < 360
	{
	drawWeapon();
	}