/// @description Insert description here
// You can write your code in this editor



if position_meeting(mouse_x,mouse_y,o_gold_drop){
	
	
	if mouse_check_button_pressed(mb_left){
		o_rogue.gold += o_drop.drop_gold_count;
		instance_destroy(o_gold_drop);	
	}
		
	if image_index >= 4 {
		image_index = 4;
		image_speed = 0;
	} else {
		image_speed = 5;
	}
} else {
	
	if image_index <= 1 {
		image_index = 0;	
		image_speed = 0;
	} else {
		image_speed -= 1;
	}
}




