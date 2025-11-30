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

switch(nextAttack)
{
	case "fireball":
		damage = 6
		if ds_list_find_index(global.inventory, "Fancy Hat") > -1
		{
			damage = floor(damage * 1.25)
		}
		damageText = damage
		if weak > 0
		{
			damageText = floor(damage * global.damageReduction)
		}
		if displayText = true
		{
			global.textDamage = damage
			layer_sequence_create("Assets_1", objPlayer.x, objPlayer.y - objPlayer.sprite_height, seqDamage)
			displayText = false
		}
		armor = noone
		break;
		
	case "cleave": 
		damage = 13
		if ds_list_find_index(global.inventory, "Fancy Hat") > -1
		{
			damage = floor(damage * 1.25)
		}
		damageText = damage
		if weak > 0
		{
			damageText = floor(damage * global.damageReduction)
		}
		if displayText = true
		{
			global.textDamage = damage
			layer_sequence_create("Assets_1", objPlayer.x, objPlayer.y - objPlayer.sprite_height, seqDamage)
			displayText = false
		}
		armor = noone
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

