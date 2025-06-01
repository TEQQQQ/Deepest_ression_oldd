/// @description Insert description here
// You can write your code in this editor

if global.text_info == true {
	draw_set_font(fnt_skill);
	if room == Room_info {
		draw_text_transformed(x-32,y," "+string(key),0.05,0.05,0);
	}
	
	if room == Room1 {
		draw_text_transformed(x-6,y," "+string(key),0.05,0.05,0);
	}
}


