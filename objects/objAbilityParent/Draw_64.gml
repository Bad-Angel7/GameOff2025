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
	layer_text_alpha(textIDName, 1)
	
	//Damage, Heal or Armor Text
	var textPanelType = flexpanel_node_get_child(uiLayer, "AbilityType")
	var textStructType = flexpanel_node_get_struct(textPanelType)
	var textIDType = textStructType.layerElements[0].elementId
	layer_text_alpha(textIDType, 1)

	///Not sure why this needs to be backwards?
	if variable_instance_exists(abilityHover, "armor")
	{
		layer_text_text(textIDType, "Armor")
	}

	else if variable_instance_exists(abilityHover, "damage")
	{
		layer_text_text(textIDType, "Damage")
	}
	else if variable_instance_exists(abilityHover, "heal")
	{
		layer_text_text(textIDType, "Heal")
	}
	
	
	//Damage, Heal or Armor Numbers
	var textPanelDamage = flexpanel_node_get_child(uiLayer, "DamageNumber")
	var textStructDamage = flexpanel_node_get_struct(textPanelDamage)
	var textIDDamage = textStructDamage.layerElements[0].elementId
	var textIDDamage2 = textStructDamage.layerElements[1].elementId
	layer_text_alpha(textIDDamage, 1)
	layer_sprite_alpha(textIDDamage2, 1)
	
	if variable_instance_exists(abilityHover, "armor")
	{
		
		layer_sprite_change(textIDDamage2, sprEnemyBlock)
		layer_text_text(textIDDamage, abilityHover.armor)
	}
	
	else if variable_instance_exists(abilityHover, "damage")
	{
		layer_sprite_change(textIDDamage2, sprEnemyAttack)
		if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
		{
			damage = ceil(5 * 1.25)
		}
		else
		{
			damage = 5
		}
		layer_text_text(textIDDamage, abilityHover.damage)
	}
	else if variable_instance_exists(abilityHover, "heal")
	{
		layer_text_text(textIDDamage, abilityHover.heal)
	}

	var textPanelCostText = flexpanel_node_get_child(uiLayer, "AbilityCost")
	var textStructCostText = flexpanel_node_get_struct(textPanelCostText)
	var textIDCostText = textStructCostText.layerElements[0].elementId
	layer_text_alpha(textIDCostText, 1)
	
	//Energy Cost
	var textPanelCost = flexpanel_node_get_child(uiLayer, "EnergyNumber")
	var textStructCost = flexpanel_node_get_struct(textPanelCost)
	var textIDCost = textStructCost.layerElements[0].elementId
	var textIDCost2 = textStructCost.layerElements[1].elementId
	layer_text_text(textIDCost, abilityHover.energyCost)
	layer_text_alpha(textIDCost, 1)
	layer_sprite_alpha(textIDCost2, 1)
	
	if abilityHover.name == "Mana Blast"
	{
		layer_sprite_change(textIDCost2, sprMana)
	}
	else
	{
		layer_sprite_change(textIDCost2, sprEnergy)
	}
	
	
	//Status
	var textPanelStatusType = flexpanel_node_get_child(uiLayer, "AbilityStatus")
	var textStructStatusType = flexpanel_node_get_struct(textPanelStatusType)
	var textIDStatusType = textStructStatusType.layerElements[0].elementId
	layer_text_alpha(textIDStatusType, 1)
	
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
	else if variable_instance_exists(abilityHover, "lightning")
	{
		layer_text_text(textIDStatusType, "Lightning")
	}
	else //Should probably find a better way to toggle this??
	{
		layer_text_text(textIDStatusType, "")
	}
	
	//Status turns
	var textPanelStatusTurn = flexpanel_node_get_child(uiLayer, "StatusTurn")
	var textStructStatusTurn = flexpanel_node_get_struct(textPanelStatusTurn)
	var textIDStatusTurn = textStructStatusTurn.layerElements[0].elementId
	var textIDStatusTurn2 = textStructStatusTurn.layerElements[1].elementId
	layer_text_alpha(textIDStatusTurn, 1)
	layer_sprite_alpha(textIDStatusTurn2, 1)
	
	
	if variable_instance_exists(abilityHover, "ignite")
	{
		layer_sprite_change(textIDStatusTurn2, sprIgnite)
	}
	else if variable_instance_exists(abilityHover, "drenched")
	{
		layer_sprite_change(textIDStatusTurn2, sprDrenched)
	}
	else if variable_instance_exists(abilityHover, "frost")
	{
		layer_sprite_change(textIDStatusTurn2, sprFrost)
	}
	else if variable_instance_exists(abilityHover, "lightning")
	{
		layer_sprite_change(textIDStatusTurn2, sprLightning)
	}
	else //Should probably find a better way to toggle this??
	{
		layer_sprite_alpha(textIDStatusTurn2, 0)
	}
	
	if variable_instance_exists(abilityHover, "statusTurn")
	{
		layer_text_text(textIDStatusTurn, abilityHover.statusTurn)
	}
	else
	{
		layer_text_text(textIDStatusTurn, "")
	}
	
	//Status2
	var textPanelStatus2Type = flexpanel_node_get_child(uiLayer, "AbilityStatus2")
	var textStructStatus2Type = flexpanel_node_get_struct(textPanelStatus2Type)
	var textIDStatus2Type = textStructStatus2Type.layerElements[0].elementId
	layer_text_alpha(textIDStatus2Type, 1)
	
	if variable_instance_exists(abilityHover, "weak")
	{
		layer_text_text(textIDStatus2Type, "Weak")
	}
	else if variable_instance_exists(abilityHover, "shatter")
	{
		layer_text_text(textIDStatus2Type, "Shatter")
	}
	else //Should probably find a better way to toggle this??
	{
		layer_text_text(textIDStatus2Type, "")
	}
	
	//Status turns2
	var textPanelStatus2Turn = flexpanel_node_get_child(uiLayer, "StatusTurn2")
	var textStructStatus2Turn = flexpanel_node_get_struct(textPanelStatus2Turn)
	var textIDStatus2Turn = textStructStatus2Turn.layerElements[0].elementId
	var textIDStatus2Turn2 = textStructStatus2Turn.layerElements[1].elementId
	layer_text_alpha(textIDStatus2Turn, 1)
	layer_sprite_alpha(textIDStatus2Turn2, 1)
	
	
	if variable_instance_exists(abilityHover, "weak")
	{
		layer_sprite_change(textIDStatus2Turn2, sprWeak)
	}
	else if variable_instance_exists(abilityHover, "shatter")
	{
		layer_sprite_change(textIDStatus2Turn2, sprShatter)
	}
	else //Should probably find a better way to toggle this??
	{
		layer_sprite_alpha(textIDStatus2Turn2, 0)
	}
	
	
	if variable_instance_exists(abilityHover, "statusTurn2")
	{
		layer_text_text(textIDStatus2Turn, abilityHover.statusTurn2)
	}
	else
	{
		layer_text_text(textIDStatus2Turn, "")
	}
	
	//AOE Type
	var textPanelAoeType = flexpanel_node_get_child(uiLayer, "AbilityAoe")
	var textStructAoeType = flexpanel_node_get_struct(textPanelAoeType)
	var textIDAoeType = textStructAoeType.layerElements[0].elementId
	layer_text_alpha(textIDAoeType, 1)
	
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
	layer_text_alpha(textIDAoeStatus, 1)
	
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

if global.ability1 != "Empty" && layer_get_visible("SelectionLayer")
{
	//objAbility1.sprite_index = abilityHover.sprite_index
}