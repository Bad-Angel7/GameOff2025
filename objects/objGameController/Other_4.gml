/// @description Insert description here
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

if room = battleRoom || room = shopRoom
{
	layer_set_visible("StatsLayer", true)
	layer_set_visible("AbilityIconsLayer", true)
	layer_set_visible("MeasuringLayer", true)
}
else
{
	layer_set_visible("StatsLayer", false)
	layer_set_visible("AbilityIconsLayer", false)
	layer_set_visible("MeasuringLayer", false)
}