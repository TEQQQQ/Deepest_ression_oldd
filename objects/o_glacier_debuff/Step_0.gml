/// @description Insert description here
// You can write your code in this editor



if image_xscale <= 1 {
	image_xscale = 1;
	image_yscale = 1;
} else {
	image_xscale-= 0.01;
	image_yscale-= 0.01;
}


/*
if o_buff_system.player_buff_count != previous_count {
	x = o_buff_system.x+(o_buff_system.player_buff_count-previous_count)*24;
}
*/



if (o_buff_system.player_buff_count-previous_count) > 9 {
	x = o_buff_system.x+((o_buff_system.player_buff_count-previous_count)-10)*24;
	y = o_buff_system.y+24;
	if (o_buff_system.player_buff_count-previous_count) > 19 {
		x = o_buff_system.x+((o_buff_system.player_buff_count-previous_count)-20)*24;
		y = o_buff_system.y+48;
		if (o_buff_system.player_buff_count-previous_count) > 29 {
			x = o_buff_system.x+((o_buff_system.player_buff_count-previous_count)-30)*24;
			y = o_buff_system.y+72;
		}
	}
} else {
	x = o_buff_system.x+(o_buff_system.player_buff_count-previous_count)*24;
	y = o_buff_system.y;
}

if once == true {
	if !instance_exists(o_freeze_effect){
		instance_create_layer(o_border_player.x,o_border_player.y,"effects",o_freeze_effect);	
		once = false;
	}
}
