global.started = false
global.player1 = instance_create_layer(0, 224, "Instances", objPlayer)
global.player1.commands = {"up": ord("W"), "down": ord("S")}
global.player2 = instance_create_layer(room_width - 32, 224, "Instances", objPlayer)
global.player2.commands = {"up": vk_up, "down": vk_down}
instance_create_layer(room_width / 2, room_height / 2, "Instances", objBall)
ready_set_go_timer = room_speed * 2;
ready_set_go = true;
winner = "";
alarm[0] = ready_set_go_timer;