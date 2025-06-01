/// @description Insert description here
// You can write your code in this editor


if instance_exists(o_tier1_1_bandicot){
	
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

	/*

	if (o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count) > 3 {
		x = o_buff_system_tier1_1_bandicot.x-((o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)-4)*24;
		y = o_buff_system_tier1_1_bandicot.y+24;
		if (o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count) > 7 {
			x = o_buff_system_tier1_1_bandicot.x-((o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)-8)*24;
			y = o_buff_system_tier1_1_bandicot.y+48;
			if (o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count) > 11 {
				x = o_buff_system_tier1_1_bandicot.x-((o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)-12)*24;
				y = o_buff_system_tier1_1_bandicot.y+72;
			}
		}
	} else {
		x = o_buff_system_tier1_1_bandicot.x-(o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)*24;
		y = o_buff_system_tier1_1_bandicot.y;
	}
	*/
	if (o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count) > 9 {
		x = o_buff_system_tier1_1_bandicot.x-((o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)-10)*24;
		y = o_buff_system_tier1_1_bandicot.y+24;
		if (o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count) > 19 {
			x = o_buff_system_tier1_1_bandicot.x-((o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)-20)*24;
			y = o_buff_system_tier1_1_bandicot.y+48;
			if (o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count) > 29 {
				x = o_buff_system_tier1_1_bandicot.x-((o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)-30)*24;
				y = o_buff_system_tier1_1_bandicot.y+72;
			}
		}
	} else {
		x = o_buff_system_tier1_1_bandicot.x-(o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)*24;
		y = o_buff_system_tier1_1_bandicot.y;
	}

} else {
	instance_destroy();
}


