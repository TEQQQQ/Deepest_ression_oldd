/// @description Insert description here
// You can write your code in this editor




if global.character == 4 {
	
	if o_rogue.real_bleed_res <= 0 {
		if !instance_exists(o_bleed_debuff) {
			player_buff_count += 1;
			instance_create_layer(x,y,"effects",o_bleed_debuff);	
			
		}
	}
	
	if o_rogue.real_flame_res <= 0 {
		if !instance_exists(o_burn_debuff) {
			player_buff_count += 1;
			instance_create_layer(x,y,"effects",o_burn_debuff);	
			
		}
	}
	if o_rogue.real_glacier_res <= 0 {
		if !instance_exists(o_glacier_debuff) {
			player_buff_count += 1;
			instance_create_layer(x,y,"effects",o_glacier_debuff);	
			
		}
	}
	
	if o_rogue.real_electro_res <= 0 {
		if !instance_exists(o_electro_debuff) {
			player_buff_count += 1;
			instance_create_layer(x,y,"effects",o_electro_debuff);	
			
		}
	}
	
	if o_rogue.real_poison_res <= 0 {
		if !instance_exists(o_poison_debuff) {
			player_buff_count += 1;
			instance_create_layer(x,y,"effects",o_poison_debuff);	
			
		}
	}
	
	if o_rogue.defence_50 == 1 or o_rogue.defence_50 == 2 {
		if !instance_exists(o_defence_buff) {
			player_buff_count += 1;
			instance_create_layer(x,y,"effects",o_defence_buff);	
			
		}
	}
	
	if o_rogue.defence_resisting_1_2 == 1 or o_rogue.defence_resisting_1_2 == 2 {
		if !instance_exists(o_defence_1_2_buff) {
			player_buff_count += 1;
			instance_create_layer(x,y,"effects",o_defence_1_2_buff);	
			
		}
	}
	
	if o_rogue.defence_resisting_1_3_on == true {
		if !instance_exists(o_defence_1_3_buff) {
			player_buff_count += 1;
			instance_create_layer(x,y,"effects",o_defence_1_3_buff);	
			
		}
	}
	
}




