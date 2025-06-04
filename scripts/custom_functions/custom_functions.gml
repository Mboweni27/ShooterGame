//drawing the players weapon
function drawWeapon()
{
	//drawing the weapon
	//get weapon off body
	var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir)
	//flipping the weapon at specific degrees
	var _weaponYsc = 1;
	if aimDir > 90 && aimDir < 270
	{
		_weaponYsc = -1;
	}
	draw_sprite_ext( sWeapon, 0, x + _xOffset, centerY + _yOffset, 1, _weaponYsc, aimDir, c_white, 1);

	

}
