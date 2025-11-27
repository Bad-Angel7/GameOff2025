/// @description Settings
// You can write your code in this editor

if !file_exists("Settings.ini")
{
	ini_open("Settings.ini")

	ini_write_real("Volume", "Music Volume", 10)
	ini_write_real("Volume", "SFX Volume", 10)

	ini_write_real("Display", "Display Width", 720)
	ini_write_real("Display", "Display Height", 360)
	
	ini_write_string("Abilities", "Ability 1", "Empty")
	ini_write_string("Abilities", "Ability 2", "Empty")
	ini_write_string("Abilities", "Ability 3", "Empty")
	ini_write_string("Abilities", "Ability 4", "Empty")
	ini_write_string("Abilities", "Ability 5", "Empty")

	ini_close()
}