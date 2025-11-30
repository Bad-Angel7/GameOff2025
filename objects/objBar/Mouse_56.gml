/// @description Insert description here
// You can write your code in this editor

isHeld = false

if layer_get_visible("SettingsLayer")
{
	ini_open("Settings.ini")

	ini_key_delete("Volume", "Music")

	ini_write_real("Volume", "Music", global.musicVolume )
	
	ini_close()
}