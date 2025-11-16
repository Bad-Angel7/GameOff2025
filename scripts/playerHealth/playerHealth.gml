// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerHealth(target, heal, armor)
{
	target.currentHP += heal
	target.currentArmor += armor
	
	if target.currentHP > target.maxHP
	{
		target.currentHP = target.maxHP
	}
}