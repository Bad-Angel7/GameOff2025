/// @description Insert description here
// You can write your code in this editor

audio_group_load(agMusic)
audio_group_load(agSFX)





//Currently doesn't scale properly and Idk a fix :3
displayResolutionY = (1920)
displayResolutionX = (1080)

window_set_size(displayResolutionY, displayResolutionX)
window_set_fullscreen(false)
window_enable_borderless_fullscreen(false)

timerBuffer = game_get_speed(gamespeed_fps) * 5
bonusTimer = game_get_speed(gamespeed_fps) * 10

