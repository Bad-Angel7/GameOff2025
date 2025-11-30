/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(sprAbilityInfo, 0, x - sprite_width/1.5, y - sprite_height - 64, 96, 96)

if ds_list_find_index(global.inventory, "Delicious Strawberry") > -1
{
	draw_text_ext(x - sprite_width/2.25, y - sprite_height - 40, "Heal 15 10 Gold", 32, 64)
}
else
{
	draw_text_ext(x - sprite_width/2.25, y - sprite_height - 40, "Heal 10 10 Gold", 32, 64)
}


if position_meeting(mouse_x, mouse_y, objShopHeal)
{
	var target = objShopHeal
	abilitySelect(target)
}