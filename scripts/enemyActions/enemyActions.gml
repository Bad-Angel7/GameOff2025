// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyActions(action)
{
	if damage != noone
	{
		if objPlayer. currentArmor <= 0
		{
			objPlayer.currentHP -= damage
		}
		
		if objPlayer.currentArmor !=0 
		{
			objPlayer.currentArmor -= damage
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