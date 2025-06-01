/// @description Insert description here
// You can write your code in this editor
if global.text_info == true {

	draw_set_color(c_white)

	draw_set_font(fnt_skill);

	if room == Room_info {
		if o_stats.time == 0 {
			draw_text_transformed(x,y," "+string(key),0.05,0.05,0);
		}
		if sprite_index == s_active_potion_hp_100 and o_stats.time == 0{
			draw_text_transformed(x+5,y+12,o_rogue.health_potion_100,0.07,0.07,0);
		}
	
	}

	if room == Room_character_skills {
		draw_text_transformed(x,y," "+string(key),0.05,0.05,0);	
	}


	if room == Room1 {
		//draw_text_transformed(x,y+10," "+string(hurting_deger),0.05,0.05,0);	
		draw_text_transformed(x,y," "+string(key),0.05,0.05,0);	
		if sprite_index == s_active_potion_hp_100 {
			draw_text_transformed(x+5,y+12,o_rogue.health_potion_100,0.07,0.07,0);
		}
	}
}