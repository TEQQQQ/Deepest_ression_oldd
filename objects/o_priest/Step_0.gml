/// @description Insert description here
// You can write your code in this editor

if room == Room_character_stats {
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_leg_left_priest);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_leg_right_priest);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_arm_left_priest);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_arm_right_priest);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_head_priest);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_torso_priest);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_pants_priest);
}




if level_buff == true {
	if level == 2 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 3 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 4 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 5 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 6 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 7 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 8 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 9 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 10 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 11 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 12 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 13 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 14 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 15 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 16 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 17 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 18 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 19 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 20 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 21 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 22 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 23 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 24 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 25 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 26 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 27 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 28 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 29 {
		stat_points += 3;
		level_buff = false;
	}
	if level == 30 {
		stat_points += 3;
		level_buff = false;
	}
}


if keyboard_check_pressed(ord("C")){
	if level == 30 {
	 	
	} else {
		level +=1;
		level_buff = true;
	}
}