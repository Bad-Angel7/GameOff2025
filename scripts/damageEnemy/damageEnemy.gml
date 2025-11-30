// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function damageEnemy(damage, enemytodamage)
{
	if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
	{
		damage = ceil(damage * 1.25)
	}
	if ds_list_find_index(global.inventory, "Crit Ring") > -1
	{
		var randomNumber = irandom_range(0, 100)
		if randomNumber >= 90
		{
			damage = ceil(damage * 2)
			audio_play_sound(sfxCrit, 0, 0)
		}
	}

	
	if variable_instance_exists(global.currentAbility, "statusEffect")
	{
		statusEffect = variable_instance_exists(global.currentAbility, "statusEffect")
	}
	else statusEffect = noone
	
	if variable_instance_exists(global.currentAbility, "statusEffect2")
	{
		statusEffect2 = variable_instance_exists(global.currentAbility, "statusEffect2")
	}
	else statusEffect2 = noone
	
	//Resets the ability damage to what it SHOULD be since we are subtracting it after armor
	abilityDamage = damage
	
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
				global.textDamage = damage
				layer_sequence_create("Assets_1", target.x, target.y - target.sprite_height, seqDamage)
				damage = abilityDamage
				
				if target.currentArmor !=0 
				{
					var damageReduction = target.currentArmor
					target.currentArmor -= damage
					if target.currentArmor < 0
					{
						target.currentArmor = 0
					}
					damage -= damageReduction
					if damage < 0 
					{
						damage = 0
					}
				}
				
				if target.currentArmor <= 0
				{
					target.currentHP -= damage
				}
				
				//Check if there is a status effect to reduce amount of checks required
				if statusEffect != noone || statusEffect2 != noone
				{
					if statusEffect == variable_instance_exists(global.currentAbility, "drenched")
					{
						target.drenched = global.currentAbility.statusTurn
					}
					if statusEffect == variable_instance_exists(global.currentAbility, "ignite")
					{
						if target.frost > 0
						{
							if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
							{
								target.currentHP -= ceil(10 * 1.25)
							}
							else
							{
								target.currentHP -= 10
							}
							audio_play_sound(sfxSystemShock, 0, 0)
							target.ignite = 0
							target.frost = 0
							global.textDamage = 10
							layer_sequence_create("Assets_1", target.x, target.y - target.sprite_height, seqDamage)
							if ds_list_find_index(global.inventory, "Ice Crystal") > -1
							{
								if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
								{
									target.currentHP -= ceil(10 * 1.25)
									global.textDamage = ceil(10 *1.25)
								}
								else
								{
									target.currentHP -= 10
									global.textDamage = 10
								}
								
								layer_sequence_create("Assets_1", target.x, target.y - target.sprite_height, seqDamage)
							}
						}
						else
						{
							if ds_list_find_index(global.inventory, "Incendiary Ring") > -1
							{
								target.ignite += 1
							}
							target.ignite += global.currentAbility.statusTurn
						}
					}				
				}
				
				if statusEffect2 == variable_instance_exists(global.currentAbility, "weak")
				{
					target.weak = global.currentAbility.statusTurn2
				}
				
				if statusEffect2 == variable_instance_exists(global.currentAbility, "shatter")
				{
					target.shatter = global.currentAbility.statusTurn2
				}
			}
		}
	}
	else
	{
		target = enemytodamage
		if statusEffect == variable_instance_exists(global.currentAbility, "lightning")
		{
			if target.drenched > 0
			{
				if ds_list_find_index(global.inventory, "Lightning Necklace") > -1
				{
					damage = ceil(damage * 2)
				}
				else
				{
					damage = ceil(damage * 1.50)
				}
			}
		}
		
		else if statusEffect == variable_instance_exists(global.currentAbility, "ignite")
		{
			if target.frost > 0
			{
				if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
				{
					target.currentHP -= ceil(10 * 1.25)
				}
				else
				{
					target.currentHP -= 10
				}
				
				audio_play_sound(sfxSystemShock, 0, 0)
				target.ignite = 0
				target.frost = 0
				global.textDamage = 10
				layer_sequence_create("Assets_1", target.x, target.y - target.sprite_height, seqDamage)
				if ds_list_find_index(global.inventory, "Ice Crystal") > -1
				{
					if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
					{
						target.currentHP -= ceil(10 * 1.25)
						global.textDamage = ceil(10 *1.25)
					}
					else
					{
						target.currentHP -= 10
						global.textDamage = 10
					}
					
					layer_sequence_create("Assets_1", target.x, target.y - target.sprite_height, seqDamage)
				}
			}
			else
			{
				if ds_list_find_index(global.inventory, "Incendiary Ring") > -1
				{
					target.ignite += 1
				}
				target.ignite += global.currentAbility.statusTurn
			}
		}				
		
		global.textDamage = damage
		layer_sequence_create("Assets_1", target.x, target.y - target.sprite_height, seqDamage)
		if target.currentArmor !=0 
		{
			var damageReduction = target.currentArmor
			target.currentArmor -= damage
			if target.currentArmor < 0
			{
				target.currentArmor = 0
			}
			damage -= damageReduction
			if damage < 0 
			{
				damage = 0
			}
		}
		
		if target.currentArmor <= 0
		{
			target.currentHP -= damage
		}

		if statusEffect == variable_instance_exists(global.currentAbility, "frost")
		{
			if target.ignite > 0
			{
				audio_play_sound(sfxSystemShock, 0, 0)
				target.currentHP -= 10
				target.ignite = 0
				target.frost = 0
				if ds_list_find_index(global.inventory, "Ice Crystal") > -1
				{
					target.currentHP -= 10
				}
			}
			else if variable_instance_exists(global.currentAbility, "statusTurn")
			{
				target.frost = global.currentAbility.statusTurn
			}
		}
		
		if statusEffect2 == variable_instance_exists(global.currentAbility, "weak")
		{
			target.weak = global.currentAbility.statusTurn2
		}
		
		if statusEffect2 == variable_instance_exists(global.currentAbility, "shatter")
		{
			target.shatter = global.currentAbility.statusTurn2
		}
	}
}