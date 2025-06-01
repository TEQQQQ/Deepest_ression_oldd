/// @description Insert description here
// You can write your code in this editor





if position_meeting(mouse_x,mouse_y,o_skill_page_close){
	image_index = 1;
	if o_skill_bars.skill_tutucu == 1 { 
		if mouse_check_button_pressed(mb_left){
			if global.skill == 0 {
				
				if global.skillbar_once == 1 {
					global.text_info = false;
					global.skillbar_once = 2;
				}
				room_goto(Room_info);
			}
		}
	}
} else {
	image_index = 0;	
}