/// @description Insert description here
// You can write your code in this editor

//changeable health bar settings
healthbarwidth = objGameController.displayResolutionX
healthbarheight = objGameController.displayResolutionY/8
//health bar pos based on screen
//healthbarx = (100) - (healthbarwidth/2)
healthbarx = xstart - sprite_width
//ystart - 100 is 100 pixels above player
healthbary = ystart - sprite_height


if (position_meeting(mouse_x, mouse_y, objMagicMissle))
{
	//var ability = instance_nearest(mouse_x, mouse_y, objAbility1)
}
//if audioTimer >= 0
//{
//	audioTimer -= 1
//}

//Find enemy nearest mouse position and apply ability damage to them
//Going to try to find a way to select enemy position instead of enemy type in the future
///USE PARENTS!!!!!!!!!!!!! ITS SO SIMPLE YOU MORON
if (position_meeting(mouse_x, mouse_y, objEnemyParent))
{
	var enemytodamage = instance_nearest(mouse_x, mouse_y, objEnemyParent)
	
	//Show ID of current target to check if correct
	if debugShown == false
	{
		show_debug_message(enemytodamage.id)
		debugShown = true
	}
	if instance_exists(enemytodamage)
	{
		//On mouse button click, check to make sure an ability is selected and use said ability on target
		if mouse_check_button_pressed(mb_left) && global.currentAbility != noone
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
		if mouse_check_button_pressed(mb_left) && global.currentAbility != noone && global.currentAbility.canTargetPlayer == true
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
				show_debug_message("Player armor " + string(currentArmor))
				currentEnergy -= global.currentAbility.energyCost
			}
		}
	}
}
else 
{
	//Reset Debug ID when mouse off current target so it doesn't spam logs
	debugShown = false
}