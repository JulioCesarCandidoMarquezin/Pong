if !global.started {
    hspeed = 0;
    vspeed = 0;
    return;
}

if speed == 0 {
    hspeed = hspeed_start;
    vspeed = vspeed_start;
}

#region Colisão com os jogadores
if !place_free(x, y + vspeed) {
    audio_play_sound(sndBall, 1, false);
    vspeed = -vspeed;
    vspeed += sign(vspeed) * 0.25; 
}
if !place_free(x + hspeed, y) {
    audio_play_sound(sndBall, 1, false);
    hspeed = -hspeed;
    hspeed += sign(hspeed) * 0.25; 
}
#endregion

#region Colisão com as paredes em cima e embaixo
if (y <= 0 - sprite_yoffset) {
    audio_play_sound(sndBall, 1, false);
    vspeed = abs(vspeed) + 0.25;
}

if (y >= room_height - sprite_height) {
    audio_play_sound(sndBall, 1, false);
    vspeed = -abs(vspeed) - 0.25;
}
#endregion