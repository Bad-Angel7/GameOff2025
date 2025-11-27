/// @description Insert description here
// You can write your code in this editor


ini_open("Settings.ini")

ini_key_delete("Display", "Display Width")
ini_key_delete("Display", "Display Height")

ini_write_real("Display", "Display Width", window_get_width())
ini_write_real("Display", "Display Height", window_get_height())

ini_close()