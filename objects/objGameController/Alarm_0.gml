/// @description Timer
// You can write your code in this editor


objPlayer.currentEnergy = objPlayer.maxEnergy
timerBuffer = room_speed * 3
bonusTimer = room_speed * 10


if instance_exists(objEnemyTest)
{
	
}
else
{
	instance_create_layer(objSpawn1.x, objSpawn1.y, "Instances", objEnemyTest)
	instance_create_layer(objSpawn2.x, objSpawn2.y, "Instances", objEnemyTest)
	instance_create_layer(objSpawn3.x, objSpawn3.y, "Instances", objEnemyTest)
	
	
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