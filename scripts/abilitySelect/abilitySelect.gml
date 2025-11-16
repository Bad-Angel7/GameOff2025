// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function abilitySelect(ability)
{
	draw_sprite_stretched(sprEnemySelect, 0, ability.x - ability.sprite_xoffset, ability.y - ability.sprite_yoffset, ability.sprite_width, ability.sprite_height)
}