/// @description Insert description here
// You can write your code in this editor





if o_skill_1.sprite_index != s_skill_1 {

	if o_skill_1.hareket == true {
		if mouse_check_button_pressed(mb_left){
			instance_destroy(o_skill_select);
			o_skill_1.sprite_index = s_skill_1;
			o_skill_1.hurting_deger = 0;
			o_skill_1.resisting_deger = 0;
			o_skill_1.thievery_deger = 0;
			o_skill_1.potion_deger = 0;
			o_skill_1.hareket = false;
			global.skill = 0;
		}
	}

}


if o_skill_1.sprite_index == s_active_potion_hp_100 {
	o_health_potion_100_inv.in_skillbar = false;
}

if o_skill_1.sprite_index == s_active_potion_mp_50 {
	o_mana_potion_50_inv.in_skillbar = false;
}






