/// @description Insert description here
// You can write your code in this editor

maxValue = 100
amountCurrent = 0
isHeld = false
global.musicVolume = 10

switch(setting)
{
	case "music":
		amountCurrent = global.musicVolume
		break;
		
	case "sound":
		amountCurrent = global.soundVolume
		break;
}