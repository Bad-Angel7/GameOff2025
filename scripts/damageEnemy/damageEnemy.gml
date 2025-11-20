// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function damageEnemy(damage, enemytodamage, multitarget, statusEffect)
{
	//acquire target being hit and damage then accordingly
	if multitarget == all
	{
		var enemies = instance_number(objEnemyParent)
		var enemyInstances = array_create(enemies)
		
		for (var i = 0; i < enemies; ++i)
		{
			enemyInstances[i] = instance_find(objEnemyParent, i)
			target = enemyInstances[i]
			target.currentHP -= damage		
			
			//Check if there is a status effect to reduce amount of checks required
			if statusEffect != noone
			{
				//Make sure all the status effects besides their own is FALSE!!
				if statusEffect == global.currentAbility.drenched
				{
					target.drenched = 3
				}
				if statusEffect == global.currentAbility.ignite
				{
					if target.frost > 0
					{
						target.currentHP -= 10
						target.ignite = 0
						target.frost = 0
					}
					else
					{
						target.ignite += 2	
					}
				}	
			}
		}
	}
	else
	{
		target = enemytodamage
		target.currentHP -= damage
		
		if statusEffect == global.currentAbility.frost
		{
			show_debug_message("Frost applied")
			if target.ignite > 0
			{
				target.currentHP -= 10
				target.ignite = 0
				target.frost = 0
			}
			else
			{
				target.frost = 4
			}
		}
	}
}