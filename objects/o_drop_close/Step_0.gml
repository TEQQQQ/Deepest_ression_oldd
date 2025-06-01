/// @description Insert description here
// You can write your code in this editor


if position_meeting(mouse_x,mouse_y,o_drop_close){
	image_index = 1;
} else {
	image_index = 0;	
}


x = o_drop_menu.x+192-20;
y = o_drop_menu.y+1;


if image_index == 1 {
	if room == Room_info {
		if mouse_check_button_pressed(mb_left){
			if o_drop_menu.time == 23 or o_drop_menu.time == 0 {
				o_drop_menu.drop_menu = false;
				o_drop_menu.dash = true;
				o_drop_menu.y_speed = -22.8;
			}
		}
	}
}