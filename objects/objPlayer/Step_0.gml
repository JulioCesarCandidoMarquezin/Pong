if !global.started return

if keyboard_check(commands.up) && y > 0 {
	y -= vel	
}

if keyboard_check(commands.down) && y + sprite_height < room_height {
	y += vel
}