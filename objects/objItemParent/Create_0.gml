/// @description Insert description here
// You can write your code in this editor

name = "Empty"
description = "Item pool has been emptied! Well done"
price = 999
isPurchased = false

if instance_exists(objItemParent)
{
	randomItem = function()
	{	
		randomise()
		listSize = ds_list_size(global.itemList) - 1
		ds_list_shuffle(global.itemList)
		itemSelected = ds_list_find_value(global.itemList, 0)
		itemIndex = ds_list_find_index(global.itemList, itemSelected)
		
		ds_list_add(global.tempList, itemSelected)
		ds_list_delete(global.itemList, itemIndex)
	}
}


