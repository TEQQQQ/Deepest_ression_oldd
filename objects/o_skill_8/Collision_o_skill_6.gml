/// @description Insert description here
// You can write your code in this editor
if o_skill_8.sprite_index == s_skill_1 {

	if o_skill_6.hareket == true {
		if mouse_check_button_pressed(mb_left){
			instance_destroy(o_hint_skill_info_11);
			instance_destroy(o_skill_select);
			sprite_index = o_skill_6.sprite_index;
			o_skill_6.sprite_index = s_skill_1;
			o_skill_8.hurting_deger = o_skill_6.hurting_deger;
			o_skill_8.resisting_deger = o_skill_6.resisting_deger;
			o_skill_8.thievery_deger = o_skill_6.thievery_deger;
			o_skill_8.potion_deger = o_skill_6.potion_deger;
			o_skill_6.potion_deger = 0;
			o_skill_6.hurting_deger = 0;
			o_skill_6.resisting_deger = 0;
			o_skill_6.thievery_deger = 0;
			o_skill_6.hareket = false;
			global.skill = 0;
		}
	}

}



if hareket == true {
	if position_meeting(mouse_x,mouse_y,o_skill_6){
		if !instance_exists(o_hint_skill_info_11){
			instance_create_layer(x,y,"hints",o_hint_skill_info_11);
		}
	} else {
		instance_destroy(o_hint_skill_info_11);	
	}
}




