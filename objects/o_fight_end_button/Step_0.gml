/// @description Insert description here
// You can write your code in this editor




if position_meeting(mouse_x,mouse_y,o_fight_end_button){
	if mouse_check_button_pressed(mb_left){
		if o_inventory.time == 0 {
			o_inventory.once_konum = true;
			o_skill_1.time = 0;
			o_skill_1.timecount = false;
			o_skill_2.time = 0;
			o_skill_2.timecount = false;
			o_skill_3.time = 0;
			o_skill_3.timecount = false;
			o_skill_4.time = 0;
			o_skill_4.timecount = false;
			o_skill_5.time = 0;
			o_skill_5.timecount = false;
			o_skill_6.time = 0;
			o_skill_6.timecount = false;
			o_skill_7.time = 0;
			o_skill_7.timecount = false;
			o_skill_8.time = 0;
			o_skill_8.timecount = false;
			
			room_goto(Room_info);
			
		}
		

	}
} else {
	
}



