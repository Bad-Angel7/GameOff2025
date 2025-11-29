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
				description = "Adds + 1 to all IGNITE turns applied"
				price = 15
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
				description = "Increases DEX by 2"
				price = 35
		        break;
		
			case "Cloak of Displacement":
		        name = "Cloak of Displacement"
				sprite_index = sprCloakOfDisplacement
				description = "The first damage you take every wave is ignored"
				price = 50
		        break;
		
			case "Crit Ring":
		        name = "Crit Ring"
				sprite_index = sprCritRing
				description = "Gives all abilities a 10 percent chance to do double damage"
				price = 11
		        break;
		
			case "Ice Crystal":
		        name = "Ice Crystal"
				sprite_index = sprIceCrystal
				description = "Doubles system shock damage"
				price = 42
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
			
		    default:
		        // code here
		        break;
		}
	}
}
