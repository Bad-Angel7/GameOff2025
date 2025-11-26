/// @description Insert description here
// You can write your code in this editor
audio_group_load(agMusic)
audio_group_load(agSFX)
audio_group_load(agMenuClick)

if !persistent
{
	persistent = true	
}

global.itemList = ds_list_create()
ds_list_add(global.itemList, "Incendiary Ring", "Test2", "Test3", "Test4", "Test5", "Test6")
global.inventory = ds_list_create()

waveCounter = 1

//Currently doesn't scale properly and Idk a fix :3
displayResolutionY = (1920)
displayResolutionX = (1080)

window_set_size(displayResolutionY, displayResolutionX)
window_set_fullscreen(false)
window_enable_borderless_fullscreen(false)


timerBuffer = game_get_speed(gamespeed_fps) * 5
bonusTimer = game_get_speed(gamespeed_fps) * 10

enemySpawn = function()
{
	randomise()
	enemyArray = ["Skeleton", "Kobold", "Demon"]

	enemyArrayIndex = irandom(array_length(enemyArray) - 1)
}

