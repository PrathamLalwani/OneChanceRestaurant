//Get inputs
getControls()

// X Movement
	// Direction 
	moveDir = rightKey-leftKey;

	//Get xspeed 
	xspeed = moveDir * moveSpeed;
	
	if moveDir && rightKey
	{
		sprite_index = sPlayerRun;
	}
	else
	{
		sprite_index = sPlayerIdle;
	}
	
	//Move
	x+=xspeed;

// Y Movement
	
	//Direction 
	yspeed+=grav

	if yspeed >terminalVal {yspeed = terminalVal;};	
	
	//Jump
	if jumpKeyPressed && place_empty(x,y-1, oStormGrassTile)
	{
		yspeed = jumpSpeed
	}	
	
	//Y collision
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
	
	y+=yspeed
