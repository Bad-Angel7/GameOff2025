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
weakx = x - (sprite_width/1.25)
weaky = y + (sprite_height/18)
shatterx = x - (sprite_width/1.25)
shattery = y - (sprite_height/2.5)



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
		if ds_list_find_index(global.inventory, "Fancy Hat") > -1
		{
			damage = floor(damage * 1.25)
		}
		damageText = damage
		if weak > 0
		{
			damageText = floor(damage * global.damageReduction)
		}
		armor = noone
		break;
		
	case "pounce": 
		damage = 14
		if ds_list_find_index(global.inventory, "Fancy Hat") > -1
		{
			damage = floor(damage * 1.25)
		}
		damageText = damage
		if weak > 0
		{
			damageText = floor(damage * global.damageReduction)
		}
		armor = noone
		break;
		
	case "parry":
		damage = noone
		armor = 6
		armorText = armor
		if shatter > 0
		{
			armorText = floor(armor * global.armorReduction) 
		}
		break;
		
	default:
		break;
}

if currentHP <= 0
{	
	if ds_list_find_index(global.inventory, "Lucky Coin") > -1
	{
		var randomNumber = irandom_range(0, 100)
		if randomNumber > 50
		{
			objPlayer.currentGold += ceil(gold * 2)
		}
	}
	else
	{
		objPlayer.currentGold += gold
	}	
	
	objGameController.currentScore += scorePoints
	
	instance_destroy()
}

