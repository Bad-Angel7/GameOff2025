/// @description Insert description here
// You can write your code in this editor


//changeable health bar settings
healthbarwidth = objGameController.displayResolutionX/4
healthbarheight = objGameController.displayResolutionY/16
//health bar pos based on screen
//healthbarx = (100) - (healthbarwidth/2)
healthbarx = x - (sprite_width/2)
//ystart - 100 is 100 pixels above player
healthbary = y - sprite_height

statusx = x - (sprite_width/2)
statusy = y + sprite_height

//status1x = x - (sprite_width/2)
//status2x = x - (sprite_width/4)
//status3x = x - (sprite_width/6)


//if drenched > 0
//{
//	activeStatuses += 1	
//}
//else activeStatuses -= 1

//if ignite > 0
//{
//	activeStatuses += 1	
//}
//else activeStatuses -= 1

//if activeStatuses < 0 
//{
//	activeStatuses = 0
//}
//show_debug_message(activeStatuses)

//statusArray = [1, 2]
//statusArray[1] = drenched
//statusArray[2] = ignite

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
//test 2

switch(nextAttack)
{
	case "stab":
		damage = 5
		armor = noone
		break;
		
	case "cleave": 
		damage = 10
		armor = noone
		break;
		
	case "block":
		damage = noone
		armor = 10
		break;
		
	default:
		break;
}

if currentHP <= 0
{	
	nearestSpawn.spawnEmpty = true
	
	instance_destroy()
}

