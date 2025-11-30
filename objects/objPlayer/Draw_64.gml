/// @description Insert description here
// You can write your code in this editor

//ALWAYS draw GUI back to front

///draw health bar background
//draw_sprite(sprhealthbarbg, 0, healthbarx, healthbary)

///draw heath bar itself
//draw_sprite_stretched(sprHealthBar, 0, healthbarx, healthbary, 
//(currentHP/maxHP) * healthbarwidth, healthbarheight)

///draw health bar border
//draw_sprite_stretched(sprHealthBarBorder, 0, healthbarx, healthbary, healthbarwidth, healthbarheight)

//draw_text_ext_transformed(healthbarx, healthbary, string(currentHP) + "/" + string(maxHP), 4, 64, 2, 2, 0)
if instance_exists(objGameController)
{
	var uiLayer = layer_get_flexpanel_node("MeasuringLayer")
	
	//Energy
	var energyPanelName = flexpanel_node_get_child(uiLayer, "Energy")
	var energyStructName = flexpanel_node_get_struct(energyPanelName)
	var energyIDName = energyStructName.layerElements[0].elementId
	layer_text_text(energyIDName, objPlayer.currentEnergy)
	
	//Mana
	var manaPanelName = flexpanel_node_get_child(uiLayer, "Mana")
	var manaStructName = flexpanel_node_get_struct(manaPanelName)
	var manaIDName = manaStructName.layerElements[0].elementId
	layer_text_text(manaIDName, objPlayer.currentMana)
}


