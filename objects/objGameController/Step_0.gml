/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_escape)
{
    game_end()
}

if keyboard_check_pressed(vk_space)
{
	with (objEnemyTest)
		alarm[0] = 60
	
	timerBuffer= 0
	bonusTimer = 0
}


if timerBuffer > 0 
{
	timerBuffer--
}

if bonusTimer > 0 && timerBuffer = 0
{
	bonusTimer--
}