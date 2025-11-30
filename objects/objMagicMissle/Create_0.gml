/// @description Insert description here
// You can write your code in this editor

name = "Magic Missle"
if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
{
	damage = ceil(10 * 1.25)
}
else
{
	damage = 10
}
energyCost = 1
audio = sfxMagicMissle2
canTargetEnemy = true