/// @description Insert description here
// You can write your code in this editor

maxHP = 50 + (1 * objGameController.waveCounter - 1)
currentHP = maxHP
currentArmor = 0

drenched = 0
ignite = 0
frost = 0
weak = 0
shatter = 0

scorePoints = 100 + (25 * (objGameController.waveCounter -1))

gold = (4 + floor(objGameController.waveCounter/2))

timer = 0

displayText = false

randomise()
attackArray = ["fireball", "cleave"]

nextAttackIndex = irandom(array_length(attackArray) - 1)
nextAttack = attackArray[nextAttackIndex]