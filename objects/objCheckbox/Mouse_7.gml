/// @description Insert description here
// You can write your code in this editor

enabled = !enabled

image_alpha = 0.4 + enabled * 0.6

switch (settingID)
{
	case 1: // Fullscreen
		objPauseController.fullscreenUpdate()
		objButton.menuAudioUpdate()		
		break;
	
	case 2: // Borderless Window
		objPauseController.borderlessUpdate()
		objButton.menuAudioUpdate()
		break;
		
	case 3: // Nothing
		
		break;
		
	case 4: // Nothing
		
		
		break;
		
	case 5: // Nothing
		
		break;
	
	case 6: // Audio (Eventually)
		
		break;
}