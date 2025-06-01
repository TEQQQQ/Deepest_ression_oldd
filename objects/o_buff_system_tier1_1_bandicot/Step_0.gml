/// @description Insert description here
// You can write your code in this editor




if global.character == 4 {
	
	if o_tier1_1_bandicot.real_bleed_res <= 0 {
		if !instance_exists(o_bleed_debuff_bandicot) {
			enemy_buff_count += 1;
			instance_create_layer(o_border.x,o_border.y,"effects",o_bleed_debuff_bandicot);	
			
		}
	}
	
	if o_tier1_1_bandicot.real_flame_res <= 0 {
		if !instance_exists(o_burn_debuff_bandicot) {
			enemy_buff_count += 1;
			instance_create_layer(o_border.x,o_border.y,"effects",o_burn_debuff_bandicot);	
			
		}
	}
	if o_tier1_1_bandicot.real_glacier_res <= 0 {
		if !instance_exists(o_glacier_debuff_bandicot) {
			enemy_buff_count += 1;
			instance_create_layer(o_border.x,o_border.y,"effects",o_glacier_debuff_bandicot);	
			
		}
	}
	
	if o_tier1_1_bandicot.real_electro_res <= 0 {
		if !instance_exists(o_electro_debuff_bandicot) {
			enemy_buff_count += 1;
			instance_create_layer(o_border.x,o_border.y,"effects",o_electro_debuff_bandicot);	
			
		}
	}
	
	if o_tier1_1_bandicot.real_poison_res <= 0 {
		if !instance_exists(o_poison_debuff_bandicot) {
			enemy_buff_count += 1;
			instance_create_layer(o_border.x,o_border.y,"effects",o_poison_debuff_bandicot);	
			
		}
	}
	
	if o_tier1_1_bandicot.stun == 1 or o_tier1_1_bandicot.stun == 2 {
		if !instance_exists(o_stun_debuff_bandicot) {
			enemy_buff_count += 1;
			instance_create_layer(o_border.x,o_border.y,"effects",o_stun_debuff_bandicot);	
			
		}
	}
	
	if o_tier1_1_bandicot.gold_curse == 1 or o_tier1_1_bandicot.gold_curse == 2 {
		if !instance_exists(o_gold_curse_debuff_bandicot) {
			enemy_buff_count += 1;
			instance_create_layer(o_border.x,o_border.y,"effects",o_gold_curse_debuff_bandicot);	
			
		}
	}
	
}




