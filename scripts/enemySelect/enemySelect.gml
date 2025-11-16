// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemySelect(target)
{
	draw_sprite_stretched(sprEnemySelect, 0, target.x - target.sprite_xoffset, target.y - target.sprite_yoffset, target.sprite_width, target.sprite_height)
	
	if global.currentAbility != noone
	{
		if global.currentAbility.multitarget == all
		{		
			var enemies = instance_number(objEnemyTest)
			var enemyInstances = array_create(enemies)
		
			for (var i = 0; i < enemies; ++i)
			{
				enemyInstances[i] = instance_find(objEnemyTest, i)
				target = enemyInstances[i]		
				draw_sprite_stretched(sprEnemySelect, 0, target.x - target.sprite_xoffset, target.y - target.sprite_yoffset, target.sprite_width, target.sprite_height)
			}
		}
	}

}