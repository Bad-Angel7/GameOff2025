/// @description Insert description here
// You can write your code in this editor


if room = battleRoom && objPauseController.paused = false && instance_exists(objPlayer)
{
	draw_text_ext_transformed(displayResolutionX / 4, view_yport, string(bonusTimer) / 60, 4, 64, 2, 2, 0)
	draw_text_ext_transformed(displayResolutionX / 8, view_yport, "Wave: " + string(waveCounter), 4, 128, 2, 2, 0)
	draw_text_ext_transformed(displayResolutionX / 3, view_yport, "Gold: " + string(objPlayer.currentGold), 4, 128, 2, 2, 0)
	
}
if room = shopRoom && objPauseController.paused = false && instance_exists(objPlayer)
{
	draw_text_ext_transformed(displayResolutionX / 3, view_yport, "Gold: " + string(objPlayer.currentGold), 4, 128, 2, 2, 0)
}