if !global.started {
	hspeed = 0
	vspeed = 0
	return
}
if speed == 0 {
	hspeed = hspeed_start
	vspeed = vspeed_start
}

#region Colisão com os players
if !place_free(x + hspeed, y) {
	hspeed = -hspeed
	if hspeed < 0 {
		hspeed -= 0.25
	} 
	if hspeed > 0 {
		hspeed += 0.25
	}
}
#endregion

#region Colisão com as paredes em cima e embaixo
if (y <= 0 - sprite_yoffset) {
    vspeed = abs(vspeed); 
    vspeed += 0.25
}

if (y >= room_height - sprite_height) {
    vspeed = -abs(vspeed);
    vspeed -= 0.25
}
#endregion