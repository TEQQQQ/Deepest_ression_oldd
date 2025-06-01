/// @description Insert description here
// You can write your code in this editor
if global.text_info == true {
	sprite_index = s_stats;	
	if room == Room_info {

		if o_drop_menu.time == 0 and global.skill == 0 {

			if time == 25 or time == 0 {
				if keyboard_check_pressed(ord("U")){
					if inventory == true {
			
						dash = true;
						x_speed = -24.8;
					} else {
						dash = true;
						x_speed = 24.8
					}
					if global.character == 4 {
						for (var i = o_rogue.eklenecek_dex+2 ; i > o_rogue.eklenecek_dex; i--) {
							if o_rogue.eklenecek_dex > 0 {
								o_rogue.armor -= 5
								//o_rogue.armor -= (o_rogue.armor*2)/102;
								o_rogue.eklenecek_dex -=1;
								o_rogue.stat_points +=1;
							}
						}
						
						for (var i = o_rogue.eklenecek_str+2 ; i > o_rogue.eklenecek_str; i--) {	
							if o_rogue.eklenecek_str > 0 {
								o_rogue.attack -= 10
								//o_rogue.attack -= (o_rogue.attack*3)/103;
								o_rogue.eklenecek_str -=1;
								o_rogue.stat_points +=1;
							}
						}
					
						for (var i = o_rogue.eklenecek_mp+2 ; i > o_rogue.eklenecek_mp; i--) {
							if o_rogue.eklenecek_mp > 0 {
								o_rogue.max_mana -= 30
							
								//o_rogue.max_mana -= (o_rogue.max_mana*3)/103;
								//o_rogue.bleed_damage -= (o_rogue.bleed_damage*4)/104;
								//o_rogue.poison_damage -= (o_rogue.poison_damage*4)/104;
								//o_rogue.flame_damage -= (o_rogue.flame_damage*4)/104;
								//o_rogue.glacier_damage -= (o_rogue.glacier_damage*4)/104;
								//o_rogue.electro_damage -= (o_rogue.electro_damage*4)/104;
	
	
								o_rogue.eklenecek_mp -=1;
								o_rogue.stat_points +=1;
							}	
						}
					
						for (var i = o_rogue.eklenecek_vit+2 ; i > o_rogue.eklenecek_vit; i--) {
							if o_rogue.eklenecek_vit > 0 {
								o_rogue.max_hp -= 30;
								//o_rogue.max_hp -= (o_rogue.max_hp*2)/102;
								o_rogue.eklenecek_vit -=1;
								o_rogue.stat_points +=1;
							}
						}
						
						for (var i = o_rogue.eklenecek_int+2 ; i > o_rogue.eklenecek_int; i--) {
							if o_rogue.eklenecek_int > 0 {
								o_rogue.eklenecek_int -=1;
								o_rogue.stat_points +=1;
								o_rogue.luck -= 2
								/*
								o_rogue.bleed_resistance -= (o_rogue.bleed_resistance*2)/102;
								o_rogue.poison_resistance -=(o_rogue.poison_resistance*2)/102;
								o_rogue.flame_resistance -= (o_rogue.flame_resistance*2)/102;
								o_rogue.glacier_resistance -= (o_rogue.glacier_resistance*2)/102;
								o_rogue.electro_resistance -= (o_rogue.electro_resistance*2)/102;
								*/
								o_rogue.bleed_resistance -= 2;
								o_rogue.poison_resistance -= 2;
								o_rogue.flame_resistance -= 2;
								o_rogue.glacier_resistance -= 2;
								o_rogue.electro_resistance -= 2;
							}
						}
					}
		
				}
			} else {


				if time < 0 {
					time = 0;
					x = -160;
				}
				if time > 25 {
					time = 25;
					x = 160;
				}
			}
		}
	}


	if dash = true {
		if inventory == false {
			x += x_speed;
			x_speed --;
			time++;
		} else {
			x += x_speed;
			x_speed ++;
			time--;
		}
	}
	if inventory == false {
		if x_speed <= 0 {
			dash = false;	
			inventory = true;
		}
	} else {
		if x_speed > 0 {
			dash = false;	
			inventory = false;
		}	
	}

} else {
	sprite_index = noone;	
}
