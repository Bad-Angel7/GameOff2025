/// @description Insert description here
// You can write your code in this editor

switch (buttonID)
{
	case 1: // Resume
		objPauseController.paused = false
		objPauseController.pauseUpdate()
		window_set_cursor(objPauseController.cursor)
		menuAudioUpdate()
		break;
	
	case 2: // Restart
	
		///Crashes game with current UI for some reason
		global.currentAbility = noone
		objPauseController.paused = false
		layer_set_visible("StatsLayer", true)
		layer_set_visible("AbilityIconsLayer", true)
		layer_set_visible("SelectionLayer", false)
		layer_set_visible("DeathLayer", false)
		layer_set_visible("PauseLayer", false)
		audio_stop_all()
		audio_play_sound(sfxMainThemeLoop, 0, true)
		room_restart()
		break;
		
	case 3: // Index
		layer_set_visible("MainMenuLayer", false)
		layer_set_visible("PauseLayer", false)
		layer_set_visible("IndexLayer", true)
		break;
		
	case 4: // Settings
		layer_set_visible("MainMenuLayer", false)
		layer_set_visible("PauseLayer", false)
		layer_set_visible("SettingsLayer", true)
		layer_set_visible("AbilityIconsLayer", false)
		window_set_cursor(objPauseController.cursor)
		menuAudioUpdate()
		break;
		
	case 5: // Main Menu	
		objPauseController.paused = false
		if room != mainMenuRoom
		{
			audio_stop_all()
			audio_play_sound(sfxMainMenu, 0, true)
		}
		menuAudioUpdate()
		layer_set_visible("DeathLayer", false)
		layer_set_visible("MainMenuLayer", true)
		layer_set_visible("PauseLayer", false)
		layer_set_visible("StatsLayer", false)
		layer_set_visible("AbilityIconsLayer", false)
		layer_set_visible("MeasuringLayer", false)
		room_goto(mainMenuRoom)
		break;
	
	case 6: // Quit
		menuAudioUpdate()
		game_end()
		break;
		
	case 7: // Back
		menuAudioUpdate()
		if room = mainMenuRoom
		{
			layer_set_visible("MainMenuLayer", true)
			layer_set_visible("StatsLayer", false)
			layer_set_visible("AbilityIconsLayer", false)
			layer_set_visible("SelectionLayer", false)
		}else
		{
			layer_set_visible("PauseLayer", true)
			layer_set_visible("StatsLayer", false)
			layer_set_visible("AbilityIconsLayer", true)
		}
		layer_set_visible("IndexLayer", false)
		layer_set_visible("SettingsLayer", false)
		window_set_cursor(objPauseController.cursor)
		break;
		
	case 8: //New game
		room_goto(battleRoom)
		layer_set_visible("MainMenuLayer", false)
		layer_set_visible("StatsLayer", true)
		layer_set_visible("AbilityIconsLayer", true)
		layer_set_visible("SelectionLayer", false)
		layer_set_visible("MeasuringLayer", true)
		audio_stop_all()
		menuAudioUpdate()
		audio_play_sound(sfxMainThemeLoop, 0, true)
		break;
	
	case 9: //Class Select
		menuAudioUpdate()
		layer_set_visible("MainMenuLayer", false)
		layer_set_visible("SelectionLayer", true)
		with objAbilitySlotParent
			alarm[0] = 1
		break;
		
	case 10: //Reset Class Select
		menuAudioUpdate()
		
		ini_open("Settings.ini")
		
		ini_key_delete("Abilities", "Ability 1")
		ini_key_delete("Abilities", "Ability 2")
		ini_key_delete("Abilities", "Ability 3")
		ini_key_delete("Abilities", "Ability 4")
		ini_key_delete("Abilities", "Ability 5")
		
		global.ability1 = "Empty"
		global.ability2 = "Empty"
		global.ability3 = "Empty"
		global.ability4 = "Empty"
		global.ability5 = "Empty"
		
		ini_write_string("Abilities", "Ability 1", global.ability1)
		ini_write_string("Abilities", "Ability 2", global.ability2)
		ini_write_string("Abilities", "Ability 3", global.ability3)
		ini_write_string("Abilities", "Ability 4", global.ability4)
		ini_write_string("Abilities", "Ability 5", global.ability5)
		
		ini_close()
		
		objAbility1.sprite_index = sprEmpty
		objAbility2.sprite_index = sprEmpty
		objAbility3.sprite_index = sprEmpty
		objAbility4.sprite_index = sprEmpty
		objAbility5.sprite_index = sprEmpty
		
		with objAbilitySlotParent
			alarm[0] = 1
		break;
}