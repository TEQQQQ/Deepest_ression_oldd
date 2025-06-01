/// @description Insert description here
// You can write your code in this editor




if position_meeting(mouse_x,mouse_y,o_obj1){
	if o_obj2.gorunum == false and o_obj3.gorunum == false and o_obj4.gorunum == false {
		global.text_info = false;
		global.text_main = false;
		global.text_obj1 = true;
		global.text_obj2 = false;
		global.text_obj3 = false;
		global.text_obj4 = false;
		if number_ == 1 {
			sprite_index = s_background_madness_skull2
		} else {
			//image_index = 1;	
		}
		if mouse_check_button_pressed(mb_left){
			gorunum = true;	
		}
	}
} else {
	
	if gorunum == true {
		global.text_obj1 = true;
		if number_ == 1 {
			sprite_index = s_background_madness_skull2
		} else {
			//image_index = 1;	
		}
	} else {
		global.text_obj1 = false;	
		if number_ == 1 {
			sprite_index = s_background_madness_skull
		} else {
			//image_index = 0;	
		}
	}
}

if global.text_info == true {
	instance_destroy();	
}