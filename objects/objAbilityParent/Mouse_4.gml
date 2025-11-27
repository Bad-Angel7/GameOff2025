/// @description Insert description here
// You can write your code in this editor

///Does nothing atm. Idk how to fix
if position_meeting(mouse_x, mouse_y, objAbilityParent) && layer_get_visible("SelectionLayer") == true
{
	abilityHover = instance_nearest(mouse_x, mouse_y, objAbilityParent)
	if global.ability1 = "Empty"
	{
		objAbility1.sprite_index = abilityHover.sprite_index
		global.ability1 = abilityHover.abilityChoice
		
		ini_open("Settings.ini")
		
		ini_key_delete("Abilities", "Ability 1")
		ini_write_string("Abilities", "Ability 1", string(global.ability1))
		
		ini_close()
		exit
	}
	
	///Works but doesn't scale. Will figure out a fix later
	//if abilityHover.abilityChoice = global.ability1
	//{
	//	global.ability1Variable = "Empty"
	//	objAbility1.sprite_index = sprEmpty
	//	global.ability1 = false
	//	exit
	//}
	
	if global.ability2 = "Empty"
	{
		objAbility2.sprite_index = abilityHover.sprite_index
		global.ability2 = abilityHover.abilityChoice
		
		ini_open("Settings.ini")
		
		ini_key_delete("Abilities", "Ability 2")
		ini_write_string("Abilities", "Ability 2", string(global.ability2))
		
		ini_close()
		exit
	}
	
	if global.ability3 = "Empty"
	{
		objAbility3.sprite_index = abilityHover.sprite_index
		global.ability3 = abilityHover.abilityChoice
		
		ini_open("Settings.ini")
		
		ini_key_delete("Abilities", "Ability 3")
		ini_write_string("Abilities", "Ability 3", string(global.ability3))
		
		ini_close()
		exit
	}
	if global.ability4 = "Empty"
	{
		objAbility4.sprite_index = abilityHover.sprite_index
		global.ability4 = abilityHover.abilityChoice
		
		ini_open("Settings.ini")
		
		ini_key_delete("Abilities", "Ability 4")
		ini_write_string("Abilities", "Ability 4", string(global.ability4))
		
		ini_close()
		exit
	}
	if global.ability5 = "Empty"
	{
		objAbility5.sprite_index = abilityHover.sprite_index
		global.ability5 = abilityHover.abilityChoice
		
		ini_open("Settings.ini")
		
		ini_key_delete("Abilities", "Ability 5")
		ini_write_string("Abilities", "Ability 5", string(global.ability5))
		
		ini_close()
		exit
	}
}