/// @description Insert description here
// You can write your code in this editor


if isHeld = true
{
	if mouse_x > x
	{
		var xx = abs(x - mouse_x)
		var amount = xx / sprite_width		
		
		amount = clamp(amount, 0, 1)
		amountCurrent = amount * 100
	}
	else 
	{
		amountCurrent = 0
	}
	

}

switch(setting)
{
	case "music":
		global.musicVolume = amountCurrent
		audio_sound_gain(sfxMainMenu, amountCurrent / 100, 0)
		audio_sound_gain(sfxPause2, amountCurrent / 100, 0)
		audio_sound_gain(sfxMainThemeLoop, amountCurrent / 100, 0)
		audio_sound_gain(sfxShop2, amountCurrent / 100, 0)
		break;
		
	case "sound":
		global.soundVolume = amountCurrent
		break;
}