#region Marcação de pontos
if x < 0 {
	global.player2.points += 1
}

if x > room_width {
	global.player1.points += 1
}
#endregion

#region 
with global.player1 {
	x = xstart
	y = ystart
}
with global.player2 {
	x = xstart
	y = ystart
}
instance_create_layer(xstart, ystart, "Instances", objBall)
#endregion

global.started = false;
objController.alarm[0] = room_speed

instance_destroy()