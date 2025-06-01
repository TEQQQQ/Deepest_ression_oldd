/// @description Insert description here
// You can write your code in this editor



if position_meeting(mouse_x,mouse_y,o_health_potion_100_drop){
	
	
	if mouse_check_button_pressed(mb_left){
		if o_inventory.place_1 == true or o_inventory.place_2 == true or o_inventory.place_3 == true or o_inventory.place_4 == true or o_inventory.place_5 == true or o_inventory.place_6 == true or o_inventory.place_7 == true or o_inventory.place_8 == true or o_inventory.place_9 == true or o_inventory.place_10 == true or o_inventory.place_11 == true or o_inventory.place_12 == true or o_inventory.place_13 == true or o_inventory.place_14 == true or o_inventory.place_15 == true or o_inventory.place_16 == true {
			o_rogue.health_potion_100 += 1;
			instance_destroy(o_health_potion_100_drop);	
		} else if instance_exists(o_health_potion_100_inv) {
			o_rogue.health_potion_100 += 1;
		}
	}
		
	if image_index >= 4 {
		image_index = 4;
		image_speed = 0;
	} else {
		image_speed = 5;
	}
} else {
	
	if image_index <= 1 {
		image_index = 0;	
		image_speed = 0;
	} else {
		image_speed -= 1;
	}
}




