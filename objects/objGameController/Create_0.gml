/// @description Insert description here
// You can write your code in this editor


//Currently doesn't scale properly and Idk a fix :3
displayResolutionY = (1920)
displayResolutionX = (1080)

window_set_size(displayResolutionY, displayResolutionX)
window_set_fullscreen(false)
window_enable_borderless_fullscreen(false)

timerBuffer = room_speed * 5
bonusTimer = room_speed * 10

paused = false

pauseUpdate = function()
{
	if paused = true
	{
		instance_deactivate_all(true)
		layer_set_visible("PauseLayer", true)
	}
	else
	{
		instance_activate_all()
		layer_set_visible("PauseLayer", false)
	}
}

pauseUpdate()