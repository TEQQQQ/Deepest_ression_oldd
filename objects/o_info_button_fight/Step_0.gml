/// @description Insert description here
// You can write your code in this editor
if global.text_info == true {
	sprite_index = s_info_button_fight2345;	


	if room == Room_info {
		if keyboard_check_pressed(ord("L")){

					instance_destroy(o_hint_skill_info_battle);
					if global.skill == 0 {
						if o_inventory.time == 0 {
							o_inventory.once_konum = true;
							room_goto(Room1);	
						}
					}

			}
	}




	if o_stats.time == 0 and o_inventory.time == 0 and o_drop_menu.time == 0 and global.skill == 0{






	if position_meeting(mouse_x,mouse_y,o_info_button_fight){
		if !instance_exists(o_hint_skill_info_battle){
			instance_create_layer(x,y,"hints",o_hint_skill_info_battle);	
		}
		if mouse_check_button_pressed(mb_left){
			instance_destroy(o_hint_skill_info_battle);
			o_inventory.once_konum = true;
			room_goto(Room1);
		}
		time +=2;
		if time >= 0 {
			image_index =1;	
		}
		if time >= 3 {
			image_index =2;	
		}
		if time >= 6 {
			image_index =3;	
		}
		if time >= 9 {
			image_index =4;	
		}
		if time >= 12 {
			image_index =5;	
		}
		if time >= 15 {
			image_index =6;	
		}
		if time >= 18 {
			image_index =7;	
		}
		if time >= 21 {
			image_index =8;	
		}
		if time >= 24 {
			image_index =9;	
		}
		if time >= 27 {
			image_index =10;	
		}
		if time >= 30 {
			image_index =11;	
		}
		if time >= 33 {
			image_index =12;	
		}
		if time >= 34 {
			image_index = 12;
			time = 34;
		
		}
	} else {
		instance_destroy(o_hint_skill_info_battle);
		time -=2;
		if time < 0 {
			image_index = 0;	
			time = -1;
		}
		if time >= 0 {
			image_index =1;	
		}
		if time >= 3 {
			image_index =2;	
		}
		if time >= 6 {
			image_index =3;	
		}
		if time >= 9 {
			image_index =4;	
		}
		if time >= 12 {
			image_index =5;	
		}
		if time >= 15 {
			image_index =6;	
		}
		if time >= 18 {
			image_index =7;	
		}
		if time >= 21 {
			image_index =8;	
		}
		if time >= 24 {
			image_index =9;	
		}
		if time >= 27 {
			image_index =10;	
		}
		if time >= 30 {
			image_index =11;	
		}
		if time >= 33 {
			image_index =12;	
		}
	}

	} else {
		image_index = 0;
		time = 0;
	}

} else {
	sprite_index = noone;	
}