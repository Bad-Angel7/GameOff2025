/// @description Insert description here
// You can write your code in this editor

var knobAmount = amountCurrent / maxValue
var knobPositionx = x + (sprite_width * knobAmount)
global.musicVolume = knobAmount

draw_sprite_stretched(sprite_index, image_index, x, y - 50, (knobAmount * 1000), sprite_height)

if isHeld = true
{
	draw_sprite_ext(sprSlider, 0, knobPositionx, y, 1, 1, 0, c_white, .75)
}
else
{
	draw_sprite(sprSlider, 0, knobPositionx, y)
}