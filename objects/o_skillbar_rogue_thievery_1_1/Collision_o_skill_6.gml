/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left){
	if o_skill_bars.skill_6 == true{
		if starter_x == o_skill_1.x {
			o_skill_bars.skill_1 = true;	
		}
		if starter_x == o_skill_7.x {
			o_skill_bars.skill_7 = true;	
		}
		if starter_x == o_skill_3.x {
			o_skill_bars.skill_3 = true;	
		}
		if starter_x == o_skill_4.x {
			o_skill_bars.skill_4 = true;	
		}
		if starter_x == o_skill_5.x {
			o_skill_bars.skill_5 = true;	
		}
		if starter_x == o_skill_2.x {
			o_skill_bars.skill_2 = true;	
		}
		if starter_x == o_skill_8.x {
			o_skill_bars.skill_8 = true;	
		}
		if starter_x == o_skill_tutucu.x {
			o_skill_bars.skill_tutucu = true;	
		}
		starter_x = o_skill_6.x;
		starter_y = o_skill_6.y;
		o_skill_bars.skill_6 = false;
		o_skill_6.thievery_deger = 1.1;
		o_skill_2.thievery_deger = 0;
		o_skill_3.thievery_deger = 0;
		o_skill_4.thievery_deger = 0;
		o_skill_5.thievery_deger = 0;
		o_skill_1.thievery_deger = 0;
		o_skill_8.thievery_deger = 0;
		o_skill_7.thievery_deger = 0;
		hareket = false;
		global.skill = 0;
		instance_destroy(o_rotating_arrow);
	instance_destroy(o_skill_select);
	}
	
	
	
	
}



