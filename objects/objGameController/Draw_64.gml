/// @description Insert description here
// You can write your code in this editor


if room = battleRoom && objPauseController.paused = false && instance_exists(objPlayer)
{
	var uiLayer = layer_get_flexpanel_node("StatsLayer")
	
	//Wave
	var wavePanelName = flexpanel_node_get_child(uiLayer, "CurrentWave")
	var waveStructName = flexpanel_node_get_struct(wavePanelName)
	var waveIDName = waveStructName.layerElements[0].elementId
	layer_text_text(waveIDName, string(waveCounter))
	//draw_text_ext_transformed(displayResolutionX / 2, view_yport, "Score: " + string(currentScore), 4, 128, 2, 2, 0)
	
	//Timer
	var timerPanelName = flexpanel_node_get_child(uiLayer, "BonusTimer")
	var timerStructName = flexpanel_node_get_struct(timerPanelName)
	var timerIDName = timerStructName.layerElements[0].elementId
	layer_text_text(timerIDName, string_format((bonusTimer / 60), 2, 2))
}