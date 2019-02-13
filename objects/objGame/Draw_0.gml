/// @description Insert description here
// You can write your code in this editor
switch (room)
{
	case rmGame:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;
	case rmStart:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(room_width/2, 100, "Space Rocks", 3, 3, 0, c, c, c, c, 1);	
		draw_text(room_width / 2, 200, 
@"Score 1,000 points to win!

W: move
A/D: change direction
Enter: shoot

>>PRESS SPACE TO START<<");
		draw_set_halign(fa_left);
		break;
	case rmGameOver:
		draw_set_halign(fa_center);
		var c = c_red;
	    draw_text_transformed_colour(room_width / 2, 150, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
	    draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
	    draw_text(room_width / 2, 300, "PRESS SPACE TO RESTART");		
		draw_set_halign(fa_left);
		break;
	case rmWin:
		draw_set_halign(fa_center);
	    var c = c_lime;
	    draw_text_transformed_colour(room_width / 2, 200, "YOU WON!", 3, 3, 0, c, c, c, c, 1);
	    draw_text(room_width / 2, 300, "PRESS SPACE TO RESTART");		
		draw_set_halign(fa_left);
		break;
}