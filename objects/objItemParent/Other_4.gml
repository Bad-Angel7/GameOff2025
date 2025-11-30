/// @description Insert description here
// You can write your code in this editor

if instance_exists(objItemParent)
{
	randomItem()


	if room = shopRoom
	{
		var items = instance_number(objItemParent)
		var itemInstance = array_create(items)
	
		for (var i = 0; i < items; ++i)
		{
			itemInstance[i] = instance_find(objItemParent, i)
			itemPoint = itemInstance[i]
	
 
			itemPoint.itemName = itemSelected
		}		



		switch (itemName) 
		{
		    case "Incendiary Ring":
		        name = "Incendiary Ring"
				sprite_index = sprIncendiaryRing
				description = "Adds 1 to all IGNITE turns applied"
				price = 20
		        break;
		
			case "Wet Blade":
		        name = "Wet Blade"
				sprite_index = sprWetBlade
				description = "SHATTER status now reduces enemies block by 50 percent"
				price = 25
		        break;
		
			case "Boots of Swiftness":
		        name = "Boots of Swiftness"
				sprite_index = sprBootsOfSwiftness
				description = "Increases armor gain by 2"
				price = 15
		        break;
		
			case "Cloak of Displacement":
		        name = "Cloak of Displacement"
				sprite_index = sprCloakOfDisplacement
				description = "The first health damage you take every wave is ignored"
				price = 50
		        break;
		
			case "Crit Ring":
		        name = "Crit Ring"
				sprite_index = sprCritRing
				description = "Gives all abilities a 10 percent chance to do double damage"
				price = 32
		        break;
		
			case "Ice Crystal":
		        name = "Ice Crystal"
				sprite_index = sprIceCrystal
				description = "Doubles system shock damage"
				price = 26
		        break;
				
			case "Battlemage Armor":
			    name = "Battlemage Armor"
				sprite_index = sprArmorOfTheBattlemage
				description = "Taking health damage gives you mana"
				price = 60
			    break;
			
			case "Fancy Hat":
				name = "Fancy Hat"
				sprite_index = sprFancyHat
				description = "Generates 2 mana every turn but increases damage taken by 25 percent"
				price = 70
				break;
			
			case "Sturdy Shield":
				name = "Sturdy Shield"
				sprite_index = sprSturdyShield
				description = "Keep up to 10 armor between waves"
				price = 55
				break;
				
			case "Delicious Strawberry":
				name = "Delicious Strawberry"
				sprite_index = sprDeliciousStrawberry
				description = "Increases max HP by 20. Also increases shop heal to 15 HP"
				price = 15
				break;
				
			case "Lucky Coin":
				name = "Lucky Coin"
				sprite_index = sprLuckyCoin
				description = "50 Percent chance to double gold gained from kills"
				price = 10
				break;
				
			case "Ceremonial Robes":
				name = "Ceremonial Robes"
				sprite_index = sprCeremonialRobes
				description = "25 Percent increased damage while below half health"
				price = 60
				break;
				
			case "Flickering Flame":
				name = "Flickering Flame"
				sprite_index = sprFlickeringFlame
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
		        // code here
		        break;
		}
	}
}
