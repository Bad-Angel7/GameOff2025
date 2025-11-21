/// @description Insert description here
// You can write your code in this editor



if keyboard_check_pressed(vk_space)
{
	if instance_exists(objEnemyParent)
	{
		with (objEnemyParent)
			alarm[0] = 60
	}
	else
	{
		alarm[0] = 120
	}
	
	objPlayer.currentEnergy = 0
	timerBuffer= 0
	bonusTimer = 0
}

if keyboard_check_pressed(vk_f11)
{
	if window_get_fullscreen() == false
	{
		window_set_fullscreen(true)
		window_enable_borderless_fullscreen(true)
	}
	else
	{
		window_set_fullscreen(false)
		window_enable_borderless_fullscreen(false)
	}
}


if timerBuffer > 0 
{
	timerBuffer--
}

if bonusTimer > 0 && timerBuffer = 0
{
	bonusTimer--
}