/// @description Insert description here
// You can write your code in this editor

//zırhlar

	if o_rogue.equipment_chest == 3 {
		sprite_index = s_sunknight_torso;
	}
	if o_rogue.equipment_chest == 2 {
		sprite_index = s_leather_torso;
	}
	if o_rogue.equipment_chest == 1 {
		sprite_index = s_pacavra_torso;
	}
	if o_rogue.equipment_chest == 0 {
		sprite_index = s_body_torso_rogue;
		
	}






if room == Room_character_items_info or room == Room_character_select or room == Room_menu or room == Room_character_stats {
	instance_destroy();	
}




if room == Room1 and !instance_exists(o_tier1_1_bandicot) {
	if once_konum == true {
		x = -160;
		y = 176;	
		
		once_konum = false;
	} 
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
				x = -160;
			}
			if time > 25 {
				time = 25;
				x = 160;
			}
		}
	

	if !instance_exists(o_inventory_close){
		instance_create_layer(x,y,"buttons",o_inventory_close);	
	}

	if dash = true {
		if inventory == false {
			x += x_speed;
			x_speed --;
			time++;
		} else {
			x += x_speed;
			x_speed ++;
			time--;
		}
	}
	if inventory == false {
		if x_speed <= 0 {
			dash = false;	
			inventory = true;
		}
	} else {
		if x_speed > 0 {
			dash = false;	
			inventory = false;
		}	
	}
x = o_inventory.x-7;
y = o_inventory.y-115;
}

if room == Room_info {
	if once_konum == true {
		x = 800;
		y = 176;	
		
		once_konum = false;
	} 
	if o_drop_menu.time == 0 and global.skill == 0{
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
x = o_inventory.x-7;
y = o_inventory.y-115;

}

