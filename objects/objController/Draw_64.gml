draw_set_color(c_yellow);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt);

if global.started {
	draw_text(room_width/4, room_height/6, string(global.player1.points));
	draw_text(room_width/4 * 3, room_height/6, string(global.player2.points));
	ready_set_go_timer = room_speed * 2;
} else {
	var ready_go_text = ""

	if (room_speed * 2 - (room_speed * 2 / 3) < ready_set_go_timer) {
	    ready_go_text = "Ready";
	} else if (room_speed * 2 - (room_speed * 2 * 2 / 3) < ready_set_go_timer) {
		ready_go_text = "Set";
	} else {
		ready_go_text = "Go!";
	}		

	if (ready_set_go_timer > 0) {
	    draw_text(room_width/2, room_height/4, ready_go_text); 
	    ready_set_go_timer--;
	}
}