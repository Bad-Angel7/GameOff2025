/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x, mouse_y, objShopHeal) && objPlayer.currentGold < 10
{
	if audio_is_playing(sfxWrong)
	{
		audio_stop_sound(sfxWrong)
	}
	audio_play_sound(sfxWrong, 0, 0)
}

if position_meeting(mouse_x, mouse_y, objShopHeal) && objPlayer.currentGold >= 10
{
	if objPlayer.currentHP = objPlayer.maxHP
	{
		if audio_is_playing(sfxWrong)
		{
			audio_stop_sound(sfxWrong)
		}
		audio_play_sound(sfxWrong, 0, 0)
		
		exit
	}
	
	if ds_list_find_index(global.inventory, "Delicious Strawberry") > -1
	{
		objPlayer.currentHP += 15
	}
	else
	{
		objPlayer.currentHP += 10
	}
	objPlayer.currentGold -= 10
	
	if objPlayer.currentHP > objPlayer.maxHP
	{
		objPlayer.currentHP = objPlayer.maxHP
	}
	audio_play_sound(choose(sfxShopHeal1, sfxShopHeal2, sfxShopHeal3, sfxShopHeal4, sfxShopHeal5, sfxShopHeal6), 0, 0)
}