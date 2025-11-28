/// @description Insert description here
// You can write your code in this editor


if room = shopRoom
{	
	layer_set_visible("ShopLayer", false)	
	var listSize = ds_list_size(global.tempList) - 1
	ds_list_shuffle(global.tempList)
	var itemSelected = ds_list_find_value(global.tempList, 0)
	var itemIndex = ds_list_find_index(global.tempList, itemSelected)
	
	ds_list_add(global.itemList, itemSelected)
	ds_list_delete(global.tempList, itemIndex)

}