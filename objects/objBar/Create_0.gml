/// @description Insert description here
// You can write your code in this editor

maxValue = 100
amountCurrent = 0
isHeld = false


ini_open("Settings.ini")

global.musicVolume = (ini_read_real("Volume", "Music", 1) * 100)

ini_close()

switch(setting)
{
	case "music":
		amountCurrent = global.musicVolume
		global.musicVolume = amountCurrent
		audio_group_set_gain(agMusic, amountCurrent / 100, 0)
		audio_group_set_gain(agSFX, amountCurrent / 100, 0)
		audio_group_set_gain(agMenuClick, amountCurrent / 100, 0)
		break;
		
	case "sound":
		
		break;
}