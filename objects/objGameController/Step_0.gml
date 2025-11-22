/// @description Insert description here
// You can write your code in this editor

///Transition to and from rooms. Will be useful for the shop
///Stops sounds but lets other things like the UI, timer and probably SFX slip through. Should be fixed
if keyboard_check_pressed(vk_f12)
{
	if room = battleRoom
	{
		room_goto(shopRoom)
		audio_stop_all()
		audio_play_sound(sfxShop2, 0, true)
		layer_set_visible("AbilityLayer", false)
	}
	if room = shopRoom
	{
		room_goto(battleRoom)
		audio_stop_all()
		audio_play_sound(sfxMainThemeLoop, 0, true, musicVolume)
	}
}

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