/// @description Insert description here
// You can write your code in this editor

maxHP = 25 + (2 * objGameController.waveCounter - 2)
currentHP = maxHP
currentArmor = 0

drenched = 0
ignite = 0
frost = 0

gold = 3 + floor(objGameController.waveCounter/2)

timer = 0

randomise()
attackArray = ["swipe", "pounce", "parry"]

nextAttackIndex = irandom(array_length(attackArray) - 1)
nextAttack = attackArray[nextAttackIndex]