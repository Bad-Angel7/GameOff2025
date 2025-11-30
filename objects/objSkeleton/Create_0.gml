/// @description Insert description here
// You can write your code in this editor

maxHP = 40 + (2 * objGameController.waveCounter - 2)
currentHP = maxHP
currentArmor = 0

drenched = 0
ignite = 0
frost = 0
weak = 0
shatter = 0

scorePoints = 75 + (15 * (objGameController.waveCounter -1))

gold = 2 + floor(objGameController.waveCounter/2)

timer = 0

randomise()
attackArray = ["stab", "cleave", "block"]

nextAttackIndex = irandom(array_length(attackArray) - 1)
nextAttack = attackArray[nextAttackIndex]