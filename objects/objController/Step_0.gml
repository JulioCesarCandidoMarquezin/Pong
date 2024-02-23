if global.player1.points >= 10{
	winner = "Player 1";
} else if global.player2.points >= 10 {
	winner = "Player 2";
}

if string_length(winner) > 1 {
	draw_set_color(c_yellow);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(fnt);
	draw_text(room_width/2, room_height/4, "O ganhador é o " + winner); 
	global.started = false;
	global.player1.points = 0;
	global.player2.points = 0;
	alarm[0] = ready_set_go_timer;
}