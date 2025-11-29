/// @description Round ending / Enemy actions
// You can write your code in this editor


actionUsed = false
currentArmor = 0

var enemies = instance_number(objEnemyParent)
var enemyInstances = array_create(enemies)

for (var i = 0; i < enemies; ++i)
{
	action = nextAttack
	
	if actionUsed == false
	{
		enemyActions(action)
		nextAttackIndex = irandom(array_length(attackArray) - 1)
		nextAttack = attackArray[nextAttackIndex]
	}
}