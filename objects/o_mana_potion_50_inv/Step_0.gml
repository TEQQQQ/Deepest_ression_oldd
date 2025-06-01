/// @description Insert description here
// You can write your code in this editor
if room == Room_character_items_info or room == Room_character_select or room == Room_character_skills or room == Room_menu or room == Room_character_stats {
	instance_destroy();	
}

if room == Room1 and !instance_exists(o_tier1_1_bandicot) {
	if time == 25 or time == 0 {
		if keyboard_check_pressed(ord("I")){
			if inventory == true {
				dash = true;
				x_speed = -24.8;
			} else {
				dash = true;
				x_speed = 24.8
			}
		}
	} else {


		if time < 0 {
			time = 0;
			x = 800;
		}
		if time > 25 {
			time = 25;
			x = 480;
		}
	}

if !instance_exists(o_inventory_close){
	instance_create_layer(x,y,"buttons",o_inventory_close);	
}

if dash = true {
	if inventory == false {
		x -= x_speed;
		x_speed --;
		time++;
	} else {
		x -= x_speed;
		x_speed ++;
		time--;
	}
}
if inventory == false {
	if x_speed <= 0 {
		dash = false;	
		time = time;
		inventory = true;
	}
} else {
	if x_speed > 0 {
		dash = false;	
		time = time;
		inventory = false;
	}	
}
}

if room == Room_info {
if o_drop_menu.time == 0 {
	if time == 25 or time == 0 {
		if keyboard_check_pressed(ord("I")){
			if inventory == true {
				dash = true;
				x_speed = -24.8;
			} else {
				dash = true;
				x_speed = 24.8
			}
		}
	} else {


		if time < 0 {
			time = 0;
			x = 800;
		}
		if time > 25 {
			time = 25;
			x = 480;
		}
	}
}

if !instance_exists(o_inventory_close){
	instance_create_layer(x,y,"buttons",o_inventory_close);	
}

if dash = true {
	if inventory == false {
		x -= x_speed;
		x_speed --;
		time++;
	} else {
		x -= x_speed;
		x_speed ++;
		time--;
	}
}
if inventory == false {
	if x_speed <= 0 {
		dash = false;	
		time = time;
		inventory = true;
	}
} else {
	if x_speed > 0 {
		dash = false;	
		time = time;
		inventory = false;
	}	
}

}




if position_meeting(mouse_x,mouse_y,o_mana_potion_50_inv){
	
	if global.mouse_item == 0 {
		if mouse_check_button_pressed(mb_left){
			hareket = true;
		}
		
		if hareket == false {
			if mouse_check_button_pressed(mb_right){
				if in_skillbar == false {
					if o_skill_1.sprite_index == s_skill_1 {
						o_skill_1.potion_deger = 5;
						in_skillbar = true;
					} else if o_skill_2.sprite_index == s_skill_1 {
						o_skill_2.potion_deger = 5;
						in_skillbar = true;
					} else if o_skill_3.sprite_index == s_skill_1 {
						o_skill_3.potion_deger = 5;
						in_skillbar = true;
					} else if o_skill_4.sprite_index == s_skill_1 {
						o_skill_4.potion_deger = 5;
						in_skillbar = true;
					} else if o_skill_5.sprite_index == s_skill_1 {
						o_skill_5.potion_deger = 5;
						in_skillbar = true;
					} else if o_skill_6.sprite_index == s_skill_1 {
						o_skill_6.potion_deger = 5;
						in_skillbar = true;
					} else if o_skill_7.sprite_index == s_skill_1 {
						o_skill_7.potion_deger = 5;
						in_skillbar = true;
					} else if o_skill_8.sprite_index == s_skill_1 {
						o_skill_8.potion_deger = 5;
						in_skillbar = true;
					} else if o_skill_tutucu.sprite_index == s_skill_1 {
						o_skill_tutucu.potion_deger = 5;
						in_skillbar = true;
					} 
				}
			}
		}
		
	} else {
		image_index = 0;	
	}
	
	
	if hareket == false {
		if image_index >= 4 {
			image_index = 4;
			image_speed = 0;
		} else {
			image_speed = 5;
		}
	}
	
} else {
	if hareket == false{
		if image_index <= 1 {
			image_index = 0;	
			image_speed = 0;
		} else {
			image_speed -= 1;
		}
	}
	
}

if hareket == true {
	global.mouse_item = 1;
	x = mouse_x-16;
	y = mouse_y-16;
	image_index = 0;
	if mouse_check_button_pressed(mb_right){
		global.mouse_item = 0;
		hareket = false;
	}
	if keyboard_check_pressed(ord("I")){
		global.mouse_item = 0;
		hareket = false;
	}
}

if hareket == false and global.mouse_item == 0 {
	if position == 1 {
		x = o_inventory_place_1.x;
		y = o_inventory_place_1.y;
	}
	if position == 2 {
		x = o_inventory_place_2.x;
		y = o_inventory_place_2.y;
			
			
	}
	if position == 3 {
		x = o_inventory_place_3.x;
		y = o_inventory_place_3.y;
	}
	if position == 4 {
		x = o_inventory_place_4.x;
		y = o_inventory_place_4.y;
	}
	if position == 5 {
		x = o_inventory_place_5.x;
		y = o_inventory_place_5.y;
	}
	if position == 6 {
		x = o_inventory_place_6.x;
		y = o_inventory_place_6.y;
	}
	if position == 7 {
		x = o_inventory_place_7.x;
		y = o_inventory_place_7.y;
	}
	if position == 8 {
		x = o_inventory_place_8.x;
		y = o_inventory_place_8.y;
	}
	if position == 9 {
		x = o_inventory_place_9.x;
		y = o_inventory_place_9.y;
	}
	if position == 10 {
		x = o_inventory_place_10.x;
		y = o_inventory_place_10.y;
	}
	if position == 11 {
		x = o_inventory_place_11.x;
		y = o_inventory_place_11.y;
	}
	if position == 12 {
		x = o_inventory_place_12.x;
		y = o_inventory_place_12.y;
	}
	if position == 13 {
		x = o_inventory_place_13.x;
		y = o_inventory_place_13.y;
	}
	if position == 14 {
		x = o_inventory_place_14.x;
		y = o_inventory_place_14.y;
	}
	if position == 15 {
		x = o_inventory_place_15.x;
		y = o_inventory_place_15.y;
	}
	if position == 16 {
		x = o_inventory_place_16.x;
		y = o_inventory_place_16.y;
	}
}