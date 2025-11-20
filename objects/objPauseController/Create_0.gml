/// @description Insert description here
// You can write your code in this editor

cursor = cr_none

paused = false
musicVolume = 1


fullscreenUpdate = function()
{
	if window_get_fullscreen() = true
	{
		window_set_fullscreen(false)
	}
	else 
	{
		window_set_fullscreen(true)
	}
}

borderlessUpdate = function()
{
	if window_get_borderless_fullscreen() = true
	{
		window_enable_borderless_fullscreen(false)
	}
	else
	{
		window_enable_borderless_fullscreen(true)
	}
}



pauseUpdate = function()
{
	if paused = true
	{
		instance_deactivate_all(true)
		audio_pause_all()
		audio_play_sound(sfxLoop, 0, true, musicVolume)
		layer_set_visible("PauseLayer", true)
	}
	else
	{
		instance_activate_all()
		audio_stop_sound(sfxLoop)
		audio_resume_all()
		layer_set_visible("PauseLayer", false)
		layer_set_visible("SettingsLayer", false)
	}
}

pauseUpdate()

layer_set_visible("SettingsLayer", false)