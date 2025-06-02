/// @description Insert description here
// You can write your code in this editor




if position_meeting(mouse_x,mouse_y,o_rogue_leather_pants_drop){
	
	
	if mouse_check_button_pressed(mb_left){
		if o_inventory.place_1 == true or o_inventory.place_2 == true or o_inventory.place_3 == true or o_inventory.place_4 == true or o_inventory.place_5 == true or o_inventory.place_6 == true or o_inventory.place_7 == true or o_inventory.place_8 == true or o_inventory.place_9 == true or o_inventory.place_10 == true or o_inventory.place_11 == true or o_inventory.place_12 == true or o_inventory.place_13 == true or o_inventory.place_14 == true or o_inventory.place_15 == true or o_inventory.place_16 == true {
			if global.leather_id_1_pants == true {
				o_rogue.pacavra_pants = 2;
				global.leather_id_1_pants = false;
				instance_destroy(o_rogue_leather_pants_drop);	
			} else if global.leather_id_2_pants == true {
				o_rogue.pacavra_pants = 2;
				global.leather_id_2_pants = false;
				instance_destroy(o_rogue_leather_pants_drop);
			} else if global.leather_id_3_pants == true {
				o_rogue.pacavra_pants = 2;
				global.leather_id_3_pants = false;
				instance_destroy(o_rogue_leather_pants_drop);
			} else if global.leather_id_4_pants == true {
				o_rogue.pacavra_pants = 2;
				global.leather_id_4_pants = false;
				instance_destroy(o_rogue_leather_pants_drop);
			} else if global.leather_id_5_pants == true {
				o_rogue.pacavra_pants = 2;
				global.leather_id_5_pants = false;
				instance_destroy(o_rogue_leather_pants_drop);
			}
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




