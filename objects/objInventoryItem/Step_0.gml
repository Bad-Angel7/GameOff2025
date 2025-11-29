/// @description Insert description here
// You can write your code in this editor



switch (inventoryItem) 
{
	case "Incendiary Ring":
		name = "Incendiary Ring"
		sprite_index = sprIncendiaryRing
		image_alpha = 1
		description = "Adds + 1 to all IGNITE turns applied"
		break;
		
	case "Wet Blade":
		name = "Wet Blade"
		sprite_index = sprWetBlade
		image_alpha = 1
		description = "SHATTER status now reduces enemies block by 50 percent"
		global.armorReduction = .50
		break;
			
	case "Boots of Swiftness":
	    name = "Boots of Swiftness"
		sprite_index = sprBootsOfSwiftness
		image_alpha = 1
		description = "Increases Dex by 2" 
		//Idk why but this adds twice
		if dexAdded = false
		{
			global.dex += 1
			dexAdded = true
		}
		price = 35
	    break;
		
	case "Cloak of Displacement":
	    name = "Cloak of Displacement"
		sprite_index = sprCloakOfDisplacement
		image_alpha = 1
		description = "The first damage you take every wave is ignored"
		price = 50
	    break;
		
	case "Crit Ring":
	    name = "Crit Ring"
		sprite_index = sprCritRing
		image_alpha = 1
		description = "Gives all abilities a 10 percent chance to do double damage"
		price = 11
	    break;
		
	case "Ice Crystal":
	    name = "Ice Crystal"
		sprite_index = sprIceCrystal
		image_alpha = 1
		description = "Doubles system shock damage"
		price = 42
	    break;
		
	case "Battlemage Armor":
	    name = "Battlemage Armor"
		sprite_index = sprArmorOfTheBattlemage
		image_alpha = 1
		description = "Taking health damage gives you mana"
		price = 60
	    break;	
		
	case "Fancy Hat":
		name = "Fancy Hat"
		sprite_index = sprFancyHat
		image_alpha = 1
		description = "Generates 2 mana every turn but increases damage taken by 25 percent"
		price = 70
		break;
		
	default:
		name = "Empty"
		description = "Empty"
		image_alpha = 0
		break;
}