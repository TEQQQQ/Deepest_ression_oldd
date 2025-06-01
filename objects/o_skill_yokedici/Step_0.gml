/// @description Insert description here
// You can write your code in this editor

if room == Room_info {
	if o_stats.time == 0 and o_inventory.time == 0 and o_drop_menu.time == 0  {
		if position_meeting(mouse_x,mouse_y,o_skill_yokedici){
			if sprite_index != s_skill_1 {
				if !instance_exists(o_hint_skill_info_10){
					instance_create_layer(x,y,"hints",o_hint_skill_info_10);	
				}
			}
		} else {
			instance_destroy(o_hint_skill_info_10);
		}
	} else {
		instance_destroy(o_hint_skill_info_10);
	}
}

if room == Room_character_skills {
	if position_meeting(mouse_x,mouse_y,o_skill_yokedici){
			if !instance_exists(o_hint_skill_info_10){
				instance_create_layer(x,y,"hints",o_hint_skill_info_10);	
			}
	} else {
		instance_destroy(o_hint_skill_info_10);
	}
}


if room == Room_character_skills {
	sprite_index = s_skill_yokedici;
}
