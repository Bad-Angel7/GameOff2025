// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function damageEnemy(damage, enemytodamage)
{
	statusEffect = variable_instance_exists(global.currentAbility, "statusEffect")
	
	//acquire target being hit and damage then accordingly
	if variable_instance_exists(global.currentAbility, "multitarget")
	{
		if global.currentAbility.multitarget == all
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
					if statusEffect == variable_instance_exists(global.currentAbility, "drenched")
					{
						target.drenched = global.currentAbility.statusTurn
					}
					if statusEffect == variable_instance_exists(global.currentAbility, "ignite")
					{
						if target.frost > 0
						{
							target.currentHP -= 10
							target.ignite = 0
							target.frost = 0
						}
						else
						{
							target.ignite += global.currentAbility.statusTurn
						}
					}	
				}
			}
		}
	}
	else
	{
		target = enemytodamage
		target.currentHP -= damage
		
		if statusEffect == variable_instance_exists(global.currentAbility, "frost")
		{
			show_debug_message("Frost applied")
			if target.ignite > 0
			{
				target.currentHP -= 10
				target.ignite = 0
				target.frost = 0
			}
			else if variable_instance_exists(global.currentAbility, "statusTurn")
			{
				target.frost = global.currentAbility.statusTurn
			}
		}
	}
}