/// @description Timer
// You can write your code in this editor

if instance_exists(objPlayer)
{
	var enemies = instance_number(objEnemyParent)
	var enemyInstances = array_create(enemies)
		
	for (var i = 0; i < enemies; ++i)
	{
		enemyInstances[i] = instance_find(objEnemyParent, i)
		target = enemyInstances[i]
		target.drenched -= 1
		target.ignite -= 1
		target.frost -= 1
		target.weak -= 1
		target.shatter -= 1
	}
	
	with objAbilitySlotParent
		alarm[0] = 1
	objPlayer.roundEnd = false
	objPlayer.playerTurn = true
	objPlayer.manaBlastUsed = false
	
	if ds_list_find_index(global.inventory, "Sturdy Shield") > -1
	{
		if objPlayer.currentArmor > 10
		{
			objPlayer.currentArmor = 10
		}
	}
	else
	{
		objPlayer.currentArmor = 0		
	}

	objPlayer.currentEnergy = objPlayer.maxEnergy
	if ds_list_find_index(global.inventory, "Fancy Hat") > -1
	{
		objPlayer.currentMana += 2
		audio_play_sound(choose(sfxManaGain1, sfxManaGain2, sfxManaGain3, sfxManaGain4, sfxManaGain5, sfxManaGain6), 0, 0)
		if objPlayer.currentMana > 10
		{
			objPlayer.currentMana = 10
		}
	}
	
	if ds_list_find_index(global.inventory, "Flickering Flame") > -1
	{
		timerBuffer = 0
	}
	else
	{
		timerBuffer = game_get_speed(gamespeed_fps) * 5
	}
	bonusTimer = game_get_speed(gamespeed_fps) * 20
	audio_play_sound(choose(sfxRoundStart1, sfxRoundStart2, sfxRoundStart3, sfxRoundStart4, sfxRoundStart5, sfxRoundStart6), 0, 0)


	if !instance_exists(objEnemyParent)
	{
		waveCounter++
		
		if objPlayer.cloakUsed = true && ds_list_find_index(global.inventory, "Cloak of Displacement") > -1
		{
			objPlayer.cloakUsed = false
		}
		//should be wave 5 lol
		if (waveCounter % 5 == 0)
		{
			global.currentAbility = noone
			room_goto(shopRoom)
			layer_set_visible("StatsLayer", false)
			layer_set_visible("AbilityIconsLayer", false)
			layer_set_visible("AbilityLayer", false)
			audio_stop_all()
			audio_play_sound(sfxShop2, 0, 1)
			//Should show shop layer and play its theme
			exit
		}
	
		var spawns = instance_number(objSpawnParent)
		var spawnInstance = array_create(spawns)
	
		//Just make this spawn one on spawn 1, 2, and 3. It'll suck but it'll work
	
		for (var i = 0; i < spawns; ++i)
		{
			spawnInstance[i] = instance_find(objSpawnParent, i)
			spawnPoint = spawnInstance[i]
			
			enemySpawn()
			nextEnemy = enemyArray[enemyArrayIndex]
			
			switch (nextEnemy) 
			{
			    case "Test":
					instance_create_layer(spawnPoint.x, spawnPoint.y, "Instances", objEnemyTest)
			        break;
		
				case "Skeleton":
					instance_create_layer(spawnPoint.x, spawnPoint.y, "Instances", objSkeleton)
					break;
			
				case "Kobold":
					instance_create_layer(spawnPoint.x, spawnPoint.y, "Instances", objKobold)
					break;
			
				case "Demon":
					instance_create_layer(spawnPoint.x, spawnPoint.y, "Instances", objDemon)
					break;
			    default:
			        // code here
			        break;
			}
		}
	}
}


//var spawns = instance_number(objSpawn)
//var spawnInstance = array_create(spawns)

//for (var i = 0; i < spawns; ++i)
//{
//	spawnInstance[i] = instance_find(objSpawn, i)
	
//	if spawnInstance.spawnEmpty == true
//	{
//		instance_create_layer(objSpawn.x, objSpawn.y, "Instances", objEnemyTest)
//	}
//}