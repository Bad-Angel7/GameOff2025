/// @description Insert description here
// You can write your code in this editor

name = "Mana Blast"
if ds_list_find_index(global.inventory, "Ceremonial Robes") > -1 && objPlayer.currentHP <= (objPlayer.maxHP / 2)
{
	damage = ceil((objPlayer.currentMana * 2) * 1.25)
}
else
{
	damage = "Mana X 4"
}
energyCost = "All Mana"
audio = sfxMagicMissle2
canTargetEnemy = true