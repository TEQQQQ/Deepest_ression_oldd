/// @description Insert description here
// You can write your code in this editor


if instance_exists(o_tier1_1_bandicot){
	
	

	if image_xscale <= 1 {
		image_xscale = 1;
		image_yscale = 1;
	} else {
		image_xscale-= 0.01;
		image_yscale-= 0.01;
	}

	if o_tier1_1_bandicot.stun == 1 or o_tier1_1_bandicot.stun == 2 {
	
	
		if down == true {
			image_alpha-=0.01;
			if image_alpha <= 0.10 {
				down = false;
				up = true;
			}
		} 
	
		if up == true {
			image_alpha+=0.01;
			if image_alpha >= 1 {
				down = true;
				up = false;
			}
		} 
	
	
	} else {
		instance_destroy();
		o_buff_system_tier1_1_bandicot.enemy_buff_count -= 1;
		if instance_exists(o_glacier_debuff_bandicot){
			if previous_count < o_glacier_debuff_bandicot.previous_count {
				o_glacier_debuff_bandicot.previous_count -=1;
			}
		}
	
		if instance_exists(o_poison_debuff_bandicot){
			if previous_count < o_poison_debuff_bandicot.previous_count {
				o_poison_debuff_bandicot.previous_count -=1;
			}
		}
	
		if instance_exists(o_burn_debuff_bandicot) {
			if previous_count < o_burn_debuff_bandicot.previous_count {
				o_burn_debuff_bandicot.previous_count -=1;
			}
		}
	
		if instance_exists(o_bleed_debuff_bandicot){
			if previous_count < o_bleed_debuff_bandicot.previous_count {
				o_bleed_debuff_bandicot.previous_count -=1;
			}
		}
	
		if instance_exists(o_electro_debuff_bandicot){
			if previous_count < o_electro_debuff_bandicot.previous_count {
				o_electro_debuff_bandicot.previous_count -=1;
			}
		}
		
		if instance_exists(o_gold_curse_debuff_bandicot){
			if previous_count < o_gold_curse_debuff_bandicot.previous_count {
				o_gold_curse_debuff_bandicot.previous_count -=1;
			}
		}
		
	}



	/*
	if o_buff_system.player_buff_count != previous_count {
		x = o_buff_system.x+(o_buff_system.player_buff_count-previous_count)*24;
	}
	*/



	if (o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count) > 9 {
		x = o_buff_system_tier1_1_bandicot.x-((o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)-10)*24;
		y = o_buff_system_tier1_1_bandicot.y+24;
		if (o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count) > 19 {
			x = o_buff_system_tier1_1_bandicot.x-((o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)-20)*24;
			y = o_buff_system_tier1_1_bandicot.y+48;
			if (o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count) > 29 {
				x = o_buff_system_tier1_1_bandicot.x-((o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)-30)*24;
				y = o_buff_system_tier1_1_bandicot.y+72;
			}
		}
	} else {
		x = o_buff_system_tier1_1_bandicot.x-(o_buff_system_tier1_1_bandicot.enemy_buff_count-previous_count)*24;
		y = o_buff_system_tier1_1_bandicot.y;
	}


	
} else {
	instance_destroy();
}

