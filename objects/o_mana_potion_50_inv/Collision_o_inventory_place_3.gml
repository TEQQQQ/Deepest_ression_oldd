/// @description Insert description here
// You can write your code in this editor


if o_inventory.place_3 == true {
	if global.mouse_item == 1 {
		if mouse_check_button_released(mb_left){
			if position == 2 {
				o_inventory.place_2 = true;	
			}
			if position == 1 {
				o_inventory.place_1 = true;	
			}
			if position == 4 {
				o_inventory.place_4 = true;	
			}
			if position == 5 {
				o_inventory.place_5 = true;	
			}
			if position == 6 {
				o_inventory.place_6 = true;	
			}
			if position == 7 {
				o_inventory.place_7 = true;	
			}
			if position == 8 {
				o_inventory.place_8 = true;	
			}
			if position == 9 {
				o_inventory.place_9 = true;	
			}
			if position == 10 {
				o_inventory.place_10 = true;	
			}
			if position == 11 {
				o_inventory.place_11 = true;	
			}
			if position == 12 {
				o_inventory.place_12 = true;	
			}
			if position == 13 {
				o_inventory.place_13 = true;	
			}
			if position == 14 {
				o_inventory.place_14 = true;	
			}
			if position == 15 {
				o_inventory.place_15 = true;	
			}
			if position == 16 {
				o_inventory.place_16 = true;	
			}
			hareket = false;
			o_inventory.place_3 = false;
			position = 3;
			global.mouse_item = 0;
		}	
	}
}


/*
if o_inventory.place_3 == true {
	if global.mouse_item == 1 {
		if mouse_check_button(mb_left){
			x = o_inventory_place_3.x;
			y = o_inventory_place_3.y
			o_inventory.place_3 = false;
			global.mouse_item = 0;
		}
	} else {
		
	}

}
*/
