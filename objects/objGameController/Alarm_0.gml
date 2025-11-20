/// @description Timer
// You can write your code in this editor


objPlayer.currentEnergy = objPlayer.maxEnergy
timerBuffer = game_get_speed(gamespeed_fps) * 3
bonusTimer = game_get_speed(gamespeed_fps) * 10


if instance_exists(objEnemyParent)
{
	
}
else
{
	///Is shit. Works but is a terrible fucking way of doing things. Not sure how to fix? Maybe with spawn parenting?
	randomise()
	enemyArray = ["Test", "Skeleton"]

	enemyArrayIndex = irandom(array_length(enemyArray) - 1)
	nextEnemy1 = enemyArray[enemyArrayIndex]
	
	randomise()
	enemyArray = ["Test", "Skeleton"]

	enemyArrayIndex = irandom(array_length(enemyArray) - 1)
	nextEnemy2 = enemyArray[enemyArrayIndex]
	
	randomise()
	enemyArray = ["Test", "Skeleton"]

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