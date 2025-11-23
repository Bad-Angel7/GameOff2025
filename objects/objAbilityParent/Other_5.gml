/// @description Insert description here
// You can write your code in this editor

switch (abilitySlot) 
{
    case "ability1":
		name = global.ability1.name
		damage = global.ability1.damage
		energyCost = global.ability1.energyCost
		
		if variable_instance_exists(global.ability1, "multitarget")
		{
			multitarget = global.ability1.multitarget
		}
		audio = global.ability1.audio
		canTargetEnemy = global.ability1.canTargetEnemy

		
		if variable_instance_exists(global.ability1, "ignite")
		{
			ignite = global.ability1.ignite
		}
		
		if variable_instance_exists(global.ability1, "statusEffect")
		{
			statusEffect = global.ability1.statusEffect
		}
		
		if variable_instance_exists(global.ability1, "statusTurn")
		{
			statusTurn = global.ability1.statusTurn
		}
		
	case "ability2":
		if instance_exists(global.ability2)
		{
	        name = global.ability2.name
			damage = global.ability2.damage
			energyCost = global.ability2.energyCost
			multitarget = global.ability2.multitarget
			audio = global.ability2.audio
			canTargetEnemy = global.ability2.canTargetEnemy
		}
		if variable_instance_exists(global.ability2, "ignite")
		{
			ignite = global.ability2.ignite
		}
		
		if variable_instance_exists(global.ability2, "statusEffect")
		{
			statusEffect = global.ability2.statusEffect
		}
		
		if variable_instance_exists(global.ability2, "statusTurn")
		{
			statusTurn = global.ability2.statusTurn
		}

        break;
    default:
        // code here
        break;
}