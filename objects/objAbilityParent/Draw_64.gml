/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x, mouse_y, objAbilityParent)
{
	abilityHover = instance_nearest(mouse_x, mouse_y, objAbilityParent)
	var uiLayer = layer_get_flexpanel_node("SelectionLayer")
	
	//Name
	var textPanelName = flexpanel_node_get_child(uiLayer, "AbilityName")
	var textStructName = flexpanel_node_get_struct(textPanelName)
	var textIDName = textStructName.layerElements[0].elementId
	layer_text_text(textIDName, abilityHover.name)
	
	//Damage, Heal or Armor Text
	var textPanelType = flexpanel_node_get_child(uiLayer, "AbilityType")
	var textStructType = flexpanel_node_get_struct(textPanelType)
	var textIDType = textStructType.layerElements[0].elementId
	
	if variable_instance_exists(abilityHover, "damage")
	{
		layer_text_text(textIDType, "Damage")
	}
	else if variable_instance_exists(abilityHover, "heal")
	{
		layer_text_text(textIDType, "Heal")
	}
	else if variable_instance_exists(abilityHover, "armor")
	{
		layer_text_text(textIDType, "Armor")
	}
	
	
	//Damage, Heal or Armor Numbers
	var textPanelDamage = flexpanel_node_get_child(uiLayer, "DamageNumber")
	var textStructDamage = flexpanel_node_get_struct(textPanelDamage)
	var textIDDamage = textStructDamage.layerElements[0].elementId
	
	if variable_instance_exists(abilityHover, "damage")
	{
		layer_text_text(textIDDamage, abilityHover.damage)
	}
	else if variable_instance_exists(abilityHover, "heal")
	{
		layer_text_text(textIDDamage, abilityHover.heal)
	}
	else if variable_instance_exists(abilityHover, "armor")
	{
		layer_text_text(textIDDamage, abilityHover.armor)
	}
	
	
	//Energy Cost
	var textPanelCost = flexpanel_node_get_child(uiLayer, "EnergyNumber")
	var textStructCost = flexpanel_node_get_struct(textPanelCost)
	var textIDCost = textStructCost.layerElements[0].elementId
	layer_text_text(textIDCost, abilityHover.energyCost)
	
	//Status
	var textPanelStatusType = flexpanel_node_get_child(uiLayer, "AbilityStatus")
	var textStructStatusType = flexpanel_node_get_struct(textPanelStatusType)
	var textIDStatusType = textStructStatusType.layerElements[0].elementId
	
	if variable_instance_exists(abilityHover, "ignite")
	{
		layer_text_text(textIDStatusType, "Ignite")
	}
	else if variable_instance_exists(abilityHover, "drenched")
	{
		layer_text_text(textIDStatusType, "Drenched")
	}
	else if variable_instance_exists(abilityHover, "frost")
	{
		layer_text_text(textIDStatusType, "Frost")
	}
	else //Should probably find a better way to toggle this??
	{
		layer_text_text(textIDStatusType, "")
	}
	
	//Status turns
	var textPanelStatusTurn = flexpanel_node_get_child(uiLayer, "StatusTurn")
	var textStructStatusTurn = flexpanel_node_get_struct(textPanelStatusTurn)
	var textIDStatusTurn = textStructStatusTurn.layerElements[0].elementId
	
	if variable_instance_exists(abilityHover, "statusTurn")
	{
		layer_text_text(textIDStatusTurn, abilityHover.statusTurn)
	}
	else
	{
		layer_text_text(textIDStatusTurn, "")
	}
	
	//AOE Type
	var textPanelAoeType = flexpanel_node_get_child(uiLayer, "AbilityAoe")
	var textStructAoeType = flexpanel_node_get_struct(textPanelAoeType)
	var textIDAoeType = textStructAoeType.layerElements[0].elementId
	
	if variable_instance_exists(abilityHover, "multitarget")
	{
		layer_text_text(textIDAoeType, "AOE")
	}
	else
	{
		layer_text_text(textIDAoeType, "")
	}
	
	//AOE Status
	var textPanelAoeStatus = flexpanel_node_get_child(uiLayer, "AoeName")
	var textStructAoeStatus = flexpanel_node_get_struct(textPanelAoeStatus)
	var textIDAoeStatus = textStructAoeStatus.layerElements[0].elementId
	
	if variable_instance_exists(abilityHover, "multitarget")
	{
		layer_text_text(textIDAoeStatus, "All")
	}
	else
	{
		layer_text_text(textIDAoeStatus, "")
	}
}

if layer_get_visible("SelectionLayer") = true
{
	if position_meeting(mouse_x, mouse_y, objAbilityParent)
	{
		var ability = instance_nearest(mouse_x, mouse_y, objAbilityParent)
		abilitySelect(ability)
	}
}

if global.ability1 != false && layer_get_visible("SelectionLayer")
{
	//objAbility1.sprite_index = abilityHover.sprite_index
}