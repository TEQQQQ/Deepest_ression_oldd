/// @description Insert description here
// You can write your code in this editor





if room == Room_info {
	if global.skill != 1 {
		if sprite_index != s_skill_1 {
			if !instance_exists(o_skill_select){
				instance_create_layer(x,y,"hints",o_skill_select);	
			}
				hareket = true;
				x = mouse_x;
				y = mouse_y;
		}
	}
}
