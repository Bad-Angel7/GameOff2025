/// @description Insert description here
// You can write your code in this editor

ini_open("Settings.ini")

if instance_exists(objAbility1)
{
	objAbility1.ability = ini_read_string("Abilities", "Ability 1", global.ability1)
}

if instance_exists(objAbility2)
{
	objAbility2.ability = ini_read_string("Abilities", "Ability 2", global.ability2)
}

if instance_exists(objAbility3)
{
	objAbility3.ability = ini_read_string("Abilities", "Ability 3", global.ability3)
}

if instance_exists(objAbility4)
{
	objAbility4.ability = ini_read_string("Abilities", "Ability 4", global.ability4)
}

if instance_exists(objAbility5)
{
	objAbility5.ability = ini_read_string("Abilities", "Ability 5", global.ability5)
}

ini_close()

switch (ability) 
{
	case "Empty":
		name = "Select Abilities in Main Menu"
		sprite_index = sprEmpty
		energyCost = noone
		break;
	
	case "MagicMissle":
	    name = "Magic Missle"
		sprite_index = sprMagicMissle
		if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
		{
			damage = ceil(10 * 1.25)
		}
		else
		{
			damage = 12
		}
		energyCost = 1
		audio = sfxMagicMissle
		canTargetEnemy = true
	    break;
		
	case "ManaBlast":
	    name = "Mana Blast"
		sprite_index = sprManaBlast
		if instance_exists(objPlayer)
		{
			if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
			{
				damage = ceil((objPlayer.currentMana * 4) * 1.25)
			}
			else
			{
				damage = (objPlayer.currentMana * 4)
			}
		}

		energyCost = 0
		audio = sfxManaBurst
		canTargetEnemy = true
	    break;
	
	case "Fireball":
		name = "Fireball"
		sprite_index = sprFireBall
		if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
		{
			damage = ceil(6 * 1.25)
		}
		else
		{
			damage = 6
		}
		energyCost = 2
		multitarget = all
		audio = sfxFireBall2
		canTargetEnemy = true

		ignite = true
		statusEffect = ignite
		statusTurn = 3
		break;
		
	case "FireBolt":
		name = "Fire Bolt"
		sprite_index = sprFireBolt
		if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
		{
			damage = ceil(5 * 1.25)
		}
		else
		{
			damage = 5
		}
		energyCost = 1
		audio = sfxFireBolt
		canTargetEnemy = true

		ignite = true
		statusEffect = ignite
		statusTurn = 5
		break;
		
	case "FrostBeam":
		name = "Frost Beam"
		sprite_index = sprFrostBeam
		if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
		{
			damage = ceil(5 * 1.25)
		}
		else
		{
			damage = 5
		}
		energyCost = 1
		audio = sfxFrostBeam
		canTargetEnemy = true

		frost = true
		weak = true
		statusEffect = frost
		statusTurn = 2
		statusEffect2 = weak
		statusTurn2 = 2
		break;
		
	case "WaterBlast":
		name = "Water Blast"
		sprite_index = sprWaterBlast
		energyCost = 1
		if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
		{
			damage = ceil(5 * 1.25)
		}
		else
		{
			damage = 5
		}
		multitarget = all
		audio = sfxWaterBlast
		canTargetEnemy = true


		drenched = true
		shatter = true
		statusEffect = drenched
		statusTurn = 2
		statusEffect2 = shatter
		statusTurn2 = 2
		break;
		
	case "LightningBolt":
		name = "Lightning Bolt"
		sprite_index = sprLightningBolt
		energyCost = 1
		if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
		{
			damage = ceil(8 * 1.25)
		}
		else
		{
			damage = 8
		}
		audio = sfxLightningZap5
		canTargetEnemy = true

		lightning = true
		statusEffect = lightning
		break;
		
	case "Shield":
		name = "Shield"
		sprite_index = sprShield
		if instance_exists(objPlayer)
		{
			armor = 10 + global.dex
		}
		else
		{
			armor = 10
		}
		
		energyCost = 1
		audio = sfxShield
		canTargetPlayer = true
		break;
	default:
	    // code here
	    break;
}