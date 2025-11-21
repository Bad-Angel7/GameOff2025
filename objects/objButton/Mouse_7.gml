/// @description Insert description here
// You can write your code in this editor

switch (buttonID)
{
	case 1: // Resume
		objPauseController.paused = false
		objPauseController.pauseUpdate()
		window_set_cursor(objPauseController.cursor)
		break;
	
	case 2: // Restart
		
		break;
		
	case 3: // Index
		
		break;
		
	case 4: // Settings
		layer_set_visible("MainMenuLayer", false)
		layer_set_visible("PauseLayer", false)
		layer_set_visible("SettingsLayer", true)
		window_set_cursor(objPauseController.cursor)
		break;
		
	case 5: // Main Menu
		room_goto(mainMenuRoom)
		objPauseController.paused = false
		audio_stop_all()
		layer_set_visible("MainMenuLayer", true)
		layer_set_visible("PauseLayer", false)
		break;
	
	case 6: // Quit
		game_end()
		break;
		
	case 7: // Back
		if room = mainMenuRoom
		{
			layer_set_visible("MainMenuLayer", true)
		}else
		{
			layer_set_visible("PauseLayer", true)
		}
		layer_set_visible("SettingsLayer", false)
		window_set_cursor(objPauseController.cursor)
		break;
		
	case 8: //New game
		room_goto(battleRoom)
		layer_set_visible("MainMenuLayer", false)
		audio_stop_all()
		audio_play_sound(sfxMainThemeLoop, 0, true)
		break;
}