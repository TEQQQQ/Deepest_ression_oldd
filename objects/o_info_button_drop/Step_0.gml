/// @description Insert description here
// You can write your code in this editor

if room == Room_info {
	if keyboard_check_pressed(ord("O")){

				instance_destroy(o_hint_skill_info_12);
				if global.skill == 0 {
						
				}

		}
}



if o_stats.time == 0 and o_inventory.time == 0 and o_drop_menu.time == 0 and global.skill == 0 {



if position_meeting(mouse_x,mouse_y,o_info_button_drop){
	if !instance_exists(o_hint_skill_info_12){
		instance_create_layer(x,y,"hints",o_hint_skill_info_12);	
	}
	if mouse_check_button_pressed(mb_left){
		if o_drop_menu.time == 23 or o_drop_menu.time == 0 {
				instance_destroy(o_hint_skill_info_12);
				o_drop_menu.drop_menu = true;
				o_drop_menu.dash = true;
				o_drop_menu.y_speed = +22.8;
			}
	}
	
	time += 2;
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
	instance_destroy(o_hint_skill_info_12);
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