/// @description Insert description here
// You can write your code in this editor

//if keyboard_check_pressed(vk_f1)
//{
//	waveCounter += 1
//}

//if keyboard_check_pressed(vk_f2)
//{
//	objPlayer.currentHP -= 10000
//}
///Transition to and from rooms. Will be useful for the shop
///Stops sounds but lets other things like the UI, timer and probably SFX slip through. Should be fixed
//if keyboard_check_pressed(vk_f12)
//{
//	if room = battleRoom
//	{
//		room_goto(shopRoom)
//		audio_stop_all()
//		audio_play_sound(sfxShop2, 0, true)
//		layer_set_visible("AbilityLayer", false)
//	}
//	if room = shopRoom
//	{
//		room_goto(battleRoom)
//		audio_stop_all()
//	}
//}

if keyboard_check_pressed(vk_space) && room = battleRoom && objPlayer.playerTurn = true
{
	alarm[2] = 1
}

//if keyboard_check_pressed(vk_f11)
//{
//	if window_get_fullscreen() == false
//	{
//		window_set_fullscreen(true)
//		window_enable_borderless_fullscreen(true)
//	}
//	else
//	{
//		window_set_fullscreen(false)
//		window_enable_borderless_fullscreen(false)
//	}
//}

if instance_exists(objPlayer)
{
	if objPlayer.currentHP <= 0 && objPlayer.playerAlive = true
	{
		//Play Death animation
		objPlayer.playerAlive = false
		instance_destroy(objPlayer)
		instance_destroy(objEnemyParent)
		layer_set_visible("StatsLayer", false)
		layer_set_visible("AbilityIconsLayer", false)
		layer_set_visible("AbilityLayer", false)
		layer_set_visible("DeathLayer", true)
		audio_stop_all()
		audio_play_sound(sfxLoop, 0, true)
		
		var uiLayer = layer_get_flexpanel_node("DeathLayer")
		
		//Name
		var wavePanelName = flexpanel_node_get_child(uiLayer, "WaveNumber")
		var waveStructName = flexpanel_node_get_struct(wavePanelName)
		var waveIDName = waveStructName.layerElements[0].elementId
		layer_text_text(waveIDName, waveCounter)
		
		//Name
		var scorePanelName = flexpanel_node_get_child(uiLayer, "ScoreNumber")
		var scoreStructName = flexpanel_node_get_struct(scorePanelName)
		var scoreIDName = scoreStructName.layerElements[0].elementId
		layer_text_text(scoreIDName, currentScore)
	}
}


if room = battleRoom && objPauseController.paused = false
{
	if timerBuffer > 0 
	{
		timerBuffer--
	}

	if bonusTimer > 0 && timerBuffer = 0
	{
		bonusTimer--
	}
}