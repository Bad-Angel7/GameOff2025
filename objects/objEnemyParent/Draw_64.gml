/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(sprPlayerHealth, 0, healthbarx + 66, healthbary - 32, 32, 32)
draw_text_ext_transformed(healthbarx + 64, healthbary - 8, string(currentHP), 4, 64, 2, 2, 0)

if damage != noone
{
	draw_sprite_stretched(sprEnemyAttack, 0, healthbarx, healthbary + 32, 32, 32)
	draw_text_ext_transformed(healthbarx + 32, healthbary + 32, string(damageText), 16, 64, 2, 2, 0)
}

if armor != noone
{
	draw_sprite_stretched(sprEnemyBlock, 0, healthbarx, healthbary + 32, 32, 32)
	draw_text_ext_transformed(healthbarx + 32, healthbary + 32, string(armorText), 16, 64, 2, 2, 0)
}

if currentArmor > 0
{
	draw_sprite_stretched(sprPlayerArmor, 0, healthbarx + 20, healthbary - 32, 32, 32)
	draw_text_ext_transformed(healthbarx + 16, healthbary - 8, string(currentArmor), 16, 64, 2, 2, 0)
}


if drenched > 0 
{
	draw_sprite_stretched(sprDrenched, 0, drenchedx, drenchedy, 32, 32)
	draw_text_ext_transformed(drenchedx, drenchedy + 24,string(drenched), 16, 64, 2, 2, 0)
}

if ignite > 0 
{
	draw_sprite_stretched(sprIgnite, 0, ignitex, ignitey, 32, 32)
	draw_text_ext_transformed(ignitex, ignitey + 24,string(ignite), 16, 64, 2, 2, 0)
}

if frost > 0 
{
	draw_sprite_stretched(sprFrost, 0, frostx, frosty, 32, 32)
	draw_text_ext_transformed(frostx, frosty + 24,string(frost), 16, 64, 2, 2, 0)
}

if weak > 0 
{
	draw_sprite_stretched(sprWeak, 0, weakx, weaky, 32, 32)
	draw_text_ext_transformed(weakx, weaky + 24,string(weak), 16, 64, 2, 2, 0)
}

if shatter > 0 
{
	draw_sprite_stretched(sprShatter, 0, shatterx, shattery, 32, 32)
	draw_text_ext_transformed(shatterx, shattery + 24,string(shatter), 16, 64, 2, 2, 0)
}