/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x,mouse_y,o_chest){
	image_speed = 5;	
	if image_index >= 2 {
		image_index = 2;	
	}
	if mouse_check_button(mb_left){
		instance_destroy();
	}
} else {
	
	if image_index <= 1 {
		image_index = 0;
		image_speed = 0;
	} else {
		image_speed -= 1;
	}
}






