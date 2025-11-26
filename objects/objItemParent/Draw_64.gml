/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x, mouse_y, objItemParent)
{
	var item = instance_nearest(mouse_x, mouse_y, objItemParent)
	if mouse_check_button_pressed(mb_left) && objPlayer.currentGold >= item.price && item.isPurchased = false
	{
		audio_play_sound(sfxMagicMissle, 0, 0)
		objPlayer.currentGold -= item.price
		item.isPurchased = true
		layer_set_visible("ShopLayer", false)
		ds_list_add(global.inventory, item.name)
		var test = ds_list_size(global.inventory) - 1
		show_message_async(ds_list_find_value(global.inventory, test))
		show_message_async(ds_list_find_index(global.inventory, "Incendiary Ring"))
		show_message_async(ds_list_find_index(global.inventory, "Test4"))
		objInventoryItem.inventoryUpdate()
		instance_destroy(item)
	}
	
	//if item.isPurchased = true 
	//{
	//	var test = ds_list_find_index(global.inventory, 0)
	//	show_message_async(ds_list_find_index(global.inventory, ))
	//}
}