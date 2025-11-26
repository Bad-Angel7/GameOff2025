/// @description Insert description here
// You can write your code in this editor

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
		
		case "Test2":
	        name = "Test2"
			description = "This is a test 2! description wahoo yippie yadda yadda"
			price = 25
	        break;
		
		case "Test3":
	        name = "Test3"
			description = "This is a test 3! description wahoo yippie yadda yadda"
			price = 35
	        break;
		
		case "Test4":
	        name = "Test4"
			description = "This is a test 4! description wahoo yippie yadda yadda"
			price = 5
	        break;
		
		case "Test5":
	        name = "Test5"
			description = "This is a test 5! description wahoo yippie yadda yadda"
			price = 11
	        break;
		
		case "Test6":
	        name = "Test6"
			description = "This is a test 6! description wahoo yippie yadda yadda"
			price = 42
	        break;
	    default:
	        // code here
	        break;
	}
}
