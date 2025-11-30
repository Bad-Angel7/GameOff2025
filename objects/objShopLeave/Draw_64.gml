/// @description Insert description here
// You can write your code in this editor


draw_text_ext(x - 48, y, "Back to the battle?", 16, 128)

if position_meeting(mouse_x, mouse_y, objShopLeave)
{
	if mouse_check_button_pressed(mb_left)
	{
		room_goto(battleRoom)
		audio_stop_all()
		audio_play_sound(sfxBossThemeLoop, 0, true)
	}
}