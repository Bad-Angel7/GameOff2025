/// @description Insert description here
// You can write your code in this editor

if room = battleRoom
{
	alarm[1] = 1
}

if room = battleRoom || room = shopRoom
{
	layer_set_visible("StatsLayer", true)
	layer_set_visible("AbilityIconsLayer", true)
	layer_set_visible("MeasuringLayer", true)
}
else
{
	layer_set_visible("StatsLayer", false)
	layer_set_visible("AbilityIconsLayer", false)
	layer_set_visible("MeasuringLayer", false)
}

//Kinda shit but resets the inventory when in the main menu lol
if room = mainMenuRoom
{
	ds_list_clear(global.inventory)
	
	global.item1 = false 
	global.item2 = false
	global.item3 = false 
	global.item4 = false
	global.item5 = false 
	global.item6 = false
	global.item7 = false 
	global.item8 = false
	global.item9 = false
	global.item10 = false
	
	instance_destroy(objInventoryItem)
}
