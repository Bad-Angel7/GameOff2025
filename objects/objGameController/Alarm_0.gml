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
	}


	objPlayer.currentArmor = 0
	objPlayer.currentEnergy = objPlayer.maxEnergy
	timerBuffer = game_get_speed(gamespeed_fps) * 3
	bonusTimer = game_get_speed(gamespeed_fps) * 10


	if instance_exists(objEnemyParent)
	{
	
	}
	else
	{
		waveCounter++
		//should be wave 5 lol
		if waveCounter = (150)
		{
			room_goto(shopRoom)
			layer_set_visible("StatsLayer", false)
			layer_set_visible("AbilityIconsLayer", false)
			layer_set_visible("AbilityLayer", false)
			audio_stop_all()
			//Should show shop layer and play its theme
			exit
		}
	
		///Is shit. Works but is a terrible fucking way of doing things. Not sure how to fix? Maybe with spawn parenting?
		randomise()
		enemyArray = ["Test", "Skeleton", "Kobold", "Demon"]

		enemyArrayIndex = irandom(array_length(enemyArray) - 1)
		nextEnemy1 = enemyArray[enemyArrayIndex]
	
		randomise()
		enemyArray = ["Test", "Skeleton", "Kobold", "Demon"]

		enemyArrayIndex = irandom(array_length(enemyArray) - 1)
		nextEnemy2 = enemyArray[enemyArrayIndex]
	
		randomise()
		enemyArray = ["Test", "Skeleton", "Kobold", "Demon"]

		enemyArrayIndex = irandom(array_length(enemyArray) - 1)
		nextEnemy3 = enemyArray[enemyArrayIndex]
	
		switch (nextEnemy1) 
		{
		    case "Test":
				instance_create_layer(objSpawn1.x, objSpawn1.y, "Instances", objEnemyTest)
		        break;
		
			case "Skeleton":
				instance_create_layer(objSpawn1.x, objSpawn1.y, "Instances", objSkeleton)
				break;
			
			case "Kobold":
				instance_create_layer(objSpawn1.x, objSpawn1.y, "Instances", objKobold)
				break;
			
			case "Demon":
				instance_create_layer(objSpawn1.x, objSpawn1.y, "Instances", objDemon)
				break;
		    default:
		        // code here
		        break;
		}
	
		switch (nextEnemy2) 
		{
		    case "Test":
				instance_create_layer(objSpawn2.x, objSpawn2.y, "Instances", objEnemyTest)
		        break;
		
			case "Skeleton":
				instance_create_layer(objSpawn2.x, objSpawn2.y, "Instances", objSkeleton)
				break;
			
			case "Kobold":
				instance_create_layer(objSpawn2.x, objSpawn2.y, "Instances", objKobold)
				break;
			
			case "Demon":
				instance_create_layer(objSpawn2.x, objSpawn2.y, "Instances", objDemon)
				break;
		    default:
		        // code here
		        break;
		}
	
		switch (nextEnemy3) 
		{
		    case "Test":
				instance_create_layer(objSpawn3.x, objSpawn3.y, "Instances", objEnemyTest)
		        break;
		
			case "Skeleton":
				instance_create_layer(objSpawn3.x, objSpawn3.y, "Instances", objSkeleton)
				break;
			
			case "Kobold":
				instance_create_layer(objSpawn3.x, objSpawn3.y, "Instances", objKobold)
				break;
			
			case "Demon":
				instance_create_layer(objSpawn3.x, objSpawn3.y, "Instances", objDemon)
				break;
		    default:
		        // code here
		        break;
		}
	
		//instance_create_layer(objSpawn1.x, objSpawn1.y, "Instances", objEnemyTest)
		//instance_create_layer(objSpawn2.x, objSpawn2.y, "Instances", objEnemyTest)
		//instance_create_layer(objSpawn3.x, objSpawn3.y, "Instances", objEnemyTest)
	
	
		//var spawns = instance_number(objSpawn1)
		//var spawnInstance = array_create(spawns)
	
		//Just make this spawn one on spawn 1, 2, and 3. It'll suck but it'll work
	
		//for (var i = 0; i < spawns; ++i)
		//{
		//	spawnInstance[i] = instance_find(objSpawn1, i)
		//	spawnPoint = spawnInstance
		
		//	instance_create_layer(spawnPoint.x, spawnPoint.y, "Instances", objEnemyTest)
		//}
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