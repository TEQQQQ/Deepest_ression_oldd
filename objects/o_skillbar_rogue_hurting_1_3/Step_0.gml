/// @description Insert description here
// You can write your code in this editor




if hareket == true {
	if !instance_exists(o_rotating_arrow){
		instance_create_layer(x,y,"buttons",o_rotating_arrow);
	}
	if !instance_exists(o_skill_select){
		instance_create_layer(x,y,"hints",o_skill_select);
	}
		if starter_x == o_skill_1.x {
		o_skill_bars.skill_1 = false;	
		}
		if starter_x == o_skill_2.x {
			o_skill_bars.skill_2 = false;	
		}
		if starter_x == o_skill_3.x {
			o_skill_bars.skill_3 = false;	
		}
		if starter_x == o_skill_4.x {
			o_skill_bars.skill_4 = false;	
		}
		if starter_x == o_skill_5.x {
			o_skill_bars.skill_5 = false;	
		}
		if starter_x == o_skill_6.x {
			o_skill_bars.skill_6 = false;	
		}
		if starter_x == o_skill_7.x {
			o_skill_bars.skill_7 = false;	
		}
		if starter_x == o_skill_8.x {
			o_skill_bars.skill_8 = false;	
		}
		if starter_x == o_skill_tutucu.x {
		o_skill_bars.skill_tutucu = false;	
		}
		if starter_x == o_skill_yokedici.x {
			o_skill_bars.skill_yokedici = false;	
		}
	x = mouse_x-16;
	y = mouse_y+16;
	global.skill = 1;
	if mouse_check_button_pressed(mb_right){
		instance_destroy(o_rotating_arrow);
		instance_destroy(o_skill_select);
		x = starter_x;
		y = starter_y;
		if x == o_skill_bars.skill_1_x {
			o_skill_bars.skill_1 = false;	
		}
		if x == o_skill_bars.skill_2_x {
			o_skill_bars.skill_2 = false;	
		}
		if x == o_skill_bars.skill_3_x {
			o_skill_bars.skill_3 = false;	
		}
		if x == o_skill_bars.skill_3_x {
			o_skill_bars.skill_3 = false;	
		}
		if x == o_skill_bars.skill_4_x {
			o_skill_bars.skill_4 = false;	
		}
		if x == o_skill_bars.skill_5_x {
			o_skill_bars.skill_5 = false;	
		}
		if x == o_skill_bars.skill_5_x {
			o_skill_bars.skill_5 = false;	
		}
		if x == o_skill_bars.skill_6_x {
			o_skill_bars.skill_6 = false;	
		}
		if x == o_skill_bars.skill_7_x {
			o_skill_bars.skill_7 = false;	
		}
		if x == o_skill_bars.skill_8_x {
			o_skill_bars.skill_8 = false;	
		}
		if x == o_skill_tutucu.x {
			o_skill_bars.skill_tutucu = false;	
		}
		if x == o_skill_yokedici.x {
			o_skill_bars.skill_yokedici = false;	
		}
		hareket = false;
		global.skill = 0;
	}
}
	

if hareket == false {
	
	x = starter_x;
	y = starter_y;
}
