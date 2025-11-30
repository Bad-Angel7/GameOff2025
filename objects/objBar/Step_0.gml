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
		audio_group_set_gain(agMusic, amountCurrent / 100, 0)
		audio_group_set_gain(agSFX, amountCurrent / 100, 0)
		audio_group_set_gain(agMenuClick, amountCurrent / 100, 0)
		break;
		
	case "sound":
		break;
}