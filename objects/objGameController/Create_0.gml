/// @description Insert description here
// You can write your code in this editor
audio_group_load(agMusic)
audio_group_load(agSFX)
audio_group_load(agMenuClick)

global.itemList = ds_list_create()
ds_list_add(global.itemList, "Incendiary Ring", "Wet Blade", "Boots of Swiftness", "Cloak of Displacement", "Crit Ring",
"Ice Crystal", "Armor of the Battlemage", "Fancy Hat")
global.inventory = ds_list_create()

global.tempList = ds_list_create()


waveCounter = 1

//Currently doesn't scale properly and Idk a fix :3
ini_open("Settings.ini")
displayResolutionX = ini_read_real("Display", "Display Width", 720)
displayResolutionY = ini_read_real("Display", "Display Height", 360)

fullscreen = ini_read_real("Display", "Fullscreen", 0)
ini_close()


window_set_size(displayResolutionX, displayResolutionY)

if fullscreen = true
{
	window_set_fullscreen(true)
	window_enable_borderless_fullscreen(true)
}


if fullscreen = false
{
	window_set_fullscreen(false)
	window_enable_borderless_fullscreen(false)
}


timerBuffer = game_get_speed(gamespeed_fps) * 5
bonusTimer = game_get_speed(gamespeed_fps) * 10

enemySpawn = function()
{
	randomise()
	enemyArray = ["Skeleton", "Kobold", "Demon"]

	enemyArrayIndex = irandom(array_length(enemyArray) - 1)
}

