/// @description Insert description here
// You can write your code in this editor

if room == Room1 {

	x = o_border_player.x+16;
	y = o_border_player.y+16;
	
	if o_rogue.equipment_gloves == 1 {
		sprite_index = s_pacavra_arm_left;
	}
	if o_rogue.equipment_gloves == 2 {
		sprite_index = s_leather_arm_left;
	}
	if o_rogue.equipment_gloves == 3 {
		sprite_index = s_sunknight_arm_left;
	}
	if o_rogue.equipment_gloves == 0 {
		sprite_index = s_body_arm_left_rogue;
	}
	
	
}
if hasar_alma == true {
	image_blend = c_red;
	alarm[0] = 10;
	image_xscale = o_body_torso_rogue.image_xscale;
	image_yscale = o_body_torso_rogue.image_yscale;
	hasar_alma = false;
}


if hasar_alma == false {
	//image_blend = c_white;
	image_xscale = lerp(image_xscale,1,0.2);
	image_yscale = lerp(image_yscale,1,0.2);
}




