randomize()
players_vspeed = objPlayer.vel
vspeed_start = choose(
	players_vspeed + 4,
	players_vspeed + 3, 
	players_vspeed + 2, 
	players_vspeed + 1, 
	players_vspeed, 
	-players_vspeed - 4,
	-players_vspeed - 3, 
	-players_vspeed - 2, 
	-players_vspeed - 1, 
	-players_vspeed
)
players_hspeed = objPlayer.vel
hspeed_start = choose(players_hspeed, -players_hspeed)