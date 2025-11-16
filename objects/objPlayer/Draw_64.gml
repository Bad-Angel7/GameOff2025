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

draw_text_ext_transformed(healthbarx, healthbary, string(currentHP) + "/" + string(maxHP), 4, 64, 2, 2, 0)
draw_text_ext_transformed(healthbarx - 256, healthbary, "Energy: " + string(currentEnergy), 16, 64, 2, 2, 0)

if currentArmor > 0 
{
	draw_text_ext_transformed(healthbarx, healthbary - 64, "Armor: " + string(currentArmor), 16, 64, 2, 2, 0)
}

if global.currentAbility != noone
{
	draw_text_ext_transformed(objPlayer.x - (64*5), objPlayer.y + 128, global.currentAbility.name + ": " + string(global.currentAbility.energyCost), 0, 160, 4, 4, 0)
}


if position_meeting(mouse_x, mouse_y, objEnemyTest)
{
	nearestEnemy = instance_nearest(mouse_x, mouse_y, objEnemyTest)
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

if keyboard_check_pressed(ord("1"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objMagicMissle
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objMagicMissle
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objMagicMissle
	{
		global.currentAbility = objMagicMissle
		global.ability = global.currentAbility
	}
}
else if keyboard_check_pressed(ord("2"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objFireball
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objFireball
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objFireball
	{
		global.currentAbility = objFireball
		global.ability = global.currentAbility
	}
}
else if keyboard_check_pressed(ord("3"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objWaterBlast
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objWaterBlast
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objWaterBlast
	{
		global.currentAbility = objWaterBlast
		global.ability = global.currentAbility
	}
}
else if keyboard_check_pressed(ord("4"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objFrostBeam
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objFrostBeam
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objFrostBeam
	{
		global.currentAbility = objFrostBeam
		global.ability = global.currentAbility
	}
}
else if keyboard_check_pressed(ord("5"))
{
	if abilityUIToggle == false
	{
		global.currentAbility = objShield
		global.ability = global.currentAbility
	}

	if abilityUIToggle == true && global.currentAbility == objShield
	{
		global.currentAbility = noone
		global.ability = global.currentAbility
	}
	else if abilityUIToggle == true && global.currentAbility != objShield
	{
		global.currentAbility = objShield
		global.ability = global.currentAbility
	}
}
else if (position_meeting(mouse_x, mouse_y, objMagicMissle))
{
	global.ability = instance_nearest(mouse_x, mouse_y, objMagicMissle)
	
	//Show ID of current target to check if correct
	if debugShown == false
	{
		show_debug_message(global.ability.id)
		debugShown = true
	}
}
else if (position_meeting(mouse_x, mouse_y, objMagicMissle))
{
	global.ability = instance_nearest(mouse_x, mouse_y, objMagicMissle)
	
	//Show ID of current target to check if correct
	if debugShown == false
	{
		show_debug_message(global.ability.id)
		debugShown = true
	}
}
else if (position_meeting(mouse_x, mouse_y, objFireball))
{
	global.ability = instance_nearest(mouse_x, mouse_y, objFireball)
	
	//Show ID of current target to check if correct
	if debugShown == false
	{
		show_debug_message(global.ability.id)
		debugShown = true
	}
}
else if (position_meeting(mouse_x, mouse_y, objWaterBlast))
{
	global.ability = instance_nearest(mouse_x, mouse_y, objWaterBlast)
	
	//Show ID of current target to check if correct
	if debugShown == false
	{
		show_debug_message(global.ability.id)
		debugShown = true
	}
}
else if (position_meeting(mouse_x, mouse_y, objFrostBeam))
{
	global.ability = instance_nearest(mouse_x, mouse_y, objFrostBeam)
	
	//Show ID of current target to check if correct
	if debugShown == false
	{
		show_debug_message(global.ability.id)
		debugShown = true
	}
}
else if (position_meeting(mouse_x, mouse_y, objShield))
{
	global.ability = instance_nearest(mouse_x, mouse_y, objShield)
	
	//Show ID of current target to check if correct
	if debugShown == false
	{
		show_debug_message(global.ability.id)
		debugShown = true
	}
}
else if global.currentAbility == noone
{
	global.ability = noone
}

if global.ability != noone
{
	abilitySelect(global.ability)
	abilityUIToggle = true
}

if global.ability == noone
{
	abilityUIToggle = false
}

//show_debug_message(abilityUIToggle)