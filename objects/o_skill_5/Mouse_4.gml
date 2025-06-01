/// @description Insert description here
// You can write your code in this editor

if global.skill != 1 {

	if sprite_index != s_skill_1 {
		if room == Room_info {
			if !instance_exists(o_skill_select){
				if o_stats.time == 0 and o_inventory.time == 0 and o_drop_menu.time == 0 and global.skill == 0 {
					instance_create_layer(x,y,"hints",o_skill_select);	
				}
			}
			hareket = true;
			x = mouse_x;
			y = mouse_y;
		}
	} 

}
