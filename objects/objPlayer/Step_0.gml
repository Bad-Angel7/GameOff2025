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

//Not working with code. Abilities are coming back as numbers and not objects
//abilityArray = [1, 2, 3, 4, 5]
/////Ability assignment and organization
//abilityArray[1] = objAbility1
//abilityArray[2] = objAbility2
//abilityArray[3] = objAbility3
//abilityArray[4] = objAbility4
//abilityArray[5] = objAbility5


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
if (position_meeting(mouse_x, mouse_y, objEnemyTest))
{
	var enemytodamage = instance_nearest(mouse_x, mouse_y, objEnemyTest)
	
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
			//if audioTimer <= 0
			//{
			//	audioTimer = global.currentAbility.sfxTimer
			//}
			//if audioTimer < 0
			//{
			//	audio_stop_sound(global.currentAbility.audio)	
			//}
			
			if (currentEnergy - global.currentAbility.energyCost) > -1
			{
				damageEnemy(global.currentAbility.damage, enemytodamage, global.currentAbility.multitarget, global.currentAbility.statusEffect)
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
				playerHealth(target, global.currentAbility.heal, global.currentAbility.armor)
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