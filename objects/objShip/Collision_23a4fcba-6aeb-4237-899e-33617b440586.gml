/// @description Insert description here
// You can write your code in this editor
lives -= 1;
audio_play_sound(sndDie, 1, false);
instance_destroy();

with (objGame)
{
	alarm[1] = room_speed;
}