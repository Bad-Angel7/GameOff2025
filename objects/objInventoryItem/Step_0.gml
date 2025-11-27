/// @description Insert description here
// You can write your code in this editor



switch (inventoryItem) 
{
	case "Incendiary Ring":
		name = "Incendiary Ring"
		sprite_index = sprIncendiaryRing
		description = "Adds + 1 to all IGNITE turns applied"
		break;
		
	case "Wet Blade":
		name = "Wet Blade"
		sprite_index = sprWetBlade
		description = "Drenched status now reduces enemies block by 50 percent"
		global.armorReduction = .50
		break;
			
	case "Test3":
	    name = "Test3"
		sprite_index = sprIncendiaryRing
		description = "This is a test 3! description wahoo yippie yadda yadda"
		price = 35
	    break;
		
	case "Test4":
	    name = "Test4"
		sprite_index = sprIncendiaryRing
		description = "This is a test 4! description wahoo yippie yadda yadda"
		price = 5
	    break;
		
	case "Test5":
	    name = "Test5"
		sprite_index = sprIncendiaryRing
		description = "This is a test 5! description wahoo yippie yadda yadda"
		price = 11
	    break;
		
	case "Test6":
	    name = "Test6"
		sprite_index = sprIncendiaryRing
		description = "This is a test 6! description wahoo yippie yadda yadda"
		price = 42
	    break;
		
	default:
		name = "Empty"
		description = "Empty"
		break;
}