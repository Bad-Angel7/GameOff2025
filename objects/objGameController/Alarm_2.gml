/// @description End round
// You can write your code in this editor

if instance_exists(objEnemyParent)
{
	var enemies = instance_number(objEnemyParent)
	var enemyInstances = array_create(enemies)
	
	for (var i = 0; i < enemies; ++i)
	{
		enemyInstances[i] = instance_find(objEnemyParent, i)
		target = enemyInstances[i]
		if target.ignite > 0
		{
			target.currentHP -= target.ignite
			global.textDamage = target.ignite
			layer_sequence_create("Assets_1", target.x, target.y - target.sprite_height, seqDamage)
			audio_play_sound(sfxIgniteDot, 0, 0)
		}
	}
	with (objEnemyParent)
		alarm[0] = 60
	
	alarm[0] = 120
}
else
{
	alarm[0] = 120
}

nextMana += (bonusTimer / 20)
if nextMana >= 60
{
	nextMana -= 60
	if objPlayer.currentMana < 11
	{
		objPlayer.currentMana += 1
		audio_play_sound(choose(sfxManaGain1, sfxManaGain2, sfxManaGain3, sfxManaGain4, sfxManaGain5, sfxManaGain6), 0, 0)
	}
}

objPlayer.playerTurn = false
objPlayer.currentEnergy = 0
timerBuffer= 0
bonusTimer = 0