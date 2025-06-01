/// @description Insert description here
// You can write your code in this editor



if o_rogue.active_hunting_1 != 1 {


	if position_meeting(mouse_x,mouse_y,o_skill_rogue_hurting_1_1){
		image_index = 0;	
	} else {
		image_index = 1;	
	} 

} else {
	image_index = 0;	
}


if o_thievery.skill_page != 0 {
	depth = 500
	//instance_deactivate_object(o_skill_rogue_hurting_1_1);	
} else {
	depth = -500
	//instance_activate_object(o_skill_rogue_hurting_1_1);	
}

if o_rogue.active_hunting_1 == 1 {
	if o_skill_1.hurting_deger == 1.1 {
		if o_skill_bars.skill_1 == true and yerlesim == false {
			instance_create_layer(o_skill_bars.x+o_skill_bars.skill_1_x,o_skill_bars.y+o_skill_bars.skill_1_y,"buttons",o_skillbar_rogue_hurting_1_1);
			o_skill_bars.skill_1 = false;
				
			yerlesim = true;
		}
	}
	if o_skill_2.hurting_deger == 1.1 {
		if o_skill_bars.skill_2 == true and yerlesim == false {
			instance_create_layer(o_skill_bars.x+o_skill_bars.skill_2_x,o_skill_bars.y+o_skill_bars.skill_2_y,"buttons",o_skillbar_rogue_hurting_1_1);
			o_skill_bars.skill_2 = false;
				
			yerlesim = true;
		}
	}
	if o_skill_3.hurting_deger == 1.1 {
		if o_skill_bars.skill_3 == true and yerlesim == false {
			instance_create_layer(o_skill_bars.x+o_skill_bars.skill_3_x,o_skill_bars.y+o_skill_bars.skill_3_y,"buttons",o_skillbar_rogue_hurting_1_1);
			o_skill_bars.skill_3 = false;
				
			yerlesim = true;
		}
	}
	if o_skill_4.hurting_deger == 1.1 {
		if o_skill_bars.skill_4 == true and yerlesim == false {
			instance_create_layer(o_skill_bars.x+o_skill_bars.skill_4_x,o_skill_bars.y+o_skill_bars.skill_4_y,"buttons",o_skillbar_rogue_hurting_1_1);
			o_skill_bars.skill_4 = false;
				
			yerlesim = true;
		}
	}
	if o_skill_5.hurting_deger == 1.1 {
		if o_skill_bars.skill_5 == true and yerlesim == false {
			instance_create_layer(o_skill_bars.x+o_skill_bars.skill_5_x,o_skill_bars.y+o_skill_bars.skill_5_y,"buttons",o_skillbar_rogue_hurting_1_1);
			o_skill_bars.skill_5 = false;
				
			yerlesim = true;
		}
	}
	if o_skill_6.hurting_deger == 1.1 {
		if o_skill_bars.skill_6 == true and yerlesim == false {
			instance_create_layer(o_skill_bars.x+o_skill_bars.skill_6_x,o_skill_bars.y+o_skill_bars.skill_6_y,"buttons",o_skillbar_rogue_hurting_1_1);
			o_skill_bars.skill_6 = false;
				
			yerlesim = true;
		}
	}
	if o_skill_7.hurting_deger == 1.1 {
		if o_skill_bars.skill_7 == true and yerlesim == false {
			instance_create_layer(o_skill_bars.x+o_skill_bars.skill_7_x,o_skill_bars.y+o_skill_bars.skill_7_y,"buttons",o_skillbar_rogue_hurting_1_1);
			o_skill_bars.skill_7 = false;
				
			yerlesim = true;
		}
	}
	if o_skill_8.hurting_deger == 1.1 {
		if o_skill_bars.skill_8 == true and yerlesim == false {
			instance_create_layer(o_skill_bars.x+o_skill_bars.skill_8_x,o_skill_bars.y+o_skill_bars.skill_8_y,"buttons",o_skillbar_rogue_hurting_1_1);
			o_skill_bars.skill_8 = false;
				
			yerlesim = true;
		}
	}
		
}