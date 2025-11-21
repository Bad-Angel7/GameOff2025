// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerSelect(target)
{
	if variable_instance_exists(global.currentAbility, "canTargetPlayer")
	{
		draw_sprite_stretched(sprEnemySelect, 0, target.x - target.sprite_xoffset, target.y - target.sprite_yoffset, target.sprite_width, target.sprite_height)
	}
}