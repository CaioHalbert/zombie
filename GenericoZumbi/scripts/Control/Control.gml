if(hascontrol)
{
	// teclado
	left= keyboard_check(ord("A"));
	right= keyboard_check(ord("D"));
	up= keyboard_check(ord("W"));
	down= keyboard_check(ord("S"));
	enter = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_start);
	shoot =  keyboard_check_pressed(vk_space);
	// gamepad
	if (left || right || up)
	{
		controller =0;
	}

	if(abs(gamepad_axis_value(0,gp_axislh)) > 0.2 )
	{
		left = abs(min(gamepad_axis_value(0,gp_axislh),0));
		right = max(gamepad_axis_value(0,gp_axislh),0);
		up = abs(min(gamepad_axis_value(0,gp_axislv),0));
		down = max(gamepad_axis_value(0,gp_axislv),0);
		shoot = gamepad_button_check_pressed(0,gp_face1); // olhar botao..
		controller = 1 ;
	}
	if (gamepad_button_check_pressed(0,gp_shoulderrb))
	{
		controller=1;
	} 
}
else
{
	up = 0;
	left = 0;
	right = 0;
}