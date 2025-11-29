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

	objPlayer.playerTurn = true
	objPlayer.currentArmor = 0
	objPlayer.currentEnergy = objPlayer.maxEnergy
	timerBuffer = game_get_speed(gamespeed_fps) * 3
	bonusTimer = game_get_speed(gamespeed_fps) * 10
	audio_play_sound(sfxRoundStart, 0, 0)


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