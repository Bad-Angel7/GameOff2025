/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x, mouse_y, objShopLeave)
{
	draw_text(x, y, "Back to the battle?")
	
	if mouse_check_button_pressed(mb_left)
	{
		room_goto(battleRoom)
		audio_stop_all()
		audio_play_sound(sfxMainThemeLoop, 0, true)
	}
}