/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor


//changeable health bar settings
healthbarwidth = objGameController.displayResolutionX/4
healthbarheight = objGameController.displayResolutionY/16
healthbarx = x - (sprite_width/2)
healthbary = y - sprite_height

statusx = x - (sprite_width/2)
statusy = y + sprite_height

drenchedx = x - (sprite_width/2)
drenchedy = y + (sprite_height/2)
ignitex = x - (sprite_width/8)
ignitey = y + (sprite_height/2)
frostx = x - (sprite_width/16)
frosty = y + (sprite_height/2)
//drenchedx = x - (sprite_width/2)
//drenchedy = y + (sprite_height/2)


if timer >= 0 
{
	timer -=1
}
if timer <= 0
{
	timer = 240
	show_debug_message("Drenched " + string(drenched))
	show_debug_message("Ignite " + string(ignite))
	show_debug_message("Frost " + string(frost))
	show_debug_message("Enemy current HP is " + string(currentHP))
}

switch(nextAttack)
{
	//Will eventually give damage or armor reduction
	case "swipe":
		damage = 4
		damageText = damage
		if frost > 0
		{
			damageText = round(damage * .70)
		}
		armor = noone
		break;
		
	case "pounce": 
		damage = 14
		damageText = damage
		if frost > 0
		{
			damageText = round(damage * .70)
		}
		armor = noone
		break;
		
	case "parry":
		damage = noone
		armor = 6
		break;
		
	default:
		break;
}

if currentHP <= 0
{	
	instance_destroy()
}

