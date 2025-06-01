/// @description Insert description here
// You can write your code in this editor



if image_xscale <= 1 {
	image_xscale = 1;
	image_yscale = 1;
} else {
	image_xscale-= 0.01;
	image_yscale-= 0.01;
}

if o_rogue.defence_50 == 1 or o_rogue.defence_50 ==2 {
	
	
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
	o_buff_system.player_buff_count -= 1;
	if instance_exists(o_glacier_debuff){
		if previous_count < o_glacier_debuff.previous_count {
			o_glacier_debuff.previous_count -=1;
		}
	}
	
	if instance_exists(o_poison_debuff){
		if previous_count < o_poison_debuff.previous_count {
			o_poison_debuff.previous_count -=1;
		}
	}
	
	if instance_exists(o_burn_debuff) {
		if previous_count < o_burn_debuff.previous_count {
			o_burn_debuff.previous_count -=1;
		}
	}
	
	if instance_exists(o_bleed_debuff){
		if previous_count < o_bleed_debuff.previous_count {
			o_bleed_debuff.previous_count -=1;
		}
	}
		
	if instance_exists(o_electro_debuff){
		if previous_count < o_electro_debuff.previous_count {
			o_electro_debuff.previous_count -=1;
		}
	}
	
	if instance_exists(o_defence_1_2_buff){
		if previous_count < o_defence_1_2_buff.previous_count {
			o_defence_1_2_buff.previous_count -=1;
		}
	}
	if instance_exists(o_defence_1_3_buff){
		if previous_count < o_defence_1_3_buff.previous_count {
			o_defence_1_3_buff.previous_count -=1;
		}
	}
}



/*
if o_buff_system.player_buff_count != previous_count {
	x = o_buff_system.x+(o_buff_system.player_buff_count-previous_count)*24;
}
*/


if (o_buff_system.player_buff_count-previous_count) > 9 {
	x = o_buff_system.x+((o_buff_system.player_buff_count-previous_count)-10)*24;
	y = o_buff_system.y+24;
	if (o_buff_system.player_buff_count-previous_count) > 19 {
		x = o_buff_system.x+((o_buff_system.player_buff_count-previous_count)-20)*24;
		y = o_buff_system.y+48;
		if (o_buff_system.player_buff_count-previous_count) > 29 {
			x = o_buff_system.x+((o_buff_system.player_buff_count-previous_count)-30)*24;
			y = o_buff_system.y+72;
		}
	}
} else {
	x = o_buff_system.x+(o_buff_system.player_buff_count-previous_count)*24;
	y = o_buff_system.y;
}

if once == true {
	if !instance_exists(o_defence_effect){
		instance_create_layer(o_border_player.x,o_border_player.y,"effects",o_defence_effect);	
		once = false;
	}
}
