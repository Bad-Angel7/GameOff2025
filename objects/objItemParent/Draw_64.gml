/// @description Insert description here
// You can write your code in this editor


if position_meeting(mouse_x, mouse_y, objItemParent)
{
	var item = instance_nearest(mouse_x, mouse_y, objItemParent)
	draw_text(item.x - (sprite_width/2), item.y - sprite_height, "itemDescription")
	if mouse_check_button_pressed(mb_left) && objPlayer.currentGold >= item.price && item.isPurchased = false
	{
		audio_play_sound(sfxMagicMissle, 0, 0)
		objPlayer.currentGold -= item.price
		item.isPurchased = true
		layer_set_visible("ShopLayer", false)
		ds_list_add(global.inventory, item.name)
		instance_destroy(item)
	}
}