/// @description Insert description here
// You can write your code in this editor



if o_inventory.place_16 == true {
	if global.mouse_item == 1 {
		if mouse_check_button_released(mb_left){
			if self.position == 2 {
				o_inventory.place_2 = true;	
				self.in_equipment = false;
			}
			if self.position == 1 {
				o_inventory.place_1 = true;
				self.in_equipment = false;
			}
			if self.position == 4 {
				o_inventory.place_4 = true;	
				self.in_equipment = false;
			}
			if self.position == 5 {
				o_inventory.place_5 = true;	
				self.in_equipment = false;
			}
			if self.position == 6 {
				o_inventory.place_6 = true;	
				self.in_equipment = false;
			}
			if self.position == 7 {
				o_inventory.place_7 = true;	
				self.in_equipment = false;
			}
			if self.position == 8 {
				o_inventory.place_8 = true;	
				self.in_equipment = false;
			}
			if self.position == 9 {
				o_inventory.place_9 = true;	
				self.in_equipment = false;
			}
			if self.position == 10 {
				o_inventory.place_10 = true;
				self.in_equipment = false;
			}
			if self.position == 11 {
				o_inventory.place_11 = true;
				self.in_equipment = false;
			}
			if self.position == 12 {
				o_inventory.place_12 = true;	
				self.in_equipment = false;
			}
			if self.position == 13 {
				o_inventory.place_13 = true;	
				self.in_equipment = false;
			}
			if self.position == 14 {
				o_inventory.place_14 = true;	
				self.in_equipment = false;
			}
			if self.position == 15 {
				o_inventory.place_15 = true;
				self.in_equipment = false;
			}
			if self.position == 3 {
				o_inventory.place_3 = true;	
				self.in_equipment = false;
			}
			if self.position == 20 {
				o_inventory.place_boots = true;
				o_rogue.equipment_boots = 0;
				self.in_equipment = false;
			}
			self.hareket = false;
			o_inventory.place_16 = false;
			self.position = 16;
			global.mouse_item = 0;
		}	
	}
}






