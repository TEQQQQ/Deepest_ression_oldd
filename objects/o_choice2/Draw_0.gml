/// @description Insert description here
// You can write your code in this editor





draw_self();

if position_meeting(mouse_x,mouse_y,o_choice2) {
	if mouse_check_button_pressed(mb_left){
		if o_obj1.gorunum == true { 
			o_obj1.number_text = 2;	
			instance_destroy(o_choice);
			instance_destroy(o_choice2);
			instance_destroy(o_choice3);
		}
		
		if o_obj2.gorunum == true { 
			o_obj2.number_text = 2;	
			instance_destroy(o_choice);
			instance_destroy(o_choice2);
			instance_destroy(o_choice3);
		}
		
		if o_obj3.gorunum == true { 
			o_obj3.number_text = 2;	
			instance_destroy(o_choice);
			instance_destroy(o_choice2);
			instance_destroy(o_choice3);
		}
		
		if o_obj4.gorunum == true { 
			o_obj4.number_text = 2;	
			instance_destroy(o_choice);
			instance_destroy(o_choice2);
			instance_destroy(o_choice3);
		}
	}
	sprite_index = s_background_choice2
} else {
	draw_set_alpha(1);
	sprite_index = s_background_choice	
}