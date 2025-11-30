/// @description Insert description here
// You can write your code in this editor

//changeable health bar settings

///Check if game controller exists for restart
if !instance_exists(objGameController)
{
	instance_create_depth(x, y, 0, objGameController)
	with objGameController
		alarm[1] = 1
}

if !instance_exists(objEnemyParent)
{
	if roundEnd = false
	{
		roundEnd = true
		with objGameController
			alarm[2] = 1
	}
}

if instance_exists(objGameController)
{
	healthbarwidth = objGameController.displayResolutionX
	healthbarheight = objGameController.displayResolutionY/8
	//health bar pos based on screen
	//healthbarx = (100) - (healthbarwidth/2)
	healthbarx = xstart - sprite_width
	//ystart - 100 is 100 pixels above player
	healthbary = ystart - sprite_height
}



//Find enemy nearest mouse position and apply ability damage to them
//Going to try to find a way to select enemy position instead of enemy type in the future
///USE PARENTS!!!!!!!!!!!!! ITS SO SIMPLE YOU MORON
if (position_meeting(mouse_x, mouse_y, objEnemyParent))
{
	var enemytodamage = instance_nearest(mouse_x, mouse_y, objEnemyParent)
	
	if instance_exists(enemytodamage)
	{
		//On mouse button click, check to make sure an ability is selected and use said ability on target
		if mouse_check_button_pressed(mb_left) && global.currentAbility != noone && playerTurn = true
		{
			if (currentEnergy - global.currentAbility.energyCost) > -1 && variable_instance_exists(global.currentAbility, "canTargetEnemy")
			{
				damageEnemy(global.currentAbility.damage, enemytodamage)
				
				if audio_is_playing(global.currentAbility.audio)
				{
					audio_stop_sound(global.currentAbility.audio)	
				}
				audio_play_sound(global.currentAbility.audio, 0, 0)
				currentEnergy -= global.currentAbility.energyCost
			}
			else if (currentMana - global.currentAbility.energyCost) > -1 && variable_instance_exists(global.currentAbility, "canTargetEnemy")
			{
				damageEnemy(global.currentAbility.damage, enemytodamage)
				
				if audio_is_playing(global.currentAbility.audio)
				{
					audio_stop_sound(global.currentAbility.audio)	
				}
				audio_play_sound(global.currentAbility.audio, 0, 0)
				currentMana -= global.currentAbility.energyCost
			}
			else if ((currentEnergy + currentMana) - global.currentAbility.energyCost) > -1 && variable_instance_exists(global.currentAbility, "canTargetEnemy")
			{
				damageEnemy(global.currentAbility.damage, enemytodamage)
				
				if audio_is_playing(global.currentAbility.audio)
				{
					audio_stop_sound(global.currentAbility.audio)	
				}
				audio_play_sound(global.currentAbility.audio, 0, 0)
				currentEnergy -= (global.currentAbility.energyCost / 2)
				currentMana -= (global.currentAbility.energyCost / 2)
			}
			
			if global.currentAbility.ability == "ManaBlast" && manaBlastUsed = false
			{
				currentMana = 0
				manaBlastUsed = true
				with objAbilitySlotParent
					alarm[0] = 1
			}
			
		}
		
		
		///Knight abilities
		//if keyboard_check_pressed(1)
		//{
		//	var damage = 7
		//	damageEnemy(damage, enemytodamage)
		//}
	}

}
else if (position_meeting(mouse_x, mouse_y, objPlayer))
{
	if instance_exists(objPlayer)
	{
		if mouse_check_button_pressed(mb_left) && global.currentAbility != noone && variable_instance_exists(global.currentAbility, "canTargetPlayer") && room = battleRoom && playerTurn = true
		{
			if (currentEnergy - global.currentAbility.energyCost) > -1
			{
				target = instance_nearest(mouse_x, mouse_y, objPlayer)
					
				if variable_instance_exists(global.currentAbility, "heal")
				{
					playerHealth(target, global.currentAbility.heal, 0)
				}
					
				if variable_instance_exists(global.currentAbility, "armor")
				{
					playerHealth(target, 0, global.currentAbility.armor)
				}
					
				if audio_is_playing(global.currentAbility.audio)
				{
					audio_stop_sound(global.currentAbility.audio)	
				}
				audio_play_sound(global.currentAbility.audio, 0, 0)
				currentEnergy -= global.currentAbility.energyCost
			}
			else if (currentMana - global.currentAbility.energyCost) > -1 && variable_instance_exists(global.currentAbility, "canTargetPlayer")
			{
				target = instance_nearest(mouse_x, mouse_y, objPlayer)
					
				if variable_instance_exists(global.currentAbility, "heal")
				{
					playerHealth(target, global.currentAbility.heal, 0)
				}
					
				if variable_instance_exists(global.currentAbility, "armor")
				{
					playerHealth(target, 0, global.currentAbility.armor)
				}
					
				if audio_is_playing(global.currentAbility.audio)
				{
					audio_stop_sound(global.currentAbility.audio)	
				}
				audio_play_sound(global.currentAbility.audio, 0, 0)
				currentMana -= global.currentAbility.energyCost
			}
		}
	}
}

if keyboard_check_pressed(ord("1"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objAbility1
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objAbility1
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objAbility1
	{
		global.currentAbility = objAbility1
		global.ability = global.currentAbility
	}
}
else if keyboard_check_pressed(ord("2"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objAbility2
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objAbility2
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objAbility2
	{
		global.currentAbility = objAbility2
		global.ability = global.currentAbility
	}
}
else if keyboard_check_pressed(ord("3"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objAbility3
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objAbility3
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objAbility3
	{
		global.currentAbility = objAbility3
		global.ability = global.currentAbility
	}
}
else if keyboard_check_pressed(ord("4"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objAbility4
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objAbility4
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objAbility4
	{
		global.currentAbility = objAbility4
		global.ability = global.currentAbility
	}
}
else if keyboard_check_pressed(ord("5"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objAbility5
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objAbility5
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objAbility5
	{
		global.currentAbility = objAbility5
		global.ability = global.currentAbility
	}
}

if position_meeting(mouse_x, mouse_y, objAbilityParent)
{
	abilityTarget = instance_nearest(mouse_x, mouse_y, objAbilityParent)
	
	if mouse_check_button_pressed(mb_left)
	{
		if abilityUIToggle == false
		{
			global.currentAbility = abilityTarget
			global.ability = global.currentAbility
		}

		if abilityUIToggle == true && global.currentAbility == abilityTarget
		{
			global.currentAbility = noone
			global.ability = global.currentAbility
		}
		else if abilityUIToggle == true && global.currentAbility != abilityTarget
		{
			global.currentAbility = abilityTarget
			global.ability = global.currentAbility
		}
	}

}


//switch (inventory) 
//{
//	case "Incendiary Ring":
//		name = "Incendiary Ring"
//	    break;
//    default:
//        // code here
//        break;
//}