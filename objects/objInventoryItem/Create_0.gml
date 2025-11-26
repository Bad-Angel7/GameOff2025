/// @description Insert description here
// You can write your code in this editor

visible = false
item1 = false 
item2 = false
item3 = false 
item4 = false
item5 = false 
item6 = false
item7 = false 
item8 = false

inventoryUpdate = function()
{
	//var items = instance_number(objInventoryItem)
	//var itemInstance = array_create(items)
	
	//for (var i = 0; i < items; ++i)
	//{
	//	itemInstance[i] = instance_find(objInventoryItem, i)
	//	itemPoint = itemInstance[i]
	//}	
	
	//Dunno what to do with this. Always returns the last item for some reason and doesn't change the
	//sprite. Just sets it to visible??
	if ds_list_size(global.inventory) - 1 > -1
	{
		var uiLayer = layer_get_flexpanel_node("MeasuringLayer")
		if item1 = false
		{
			var itemPanelName = flexpanel_node_get_child(uiLayer, "Item9")
			var itemStructName = flexpanel_node_get_struct(itemPanelName)
			var itemIDName = itemStructName.layerElements[0].elementId
			var layerid = layer_get_id("MeasuringLayer")
			var itemSprite = layer_sprite_get_id(layerid, "inst_98AFA03")
			layer_sprite_change(itemSprite, sprIncendiaryRing)
			item1 = true
			visible = true
			exit
		}

		if item2 = false
		{
			var itemPanel2Name = flexpanel_node_get_child(uiLayer, "Item2")
			var itemStruct2Name = flexpanel_node_get_struct(itemPanel2Name)
			var itemID2Name = itemStruct2Name.layerElements[0].elementId
			layer_sprite_change(itemID2Name, sprPoisonRing)
			item2 = true
			exit
		}
		visible = true
	}
	else
	{
		visible = false
	}
}