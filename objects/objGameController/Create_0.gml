/// @description Insert description here
// You can write your code in this editor
audio_group_load(agMusic)
audio_group_load(agSFX)
audio_group_load(agMenuClick)

global.itemList = ds_list_create()
ds_list_add(global.itemList, "Incendiary Ring", "Wet Blade", "Boots of Swiftness", "Cloak of Displacement", "Crit Ring",
"Ice Crystal", "Battlemage Armor", "Fancy Hat", "Sturdy Shield", "Delicious Strawberry", "Lucky Coin", "Ceremonial Robes",
"Flickering Flame", "Lightning Necklace", )
global.inventory = ds_list_create()

global.tempList = ds_list_create()

tempText1 = false
tempText2 = false
tempText3 = false

timer = 0
nextMana = 0

currentScore = 0

waveCounter = 1

//Currently doesn't scale properly and Idk a fix :3
ini_open("Settings.ini")
displayResolutionX = ini_read_real("Display", "Display Width", 1920)
displayResolutionY = ini_read_real("Display", "Display Height", 1080)

fullscreen = ini_read_real("Display", "Fullscreen", 1)
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

if ds_list_find_index(global.inventory, "Flickering Flame") > -1
{
	timerBuffer = 0
}
else
{
	timerBuffer = game_get_speed(gamespeed_fps) * 5
}
bonusTimer = game_get_speed(gamespeed_fps) * 20

enemySpawn = function()
{
	randomise()
	enemyArray = ["Skeleton", "Kobold", "Demon", "Frost Dog"]

	enemyArrayIndex = irandom(array_length(enemyArray) - 1)
}

mainMenuTheme = function()
{
	if room = mainMenuRoom
	{
		if audio_is_playing(choose(sfxAmbientTheme1, sfxAmbientTheme2, sfxAmbientTheme3, sfxAmbientTheme4, sfxAmbientTheme5,
		sfxAmbientTheme6, sfxAmbientTheme7, sfxAmbientTheme8, sfxAmbientTheme9, sfxAmbientTheme10))
		{
			timer = 240
		}
		if !audio_is_playing(choose(sfxAmbientTheme1, sfxAmbientTheme2, sfxAmbientTheme3, sfxAmbientTheme4, sfxAmbientTheme5,
		sfxAmbientTheme6, sfxAmbientTheme7, sfxAmbientTheme8, sfxAmbientTheme9, sfxAmbientTheme10))
		{
			timer--
		}

		if timer <= 0
		{
			audio_play_sound(choose(sfxAmbientTheme1, sfxAmbientTheme2, sfxAmbientTheme3, sfxAmbientTheme4, sfxAmbientTheme5,
			sfxAmbientTheme6, sfxAmbientTheme7, sfxAmbientTheme8, sfxAmbientTheme9, sfxAmbientTheme10), 0, 0)
		}
	}
}

battleTheme = function()
{
	if room = battleRoom
	{
		if audio_is_playing(choose(sfxBattleMusic1, sfxBattleMusic2, sfxBattleMusic1, sfxBattleMusic4, sfxBattleMusic5))
		{
			timer = 240
		}
		if !audio_is_playing(choose(sfxBattleMusic1, sfxBattleMusic2, sfxBattleMusic1, sfxBattleMusic4, sfxBattleMusic5))
		{
			timer--
		}

		if timer <= 0
		{
			audio_play_sound(choose(sfxBattleMusic1, sfxBattleMusic2, sfxBattleMusic1, sfxBattleMusic4, sfxBattleMusic5), 0, 0)
		}
	}	
}