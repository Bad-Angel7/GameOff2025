/// @description Insert description here
// You can write your code in this editor

switch (buttonID)
{
	case 1: // Resume
		objGameController.paused = false
		objGameController.pauseUpdate()
		window_set_cursor(objPauseController.cursor)
		break;
	
	case 2: // Restart
		
		break;
		
	case 3: // Index
		
		break;
		
	case 4: // Settings
		layer_set_visible("PauseLayer", false)
		layer_set_visible("SettingsLayer", true)
		window_set_cursor(objPauseController.cursor)
		break;
		
	case 5: // Main Menu
		
		break;
	
	case 6: // Quit
		game_end()
		break;
		
	case 7: // Back
		layer_set_visible("PauseLayer", true)
		layer_set_visible("SettingsLayer", false)
		window_set_cursor(objPauseController.cursor)
		break;
}