/// @description Insert description here
// You can write your code in this editor

name = "Error"
description = "Error"
price = 0
isPurchased = false

global.itemList = ds_list_create()
ds_list_add(global.itemList, "Incendiary Ring", "Test2", "Test3", "Test4", "Test5", "Test6")

randomItem = function()
{
	randomise()
	listSize = ds_list_size(global.itemList) - 1
	ds_list_shuffle(global.itemList)
	itemSelected = ds_list_find_value(global.itemList, 0)
	itemIndex = ds_list_find_index(global.itemList, itemSelected)
	ds_list_delete(global.itemList, itemIndex)
}
