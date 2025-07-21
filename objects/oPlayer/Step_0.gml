//Get inputs
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);


// X Movement
	// Direction 
	moveDir = rightKey-leftKey;

	//Get xspeed 
	xspeed = moveDir * moveSpeed

	//X collision
	var _subPixel = .5;
	if place_meeting(x,y+yspeed,oStormGrassTile)
	{
		var _pixelCheck = _subPixel * sign(yspeed);
		while !place_meeting(x,y+_pixelCheck,oStormGrassTile)
		{
			y+=_pixelCheck
		}
		yspeed =0;
	}

	//Move
	x+=xspeed;

