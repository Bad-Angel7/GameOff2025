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
		name = "Empty"
		sprite_index = sprEmpty
		damage = noone
		armor = noone
		energyCost = noone
		multitarget = false
		audio = noone
		canTargetEnemy = false
		canTargetPlayer = false
		
		ignite = false
		frost = false
		drenched = false
		statusEffect = noone
		statusTurn = noone
		break;
	
	case "MagicMissle":
	    name = "Magic Missle"
		sprite_index = sprMagicMissle
		damage = 15
		energyCost = 1
		audio = sfxMagicMissle
		canTargetEnemy = true
	    break;
	
	case "Fireball":
		name = "Fireball"
		sprite_index = sprFireBall
		damage = 10
		energyCost = 2
		multitarget = all
		audio = sfxFireball
		canTargetEnemy = true

		ignite = true
		statusEffect = ignite
		statusTurn = 2
		break;
		
	case "FrostBeam":
		name = "Frost Beam"
		sprite_index = sprFrostBeam
		damage = 5
		energyCost = 1
		audio = sfxFrostBeam
		canTargetEnemy = true

		frost = true
		statusEffect = frost
		statusTurn = 4
		break;
		
	case "WaterBlast":
		name = "Water Blast"
		sprite_index = sprWaterBlast
		energyCost = 1
		damage = 5
		multitarget = all
		audio = sfxWaterBlast
		canTargetEnemy = true


		drenched = true
		statusEffect = drenched
		statusTurn = 3
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