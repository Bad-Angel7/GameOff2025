/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x, mouse_y, objShopHeal) && objPlayer.currentGold >= 10
{
	objPlayer.currentHP += 10
	objPlayer.currentGold -= 10
	if objPlayer.currentHP > objPlayer.maxHP
	{
		objPlayer.currentHP = objPlayer.maxHP
	}
	audio_play_sound(sfxMagicMissle, 0, 0)
}