if global.currentAbility != noone
{
	layer_set_visible("AbilityLayer", true)
	var uiLayer = layer_get_flexpanel_node("AbilityLayer")
	
	//Name
	var textPanelName = flexpanel_node_get_child(uiLayer, "AbilityName")
	var textStructName = flexpanel_node_get_struct(textPanelName)
	var textIDName = textStructName.layerElements[0].elementId
	layer_text_text(textIDName, global.currentAbility.name)
	
	//Damage, Heal or Armor Text
	var textPanelType = flexpanel_node_get_child(uiLayer, "AbilityType")
	var textStructType = flexpanel_node_get_struct(textPanelType)
	var textIDType = textStructType.layerElements[0].elementId
	
	if variable_instance_exists(global.currentAbility, "damage")
	{
		layer_text_text(textIDType, "Damage")
	}
	else if variable_instance_exists(global.currentAbility, "heal")
	{
		layer_text_text(textIDType, "Heal:")
	}
	else if variable_instance_exists(global.currentAbility, "armor")
	{
		layer_text_text(textIDType, "Armor:")
	}
	
	
	//Damage, Heal or Armor Numbers
	var textPanelDamage = flexpanel_node_get_child(uiLayer, "DamageNumber")
	var textStructDamage = flexpanel_node_get_struct(textPanelDamage)
	var textIDDamage = textStructDamage.layerElements[0].elementId
	var textIDDamage2 = textStructDamage.layerElements[1].elementId
	
	if variable_instance_exists(global.currentAbility, "damage")
	{
		layer_sprite_change(textIDDamage2, sprEnemyAttack)
		if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
		{
			layer_text_text(textIDDamage, ceil(global.currentAbility.damage * 1.25))
		}
		else
		{
			layer_text_text(textIDDamage, global.currentAbility.damage)
		}
	}
	else if variable_instance_exists(global.currentAbility, "heal")
	{
		layer_text_text(textIDDamage, global.currentAbility.heal)
	}
	else if variable_instance_exists(global.currentAbility, "armor")
	{
		layer_sprite_change(textIDDamage2, sprEnemyBlock)
		layer_text_text(textIDDamage, global.currentAbility.armor)
	}
	
	
	//Energy Cost
	var textPanelCost = flexpanel_node_get_child(uiLayer, "EnergyNumber")
	var textStructCost = flexpanel_node_get_struct(textPanelCost)
	var textIDCost = textStructCost.layerElements[0].elementId
	layer_text_text(textIDCost, global.currentAbility.energyCost)
	
	//Status
	var textPanelStatusType = flexpanel_node_get_child(uiLayer, "AbilityStatus")
	var textStructStatusType = flexpanel_node_get_struct(textPanelStatusType)
	var textIDStatusType = textStructStatusType.layerElements[0].elementId
	
	if variable_instance_exists(global.currentAbility, "ignite")
	{
		layer_text_text(textIDStatusType, "Ignite")
	}
	else if variable_instance_exists(global.currentAbility, "drenched")
	{
		layer_text_text(textIDStatusType, "Drenched")
	}
	else if variable_instance_exists(global.currentAbility, "frost")
	{
		layer_text_text(textIDStatusType, "Frost")
	}
	else if variable_instance_exists(global.currentAbility, "lightning")
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
	
	if variable_instance_exists(global.currentAbility, "ignite")
	{
		layer_sprite_alpha(textIDStatusTurn2, 1)
		layer_sprite_change(textIDStatusTurn2, sprIgnite)
	}
	else if variable_instance_exists(global.currentAbility, "drenched")
	{
		layer_sprite_alpha(textIDStatusTurn2, 1)
		layer_sprite_change(textIDStatusTurn2, sprDrenched)
	}
	else if variable_instance_exists(global.currentAbility, "frost")
	{
		layer_sprite_alpha(textIDStatusTurn2, 1)
		layer_sprite_change(textIDStatusTurn2, sprFrost)
	}
	else if variable_instance_exists(global.currentAbility, "lightning")
	{
		layer_sprite_alpha(textIDStatusTurn2, 1)
		layer_sprite_change(textIDStatusTurn2, sprLightning)
	}
	else //Should probably find a better way to toggle this??
	{
		layer_sprite_alpha(textIDStatusTurn2, 0)
	}
	
	if variable_instance_exists(global.currentAbility, "statusTurn")
	{
		if ds_list_find_index(global.inventory, "Incendiary Ring") > -1 && variable_instance_exists(global.currentAbility, "ignite")
		{
			layer_text_text(textIDStatusTurn, global.currentAbility.statusTurn + 1)
		}
		else 
		{
			layer_text_text(textIDStatusTurn, global.currentAbility.statusTurn)
		}
		
	}
	else
	{
		layer_text_text(textIDStatusTurn, "")
	}
	
	//Status2 Definitely a much better way to do this but idk atm
	var textPanelStatus2Type = flexpanel_node_get_child(uiLayer, "AbilityStatus2")
	var textStructStatus2Type = flexpanel_node_get_struct(textPanelStatus2Type)
	var textIDStatus2Type = textStructStatus2Type.layerElements[0].elementId
	
	if variable_instance_exists(global.currentAbility, "weak")
	{
		layer_text_text(textIDStatus2Type, "Weak")
	}
	else if variable_instance_exists(global.currentAbility, "shatter")
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
	
	if variable_instance_exists(global.currentAbility, "weak")
	{
		layer_sprite_alpha(textIDStatus2Turn2, 1)
		layer_sprite_change(textIDStatus2Turn2, sprWeak)
	}
	else if variable_instance_exists(global.currentAbility, "shatter")
	{
		layer_sprite_alpha(textIDStatus2Turn2, 1)
		layer_sprite_change(textIDStatus2Turn2, sprShatter)
	}
	else //Should probably find a better way to toggle this??
	{
		layer_sprite_alpha(textIDStatus2Turn2, 0)
	}
	
	if variable_instance_exists(global.currentAbility, "statusTurn2")
	{
		layer_text_text(textIDStatus2Turn, global.currentAbility.statusTurn2)
	}
	else
	{
		layer_text_text(textIDStatus2Turn, "")
	}
	
	//AOE Type
	var textPanelAoeType = flexpanel_node_get_child(uiLayer, "AbilityAoe")
	var textStructAoeType = flexpanel_node_get_struct(textPanelAoeType)
	var textIDAoeType = textStructAoeType.layerElements[0].elementId
	
	if variable_instance_exists(global.currentAbility, "multitarget")
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
	
	if variable_instance_exists(global.currentAbility, "multitarget")
	{
		layer_text_text(textIDAoeStatus, "All")
	}
	else
	{
		layer_text_text(textIDAoeStatus, "")
	}
}
else 
{
	layer_set_visible("AbilityLayer", false)
}

	//HP
	var statsLayer = layer_get_flexpanel_node("StatsLayer")
	var textPanelPlayerHealth = flexpanel_node_get_child(statsLayer, "PlayerHealthText")
	var textStructPlayerHealth = flexpanel_node_get_struct(textPanelPlayerHealth)
	var textIDPlayerHealth = textStructPlayerHealth.layerElements[0].elementId
	layer_text_text(textIDPlayerHealth, string(currentHP) + " : " + string(maxHP))
	
	//Armor
	var textPanelPlayerArmor = flexpanel_node_get_child(statsLayer, "PlayerArmorText")
	var textStructPlayerArmor = flexpanel_node_get_struct(textPanelPlayerArmor)
	var textIDPlayerArmor = textStructPlayerArmor.layerElements[0].elementId
	layer_text_text(textIDPlayerArmor, string(currentArmor))
	
	//Gold
	var textPanelGold = flexpanel_node_get_child(statsLayer, "CurrentGold")
	var textStructGold = flexpanel_node_get_struct(textPanelGold)
	var textIDGold = textStructGold.layerElements[0].elementId
	layer_text_text(textIDGold, string(currentGold))

