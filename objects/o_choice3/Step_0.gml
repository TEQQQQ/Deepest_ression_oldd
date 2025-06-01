/// @description Insert description here
// You can write your code in this editor

/*
if position_meeting(mouse_x,mouse_y,o_choice) {
	if artis == true {
			saydamlik+= 0.01;	
		} else {
			saydamlik-= 0.01;	
		}
		if saydamlik <= 0.2 {
			artis = true;	
		}
		if saydamlik >= 0.9 {
			artis = false;	
		}
	image_index = 1;
} else {
	image_index = 0;	
}

*/

if position_meeting(mouse_x,mouse_y,o_choice3) {
	if mouse_check_button_pressed(mb_left){
		global.text_info = false;
		global.text_main = true;
		global.text_obj1 = false;
		global.text_obj2 = false;
		global.text_obj3 = false;
		global.text_obj4 = false;
		if instance_exists(o_obj2) {
			o_obj2.gorunum = false;	
		}
		if instance_exists(o_obj1) {
			o_obj1.gorunum = false;	
		}
		if instance_exists(o_obj3) {
			o_obj3.gorunum = false;	
		}
		if instance_exists(o_obj4) {
			o_obj4.gorunum = false;	
		}
	}
}