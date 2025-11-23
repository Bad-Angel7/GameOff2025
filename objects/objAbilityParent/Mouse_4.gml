/// @description Insert description here
// You can write your code in this editor

///Does nothing atm. Idk how to fix
if position_meeting(mouse_x, mouse_y, objAbilityParent) && layer_get_visible("SelectionLayer") == true
{
	abilityHover = instance_nearest(mouse_x, mouse_y, objAbilityParent)
	if global.ability1 = false
	{
		global.ability1Variable = abilityHover.abilityChoice
		objAbility1.sprite_index = abilityHover.sprite_index
		global.ability1 = global.ability1Variable
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
	
	if global.ability2 = false
	{
		global.ability2Variable = abilityHover.abilityChoice
		objAbility2.sprite_index = abilityHover.sprite_index
		global.ability2 = global.ability2Variable
		exit
	}
	
	if global.ability3 = false
	{
		global.ability3Variable = abilityHover.abilityChoice
		objAbility3.sprite_index = abilityHover.sprite_index
		global.ability3 = global.ability3Variable
		exit
	}
	if global.ability4 = false
	{
		global.ability4Variable = abilityHover.abilityChoice
		objAbility4.sprite_index = abilityHover.sprite_index
		global.ability4 = global.ability4Variable
		exit
	}
	if global.ability5 = false
	{
		global.ability5Variable = abilityHover.abilityChoice
		objAbility5.sprite_index = abilityHover.sprite_index
		global.ability5 = global.ability5Variable
		exit
	}
}