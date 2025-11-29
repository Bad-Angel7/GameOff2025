// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyActions(action)
{
	if damage != noone
	{	
		if ds_list_find_index(global.inventory, "Fancy Hat") > -1
		{
			damage = floor(damage * 1.25)
		}
		
		if weak > 0
		{
			damage = floor(damage * .75) 
		}
		
		if objPlayer.currentArmor !=0 
		{
			var damageReduction = objPlayer.currentArmor
			objPlayer.currentArmor -= damage
			
			if objPlayer.currentArmor < 0
			{
				objPlayer.currentArmor = 0
			}
			damage -= damageReduction
			if damage < 0 
			{
				damage = 0
			}
		}
		
		if objPlayer. currentArmor <= 0
		{
			if objPlayer.cloakUsed = false && ds_list_find_index(global.inventory, "Cloak of Displacement") > -1 && damage != 0
			{
				objPlayer.cloakUsed = true
				damage = 0
			}
			
			global.textDamage = damage
			layer_sequence_create("Assets_1", objPlayer.x, objPlayer.y - objPlayer.sprite_height, seqDamage)
			objPlayer.currentHP -= damage
			
			if damage > 0 && ds_list_find_index(global.inventory, "Battlemage Armor") > -1
			{
				objPlayer.currentMana += 1
			}
		}
	}
	
	if armor != noone
	{
		if shatter > 0
		{
			armor = floor(armor * global.armorReduction) 
		}
		target = instance_nearest(x, y, objEnemyParent)
		target.currentArmor += armor
	}
	actionUsed = true
}