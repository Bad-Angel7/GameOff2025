// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyActions(action)
{
	if damage != noone
	{	
		if frost > 0
		{
			damage = round(damage * .70) 
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
			objPlayer.currentHP -= damage
			
		}
	}
	
	if armor != noone
	{
		target = instance_nearest(x, y, objEnemyParent)
		target.currentArmor += armor
	}
	
	actionUsed = true
	with (objGameController)
		alarm[0] = 120
}