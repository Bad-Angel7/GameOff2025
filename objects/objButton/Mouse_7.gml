/// @description Insert description here
// You can write your code in this editor

switch (buttonID)
{
	case 1: // Resume
		objGameController.paused = false
		objGameController.pauseUpdate()
		break;
		
	case 2: // Settings
		
		break;
	
	case 6: // Quit
		game_end()
		break;
}