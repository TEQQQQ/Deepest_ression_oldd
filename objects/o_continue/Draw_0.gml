/// @description Insert description here
// You can write your code in this editor





draw_self();

if position_meeting(mouse_x,mouse_y,o_continue) {
	if mouse_check_button_pressed(mb_left){
		global.text_info = true;
		global.text_main = false;
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
		instance_destroy();
	}
	sprite_index = s_background_continue2
} else {
	draw_set_alpha(1);
	sprite_index = s_background_continue	
}