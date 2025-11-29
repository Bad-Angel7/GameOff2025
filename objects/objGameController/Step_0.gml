/// @description Insert description here
// You can write your code in this editor

//if keyboard_check_pressed(vk_f1)
//{
//	waveCounter += 1
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
//		audio_play_sound(sfxMainThemeLoop, 0, true)
//	}
//}

if keyboard_check_pressed(vk_space) && room = battleRoom && objPlayer.playerTurn = true
{
	if instance_exists(objEnemyParent)
	{
		var enemies = instance_number(objEnemyParent)
		var enemyInstances = array_create(enemies)
		
		for (var i = 0; i < enemies; ++i)
		{
			enemyInstances[i] = instance_find(objEnemyParent, i)
			target = enemyInstances[i]
			if target.ignite > 0
			{
				target.currentHP -= target.ignite
				global.textDamage = target.ignite
				layer_sequence_create("Assets_1", target.x, target.y - target.sprite_height, seqDamage)
			}
		}
		with (objEnemyParent)
			alarm[0] = 60
		
		alarm[0] = 120
	}
	else
	{
		alarm[0] = 120
	}

	objPlayer.playerTurn = false
	objPlayer.currentEnergy = 0
	timerBuffer= 0
	bonusTimer = 0
}

if keyboard_check_pressed(vk_f11)
{
	if window_get_fullscreen() == false
	{
		window_set_fullscreen(true)
		window_enable_borderless_fullscreen(true)
	}
	else
	{
		window_set_fullscreen(false)
		window_enable_borderless_fullscreen(false)
	}
}

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

if room = mainMenuRoom
{
	if audio_is_playing(sfxMainMenu)
	{
		timer = 240
	}
	
	if !audio_is_playing(sfxMainMenu)
	{
		timer--
		
		if timer <= 0
		{
			audio_play_sound(sfxMainMenu, 0, 0)
		}
	}
}