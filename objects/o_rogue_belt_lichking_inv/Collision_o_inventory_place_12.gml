/// @description Insert description here
// You can write your code in this editor


if o_inventory.place_12 == true {
	if global.mouse_item == 1 {
		if mouse_check_button_released(mb_left){
			if position == 2 {
				o_inventory.place_2 = true;	
				in_equipment = false;
			}
			if position == 1 {
				o_inventory.place_1 = true;	
				in_equipment = false;
			}
			if position == 4 {
				o_inventory.place_4 = true;	
				in_equipment = false;
			}
			if position == 5 {
				o_inventory.place_5 = true;	
				in_equipment = false;
			}
			if position == 6 {
				o_inventory.place_6 = true;	
				in_equipment = false;
			}
			if position == 7 {
				o_inventory.place_7 = true;	
				in_equipment = false;
			}
			if position == 8 {
				o_inventory.place_8 = true;	
				in_equipment = false;
			}
			if position == 9 {
				o_inventory.place_9 = true;	
				in_equipment = false;
			}
			if position == 10 {
				o_inventory.place_10 = true;
				in_equipment = false;
			}
			if position == 11 {
				o_inventory.place_11 = true;
				in_equipment = false;
			}
			if position == 3 {
				o_inventory.place_3 = true;	
				in_equipment = false;
			}
			if position == 13 {
				o_inventory.place_13 = true;	
				in_equipment = false;
			}
			if position == 14 {
				o_inventory.place_14 = true;	
				in_equipment = false;
			}
			if position == 15 {
				o_inventory.place_15 = true;	
				in_equipment = false;
			}
			if position == 16 {
				o_inventory.place_16 = true;
				in_equipment = false;
			}
			if position == 24 {
				o_inventory.place_belt = true;
				o_rogue.equipment_belt = 0;
				in_equipment = false;
			}
			hareket = false;
			o_inventory.place_12 = false;
			position = 12;
			global.mouse_item = 0;
		}	
	}
}







