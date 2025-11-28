// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerHealth(target, heal, armor)
{
	if variable_instance_exists(global.currentAbility, "heal")
	{
		target.currentHP += heal
	}
	
	if variable_instance_exists(global.currentAbility, "armor")
	{
		target.currentArmor += armor + global.dex
	}
	
	if target.currentHP > target.maxHP
	{
		target.currentHP = target.maxHP
	}
}