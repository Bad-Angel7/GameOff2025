/// @description Insert description here
// You can write your code in this editor


if position_meeting(mouse_x, mouse_y, objInventoryItem)
{
	itemHover = instance_nearest(mouse_x, mouse_y, objInventoryItem)
	var uiLayer = layer_get_flexpanel_node("MeasuringLayer")

	if itemHover.image_alpha != 0
	{
		///Turn item names and descriptions visible and set them to current item
		//Name
		layer_text_alpha(textIDName, 1)
		layer_text_text(textIDName, itemHover.name)
		
		//Description
		layer_text_alpha(descriptionIDName, 1)
		layer_text_text(descriptionIDName, itemHover.description)
	}
}