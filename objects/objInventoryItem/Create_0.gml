/// @description Insert description here
// You can write your code in this editor


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


inventoryUpdate = function()
{
		if global.item1 = false
		{
			objItemSlot1.sprite_index = global.itemHover.sprite_index
			global.item1 = global.itemHover.itemName
			objItemSlot1.inventoryItem = global.itemHover.itemSelected
			//objItemSlot1.sprite_index = objItemSlot1.inventoryItem
			exit
		}

		if global.item2 = false
		{
			objItemSlot2.sprite_index = global.itemHover.sprite_index
			global.item2 = global.itemHover.itemName
			objItemSlot2.inventoryItem = global.itemHover.itemSelected
			exit
		}
		
		if global.item3 = false
		{
			objItemSlot3.sprite_index = global.itemHover.sprite_index
			global.item3 = global.itemHover.itemName
			objItemSlot3.inventoryItem = global.itemHover.itemSelected
			exit
		}
		
		if global.item4 = false
		{
			objItemSlot4.sprite_index = global.itemHover.sprite_index
			global.item4 = global.itemHover.itemName
			objItemSlot4.inventoryItem = global.itemHover.itemSelected
			exit
		}
		
		if global.item5 = false
		{
			objItemSlot5.sprite_index = global.itemHover.sprite_index
			global.item5 = global.itemHover.itemName
			objItemSlot5.inventoryItem = global.itemHover.itemSelected
			exit
		}
		
		if global.item6 = false
		{
			objItemSlot6.sprite_index = global.itemHover.sprite_index
			global.item6 = global.itemHover.itemName
			objItemSlot6.inventoryItem = global.itemHover.itemSelected
			exit
		}
		
		if global.item7 = false
		{
			objItemSlot7.sprite_index = global.itemHover.sprite_index
			global.item7 = global.itemHover.itemName
			objItemSlot7.inventoryItem = global.itemHover.itemSelected
			exit
		}
		
		if global.item8 = false
		{
			objItemSlot8.sprite_index = global.itemHover.sprite_index
			global.item8 = global.itemHover.itemName
			objItemSlot8.inventoryItem = global.itemHover.itemSelected
			exit
		}
		
		if global.item9 = false
		{
			objItemSlot9.sprite_index = global.itemHover.sprite_index
			global.item9 = global.itemHover.itemName
			objItemSlot9.inventoryItem = global.itemHover.itemSelected
			exit
		}
		
		if global.item10 = false
		{
			objItemSlot10.sprite_index = global.itemHover.sprite_index
			global.item10 = global.itemHover.itemName
			objItemSlot10.inventoryItem = global.itemHover.itemSelected
			exit
		}

}

///UI Updates
//Name
var uiLayer = layer_get_flexpanel_node("MeasuringLayer")
var textPanelName = flexpanel_node_get_child(uiLayer, "ItemName")
var textStructName = flexpanel_node_get_struct(textPanelName)
textIDName = textStructName.layerElements[0].elementId

//Description
var descriptionPanelName = flexpanel_node_get_child(uiLayer, "ItemDescription")
var descriptionStructName = flexpanel_node_get_struct(descriptionPanelName)
descriptionIDName = descriptionStructName.layerElements[0].elementId

layer_text_alpha(textIDName, 0)
layer_text_alpha(descriptionIDName, 0)