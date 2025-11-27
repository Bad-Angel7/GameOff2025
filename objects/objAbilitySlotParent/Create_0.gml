/// @description Insert description here
// You can write your code in this editor

if room = mainMenuRoom
{
	instance_destroy()
}

if file_exists("Settings.ini")
{
	ini_open("Settings.ini")
	
	global.ability1 = ini_read_string("Abilities", "Ability 1", "Empty")
	global.ability2 = ini_read_string("Abilities", "Ability 2", "Empty")
	global.ability3 = ini_read_string("Abilities", "Ability 3", "Empty")
	global.ability4 = ini_read_string("Abilities", "Ability 4", "Empty")
	global.ability5 = ini_read_string("Abilities", "Ability 5", "Empty")
	
	ini_close()
}


