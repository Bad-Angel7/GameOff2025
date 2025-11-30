/// @description Insert description here
// You can write your code in this editor

maxHP = 30 + (2 * objGameController.waveCounter - 2)
currentHP = maxHP
currentArmor = 0

drenched = 0
ignite = 0
frost = 0
weak = 0
shatter = 0

scorePoints = 70 + (20 * (objGameController.waveCounter -1))

gold = (3 + floor(objGameController.waveCounter/2))

timer = 0

randomise()
attackArray = ["frost breath", "stomp", "dodge", "ice wall"]

nextAttackIndex = irandom(array_length(attackArray) - 1)
nextAttack = attackArray[nextAttackIndex]