/// @description Insert description here
// You can write your code in this editor
if room = Room_info {
	/*
	if hurting_deger == 1.1 {
		sprite_index = s_skill_rogue_active_hurting_1_1;
	}
	if resisting_deger == 1.1 {
		sprite_index = s_skill_rogue_active_resisting_1_1;
	}
	if thievery_deger == 1.1 {
		sprite_index = s_skill_rogue_active_thievery_1_1;
	}
	
	if hurting_deger == 1.2 {
		sprite_index = s_skill_rogue_active_hurting_1_2;
	}
	if resisting_deger == 1.2 {
		sprite_index = s_skill_rogue_active_resisting_1_2;
	}
	if thievery_deger == 1.2 {
		sprite_index = s_skill_rogue_active_thievery_1_2;
	}
	
	if hurting_deger == 1.3 {
		sprite_index = s_skill_rogue_active_hurting_1_3;
	}
	if resisting_deger == 1.3{
		sprite_index = s_skill_rogue_active_resisting_1_3;
	}
	if thievery_deger == 1.3 {
		sprite_index = s_skill_rogue_active_thievery_1_3;
	}
	*/
	//1 2 3 4 hpler için 5 6 7 8 mp ler için
	if potion_deger == 1{
		sprite_index = s_active_potion_hp_100;
	}
	if potion_deger == 5{
		sprite_index = s_active_potion_mp_50;
	}
	
}



if room == Room_info {
	if o_stats.time == 0 and o_inventory.time == 0 and o_drop_menu.time == 0  {
		if position_meeting(mouse_x,mouse_y,o_skill_tutucu){
			if hareket == false {
				if sprite_index != s_skill_1 {
					if !instance_exists(o_hint_skill_info_9){
						instance_create_layer(x,y,"hints",o_hint_skill_info_9);	
					}
				}
			} else {
				instance_destroy(o_hint_skill_info_9);
			}
		} else {
			instance_destroy(o_hint_skill_info_9);
		}
	} else {
		instance_destroy(o_hint_skill_info_9);
	}
}

if room == Room_character_skills {
	if position_meeting(mouse_x,mouse_y,o_skill_tutucu){
			if !instance_exists(o_hint_skill_info_9){
				instance_create_layer(x,y,"hints",o_hint_skill_info_9);	
			}
	} else {
		instance_destroy(o_hint_skill_info_9);
	}
}



if hareket == true and room == Room_info {
	x = mouse_x-16;
	y = mouse_y-16;
	global.skill = 1;
	
	if mouse_check_button_pressed(mb_right){
	
		if sprite_index != s_skill_1 {
			instance_destroy(o_hint_skill_info_11);
			instance_destroy(o_skill_select);
			global.skill = 0;
			x = o_skillbar_tutucu_info.x-16;
			y = o_skillbar_tutucu_info.y-40;
			hareket = false;
		}
	
	}
}


if room == Room_info {
	if o_stats.time <= 0 {
		
	} else {
		hareket = false;
		global.skill = 0;
	}
}


if room == Room_info {
	if o_inventory.time <= 0 {
		
	} else {
		hareket = false;
		global.skill = 0;
	}
}

if room == Room_character_skills {
	sprite_index = s_skill_1;
}


if room == Room_info {
	if hareket == false {
		x = o_skillbar_tutucu_info.x+40;
		y = o_skillbar_tutucu_info.y+2;
	}
}
	