/// @description Insert description here
// You can write your code in this editor


if position_meeting(mouse_x,mouse_y,o_inventory_close){
	image_index = 1;
} else {
	image_index = 0;	
}


x = o_inventory.x-160
y = o_inventory.y-174;


if image_index == 1 {
	if room == Room_info {
		if global.mouse_item == 0 {
			if mouse_check_button_pressed(mb_left){
				o_inventory.inventory = true;
				o_inventory.dash = true;
				o_inventory.x_speed = -24.8;
			
				o_inventory_place_1.inventory = true;
				o_inventory_place_1.dash = true;
				o_inventory_place_1.x_speed = -24.8;
			
				o_inventory_place_2.inventory = true;
				o_inventory_place_2.dash = true;
				o_inventory_place_2.x_speed = -24.8;
				
				o_inventory_place_3.inventory = true;
				o_inventory_place_3.dash = true;
				o_inventory_place_3.x_speed = -24.8;
			
				o_inventory_place_4.inventory = true;
				o_inventory_place_4.dash = true;
				o_inventory_place_4.x_speed = -24.8;
				
				o_inventory_place_5.inventory = true;
				o_inventory_place_5.dash = true;
				o_inventory_place_5.x_speed = -24.8;
			
				o_inventory_place_6.inventory = true;
				o_inventory_place_6.dash = true;
				o_inventory_place_6.x_speed = -24.8;
				
				o_inventory_place_7.inventory = true;
				o_inventory_place_7.dash = true;
				o_inventory_place_7.x_speed = -24.8;
			
				o_inventory_place_8.inventory = true;
				o_inventory_place_8.dash = true;
				o_inventory_place_8.x_speed = -24.8;
				
				o_inventory_place_9.inventory = true;
				o_inventory_place_9.dash = true;
				o_inventory_place_9.x_speed = -24.8;
			
				o_inventory_place_10.inventory = true;
				o_inventory_place_10.dash = true;
				o_inventory_place_10.x_speed = -24.8;
				
				o_inventory_place_11.inventory = true;
				o_inventory_place_11.dash = true;
				o_inventory_place_11.x_speed = -24.8;
			
				o_inventory_place_12.inventory = true;
				o_inventory_place_12.dash = true;
				o_inventory_place_12.x_speed = -24.8;
				
				o_inventory_place_13.inventory = true;
				o_inventory_place_13.dash = true;
				o_inventory_place_13.x_speed = -24.8;
			
				o_inventory_place_14.inventory = true;
				o_inventory_place_14.dash = true;
				o_inventory_place_14.x_speed = -24.8;
				
				o_inventory_place_15.inventory = true;
				o_inventory_place_15.dash = true;
				o_inventory_place_15.x_speed = -24.8;
			
				o_inventory_place_16.inventory = true;
				o_inventory_place_16.dash = true;
				o_inventory_place_16.x_speed = -24.8;
			}
		}
	}
}