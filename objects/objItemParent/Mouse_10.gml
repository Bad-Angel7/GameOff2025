/// @description Insert description here
// You can write your code in this editor

itemHover = instance_nearest(mouse_x, mouse_y, objItemParent)

if itemHover.isPurchased = false
{
	layer_set_visible("ShopLayer", true)
}
else layer_set_visible("ShopLayer", false)


var uiLayer = layer_get_flexpanel_node("ShopLayer")
	
//Name
var textPanelName = flexpanel_node_get_child(uiLayer, "ItemName")
var textStructName = flexpanel_node_get_struct(textPanelName)
var textIDName = textStructName.layerElements[0].elementId
layer_text_text(textIDName, itemHover.name)

//Description
var descriptionPanelName = flexpanel_node_get_child(uiLayer, "ItemDescription")
var descriptionStructName = flexpanel_node_get_struct(descriptionPanelName)
var descriptionIDName = descriptionStructName.layerElements[0].elementId
layer_text_text(descriptionIDName, itemHover.description)

//Price
var pricePanelName = flexpanel_node_get_child(uiLayer, "ItemPrice")
var priceStructName = flexpanel_node_get_struct(pricePanelName)
var priceIDName = priceStructName.layerElements[0].elementId
layer_text_text(priceIDName, itemHover.price)