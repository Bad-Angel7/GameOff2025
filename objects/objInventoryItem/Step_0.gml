/// @description Insert description here
// You can write your code in this editor



switch (inventoryItem) 
{
	case "Incendiary Ring":
		name = "Incendiary Ring"
		sprite_index = sprIncendiaryRing
		image_alpha = 1
		description = "Adds 1 to all IGNITE turns applied"
		break;
		
	case "Wet Blade":
		name = "Wet Blade"
		sprite_index = sprWetBlade
		image_alpha = 1
		description = "SHATTER status now reduces enemies block by 50 percent"
		global.armorReduction = .50
		break;
		
	case "Ice Dagger":
		name = "Ice Dagger"
		sprite_index = sprIceDagger
		image_alpha = 1
		description = "WEAK status now reduces enemies block by 50 percent"
		global.damageReduction = .50
		break;
			
	case "Boots of Swiftness":
	    name = "Boots of Swiftness"
		sprite_index = sprBootsOfSwiftness
		image_alpha = 1
		description = "Increases armor gain by 2" 
		if itemAdded = false
		{
			global.dex += 2
			itemAdded = true
		}
		price = 35
	    break;
		
	case "Cloak of Displacement":
	    name = "Cloak of Displacement"
		sprite_index = sprCloakOfDisplacement
		image_alpha = 1
		description = "The first health damage you take every wave is ignored"
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
		
	case "Sturdy Shield":
		name = "Sturdy Shield"
		sprite_index = sprSturdyShield
		image_alpha = 1
		description = "Keep up to 10 armor between waves"
		price = 55
		break;
		
	case "Delicious Strawberry":
		name = "Delicious Strawberry"
		sprite_index = sprDeliciousStrawberry
		image_alpha = 1
		description = "Increases max HP by 20. Also increases shop heal to 15 HP"
		price = 15
		if itemAdded = false
		{
			objPlayer.maxHP += 20
			objPlayer.currentHP += 20
			itemAdded = true
		}
		break;
	
	case "Lucky Coin":
		name = "Lucky Coin"
		sprite_index = sprLuckyCoin
		image_alpha = 1
		description = "50 Percent chance to double gold gained from kills"
		price = 10
		break;
		
	case "Ceremonial Robes":
		name = "Ceremonial Robes"
		sprite_index = sprCeremonialRobes
		image_alpha = 1
		description = "25 Percent increased damage while below half health"
		price = 60
		break;
		
	case "Flickering Flame":
		name = "Flickering Flame"
		sprite_index = sprFlickeringFlame
		image_alpha = 1
		description = "Removes the timer buffer between waves but doubles all timer bonuses"
		price = 30
		break;
		
	case "Lightning Necklace":
		name = "Lightning Necklace"
		sprite_index = sprLightningNecklace
		image_alpha = 1
		description = "Increases the extra lightning damage on drenched enemies to double"
		price = 20
		break;
		
	default:
		name = "Empty"
		description = "Empty"
		image_alpha = 0
		break;
}