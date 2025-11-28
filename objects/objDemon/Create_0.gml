/// @description Insert description here
// You can write your code in this editor

maxHP = 50 + (5 * objGameController.waveCounter - 5)
currentHP = maxHP
currentArmor = 0

drenched = 0
ignite = 0
frost = 0

gold = (4 + floor(objGameController.waveCounter/2))

timer = 0

randomise()
attackArray = ["fireball", "cleave"]

nextAttackIndex = irandom(array_length(attackArray) - 1)
nextAttack = attackArray[nextAttackIndex]