//parent?
if position_meeting(mouse_x, mouse_y, objEnemyParent)
{
	nearestEnemy = instance_nearest(mouse_x, mouse_y, objEnemyParent)
	var target = nearestEnemy
	enemySelect(target)
}

if position_meeting(mouse_x, mouse_y, objPlayer)
{
	nearestPlayer = instance_nearest(mouse_x, mouse_y, objPlayer)
	var target = nearestPlayer
	playerSelect(target)
}

///Switch statements are used as many IFs and Else statements
///Require a constant which doesn't seem to work with my toggle atm
//switch (keyboard_key) 
//{
//	case ord("1"):
//	//code
//	break;
//}

//else if (position_meeting(mouse_x, mouse_y, objMagicMissle))
//{
//	global.ability = instance_nearest(mouse_x, mouse_y, objMagicMissle)
	
//	//Show ID of current target to check if correct
//	if debugShown == false
//	{
//		show_debug_message(global.ability.id)
//		debugShown = true
//	}
//}
//else if (position_meeting(mouse_x, mouse_y, objMagicMissle))
//{
//	global.ability = instance_nearest(mouse_x, mouse_y, objMagicMissle)
	
//	//Show ID of current target to check if correct
//	if debugShown == false
//	{
//		show_debug_message(global.ability.id)
//		debugShown = true
//	}
//}
//else if (position_meeting(mouse_x, mouse_y, objFireball))
//{
//	global.ability = instance_nearest(mouse_x, mouse_y, objFireball)
	
//	//Show ID of current target to check if correct
//	if debugShown == false
//	{
//		show_debug_message(global.ability.id)
//		debugShown = true
//	}
//}
//else if (position_meeting(mouse_x, mouse_y, objWaterBlast))
//{
//	global.ability = instance_nearest(mouse_x, mouse_y, objWaterBlast)
	
//	//Show ID of current target to check if correct
//	if debugShown == false
//	{
//		show_debug_message(global.ability.id)
//		debugShown = true
//	}
//}
//else if (position_meeting(mouse_x, mouse_y, objFrostBeam))
//{
//	global.ability = instance_nearest(mouse_x, mouse_y, objFrostBeam)
	
//	//Show ID of current target to check if correct
//	if debugShown == false
//	{
//		show_debug_message(global.ability.id)
//		debugShown = true
//	}
//}
//else if (position_meeting(mouse_x, mouse_y, objShield))
//{
//	global.ability = instance_nearest(mouse_x, mouse_y, objShield)
	
//	//Show ID of current target to check if correct
//	if debugShown == false
//	{
//		show_debug_message(global.ability.id)
//		debugShown = true
//	}
//}
//else if global.currentAbility == noone
//{
//	global.ability = noone
//}

if global.currentAbility != noone
{
	abilitySelect(global.currentAbility)
	abilityUIToggle = true
}

if global.currentAbility == noone
{
	abilityUIToggle = false
}

//show_debug_message(abilityUIToggle)