/// @description Insert description here
// You can write your code in this editor

if !persistent
{
	persistent = true	
}

cursor = cr_none

paused = false
musicVolume = 1


fullscreenUpdate = function()
{
	if window_get_fullscreen() = true
	{
		window_set_fullscreen(false)
		
		ini_open("Settings.ini")
		
		ini_key_delete("Display", "Fullscreen")
		ini_write_real("Display", "Fullscreen", 0)
		
		ini_close()
	}
	else 
	{
		window_set_fullscreen(true)
		
		ini_open("Settings.ini")
		
		ini_key_delete("Display", "Fullscreen")
		ini_write_real("Display", "Fullscreen", 1)
		
		ini_close()
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
		audio_play_sound(sfxPause2, 0, true, musicVolume)
		layer_set_visible("PauseLayer", true)
		layer_set_visible("StatsLayer", false)
		layer_set_visible("AbilityLayer", false)
		layer_set_visible("AbilityIconsLayer", false)
		layer_set_visible("MeasuringLayer", false)
	}
	else
	{
		instance_activate_all()
		audio_stop_sound(sfxPause2)
		audio_resume_all()
		layer_set_visible("PauseLayer", false)
		if room = battleRoom || room = shopRoom
		{
			layer_set_visible("StatsLayer", true)
			layer_set_visible("AbilityIconsLayer", true)
			layer_set_visible("MeasuringLayer", true)
		}
		layer_set_visible("SettingsLayer", false)
	}
}

pauseUpdate()

layer_set_visible("SettingsLayer", false)