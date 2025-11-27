/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x, mouse_y, objItemParent)
{
	item = instance_nearest(mouse_x, mouse_y, objItemParent)
	if mouse_check_button_pressed(mb_left) && objPlayer.currentGold >= item.price
	{
		show_message_async(item.itemSelected)
		audio_play_sound(sfxMagicMissle, 0, 0)
		objPlayer.currentGold -= item.price
		layer_set_visible("ShopLayer", false)	
		objInventoryItem.inventoryUpdate()
		ds_list_add(global.inventory, item.name)
		instance_destroy(item)
	}
	
	if mouse_check_button_pressed(mb_right)
	{
		show_message_async(item.itemSelected)
	}
}