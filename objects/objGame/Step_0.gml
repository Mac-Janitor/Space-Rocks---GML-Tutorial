/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space))
{
	switch(room)
    {
	    case rmStart:
	        room_goto(rmGame);
	        break;
	    case rmWin:
	    case rmGameOver:
	        game_restart();
	        break;
    }
}

if room == rmGame
{
	if score >= 1000
	{
		audio_play_sound(sndWin, 1, false);
	    room_goto(rmWin);
	}
	if lives <= 0
	{
		audio_play_sound(sndLose, 1, false);
	    room_goto(rmGameOver);
	}
}