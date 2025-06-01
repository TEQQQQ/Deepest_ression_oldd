/// @description Insert description here
// You can write your code in this editor










if o_skill_3.sprite_index == s_skill_1 {

	if o_skill_tutucu.hareket == true {
		if mouse_check_button_pressed(mb_left){
			instance_destroy(o_hint_skill_info_11);
			instance_destroy(o_skill_select);
			sprite_index = o_skill_tutucu.sprite_index;
			o_skill_tutucu.sprite_index = s_skill_1;
			o_skill_3.hurting_deger = o_skill_tutucu.hurting_deger;
			o_skill_3.resisting_deger = o_skill_tutucu.resisting_deger;
			o_skill_3.thievery_deger = o_skill_tutucu.thievery_deger;
			o_skill_3.potion_deger = o_skill_tutucu.potion_deger;
			o_skill_tutucu.potion_deger = 0;
			o_skill_tutucu.hurting_deger = 0;
			o_skill_tutucu.resisting_deger = 0;
			o_skill_tutucu.thievery_deger = 0;
			
			o_skill_tutucu.hareket = false;
			global.skill = 0;
		}
	}

}


if hareket == true {
	if position_meeting(mouse_x,mouse_y,o_skill_tutucu){
		if !instance_exists(o_hint_skill_info_11){
			instance_create_layer(x,y,"hints",o_hint_skill_info_11);
		}
	} else {
		instance_destroy(o_hint_skill_info_11);	
	}
}



