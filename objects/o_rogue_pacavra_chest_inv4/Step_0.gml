/// @description Insert description here
// You can write your code in this editor




if room == Room_character_items_info or room == Room_character_select or room == Room_menu or room == Room_character_stats {
	instance_destroy();	
}


if room == Room1 {
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



if room == Room_info or room == Room1 {

	if position_meeting(mouse_x,mouse_y,o_rogue_pacavra_chest_inv4){
	
		if global.mouse_item == 0 {
			if mouse_check_button_pressed(mb_left){
				hareket = true;
			}
		
			if hareket == false {
				if mouse_check_button_pressed(mb_right){
					if in_equipment == false {
						if o_rogue.equipment_chest == 0 {
							o_rogue.equipment_chest = 1;
							in_equipment = true;
							// konumlar zırh takmak için
							if position == 1 {
								position = 18;
								o_inventory.place_1 = true;	
							
							}
							if position == 2 {
								position = 18;
								o_inventory.place_2 = true;	
							}
							if position == 3 {
								position = 18;
								o_inventory.place_3 = true;	
							}
							if position == 4 {
								position = 18;
								o_inventory.place_4 = true;	
							}
							if position == 5 {
								position = 18;
								o_inventory.place_5 = true;	
							}
							if position == 6 {
								position = 18;
								o_inventory.place_6 = true;	
							}
							if position == 7 {
								position = 18;
								o_inventory.place_7 = true;	
							}
							if position == 8 {
								position = 18;
								o_inventory.place_8 = true;	
							}
							if position == 9 {
								position = 18;
								o_inventory.place_9 = true;	
							}
							if position == 10 {
								position = 18;
								o_inventory.place_10 = true;	
							}
							if position == 11 {
								position = 18;
								o_inventory.place_11 = true;	
							}
							if position == 12 {
								position = 18;
								o_inventory.place_12 = true;	
							}
							if position == 13 {
								position = 18;
								o_inventory.place_13 = true;	
							}
							if position == 14 {
								position = 18;
								o_inventory.place_14 = true;	
							}
							if position == 15 {
								position = 18;
								o_inventory.place_15 = true;	
							}
							if position == 16 {
								position = 18;
								o_inventory.place_16 = true;	
							}
						
						
						
						} else {
						
						}
					} else {
						//zırh takılı ise sağ tıklayınca ne olacağı
						if o_inventory.place_1 == true {
							x = o_inventory_place_1.x;
							y = o_inventory_place_1.y;
							o_inventory.place_1 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 1;
							in_equipment = false;
						} else if o_inventory.place_2 == true {
							x = o_inventory_place_2.x;
							y = o_inventory_place_2.y;
							o_inventory.place_2 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 2;
							in_equipment = false;
							o_inventory.place_2 = false;
						} else if o_inventory.place_3 == true {
							x = o_inventory_place_3.x;
							y = o_inventory_place_3.y;
							o_inventory.place_3 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 3;
							in_equipment = false;
							o_inventory.place_3 = false;
						} else if o_inventory.place_4 == true {
							x = o_inventory_place_4.x;
							y = o_inventory_place_4.y;
							o_inventory.place_4 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 4;
							in_equipment = false;
							o_inventory.place_4 = false;
						} else if o_inventory.place_5 == true {
							x = o_inventory_place_5.x;
							y = o_inventory_place_5.y;
							o_inventory.place_5 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 5;
							in_equipment = false;
							o_inventory.place_5 = false;
						} else if o_inventory.place_6 == true {
							x = o_inventory_place_6.x;
							y = o_inventory_place_6.y;
							o_inventory.place_6 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							in_equipment = false;
							position = 6;
							o_inventory.place_6 = false;
						} else if o_inventory.place_7 == true {
							x = o_inventory_place_7.x;
							y = o_inventory_place_7.y;
							o_inventory.place_7 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 7;
							in_equipment = false;
							o_inventory.place_7 = false;
						} else if o_inventory.place_8 == true {
							x = o_inventory_place_8.x;
							y = o_inventory_place_8.y;
							o_inventory.place_8 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 8;
							in_equipment = false;
							o_inventory.place_8 = false;
						} else if o_inventory.place_9 == true {
							x = o_inventory_place_9.x;
							y = o_inventory_place_9.y;
							o_inventory.place_9 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 9;
							in_equipment = false;
							o_inventory.place_9 = false;
						} else if o_inventory.place_10 == true {
							x = o_inventory_place_10.x;
							y = o_inventory_place_10.y;
							o_inventory.place_10 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 10;
							in_equipment = false;
							o_inventory.place_10 = false;
						} else if o_inventory.place_11 == true {
							x = o_inventory_place_11.x;
							y = o_inventory_place_11.y;
							o_inventory.place_11 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 11;
							in_equipment = false;
							o_inventory.place_11 = false;
						} else if o_inventory.place_12 == true {
							x = o_inventory_place_12.x;
							y = o_inventory_place_12.y;
							o_inventory.place_12 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 12;
							in_equipment = false;
							o_inventory.place_12 = false;
						} else if o_inventory.place_13 == true {
							x = o_inventory_place_13.x;
							y = o_inventory_place_13.y;
							o_inventory.place_13 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 13;
							in_equipment = false;
							o_inventory.place_13 = false;
						} else if o_inventory.place_14 == true {
							x = o_inventory_place_14.x;
							y = o_inventory_place_14.y;
							o_inventory.place_14 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 14;
							in_equipment = false;
							o_inventory.place_14 = false;
						} else if o_inventory.place_15 == true {
							x = o_inventory_place_15.x;
							y = o_inventory_place_15.y;
							o_inventory.place_15 = false;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 15;
							in_equipment = false;
							o_inventory.place_15 = false;
						} else if o_inventory.place_16 == true {
							x = o_inventory_place_16.x;
							y = o_inventory_place_16.y;
							o_inventory.place_chest = true;
							o_rogue.equipment_chest = 0;
							position = 16;
							in_equipment = false;
							o_inventory.place_16 = false;
						} 
						
					
					}
				}
			}
		
		} else {
			image_index = 0;	
		}
		if in_equipment == true {
			image_index = 0;
			image_speed = 0;
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
		if in_equipment == true {
			image_index = 0;
			image_speed = 0;
		}
		if hareket == false {
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
		if position == 18 {
			x = o_inventory_place_chest.x;
			y = o_inventory_place_chest.y;	
		}
	}

}


