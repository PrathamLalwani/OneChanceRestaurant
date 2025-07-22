function controlsSetup()
{
	bufferTime =3;
	
	jumpKeyBuffered = 0 ;
	jumpKeyBufferTimer = 0 ;
	
}


function getControls(){
	rightKey = keyboard_check(ord("D"))+keyboard_check(vk_right)+gamepad_button_check(0,gp_padr);
	rightKey = clamp(rightKey,0,1);

	leftKey = keyboard_check(ord("A"))+keyboard_check(vk_left)+gamepad_button_check(0,gp_padl);
	leftKey = clamp(leftKey,0,1);

	jumpKeyPressed = keyboard_check_pressed(vk_space) + gamepad_button_check_pressed(0,gp_face1);
	jumpKeyPressed = clamp(jumpKeyPressed,0,1)
	jumpKey = keyboard_check_pressed(vk_space) + gamepad_button_check_pressed(0,gp_face1);
	jumpKey = clamp(jumpKey,0,1)

	if jumpKeyPressed
	{
		jumpKeyBufferTimer = bufferTime;
	}
	if jumpKeyBufferTimer > 0 
	{
		jumpKeyBuffered=1;
		jumpKeyBufferTimer--;
	}else{
	jumpKeyBuffered = 0;
	}
	
	
}