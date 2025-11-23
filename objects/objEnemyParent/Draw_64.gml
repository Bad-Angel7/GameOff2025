/// @description Insert description here
// You can write your code in this editor

draw_text_ext_transformed(healthbarx, healthbary, string(currentHP) + "/" + string(maxHP), 4, 64, 2, 2, 0)

draw_text_ext_transformed(statusx, statusy, string(nextAttack), 4, 64, 2, 2, 0)

if damage != noone
{
	draw_text_ext_transformed(statusx, statusy + 32,"Damage: " + string(damageText), 16, 64, 2, 2, 0)
}



if armor != noone
{
	draw_text_ext_transformed(statusx, statusy + 32,"Armor: " + string(armor), 16, 64, 2, 2, 0)
}

if currentArmor > 0
{
	draw_text_ext_transformed(healthbarx, healthbary - 64,"Armor: " + string(currentArmor), 16, 64, 2, 2, 0)
}


if drenched > 0 
{
	draw_sprite_stretched(sprDrenched, 0, drenchedx, drenchedy, 32, 32)
}

if ignite > 0 
{
	draw_sprite_stretched(sprIgnite, 0, ignitex, ignitey, 32, 32)
}

if frost > 0 
{
	draw_sprite_stretched(sprFrost, 0, frostx, frosty, 32, 32)
}