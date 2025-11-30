/// @description Spawn Enemies
// You can write your code in this editor

if room = battleRoom
{
	var spawns = instance_number(objSpawnParent)
	var spawnInstance = array_create(spawns)
	
	for (var i = 0; i < spawns; ++i)
	{
		spawnInstance[i] = instance_find(objSpawnParent, i)
		spawnPoint = spawnInstance[i]
			
		enemySpawn()
		nextEnemy = enemyArray[enemyArrayIndex]
			
		switch (nextEnemy) 
		{
			case "Frost Dog":
				instance_create_layer(spawnPoint.x, spawnPoint.y, "Instances", objFrostDog)
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