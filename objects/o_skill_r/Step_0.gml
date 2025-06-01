/// @description Insert description here
// You can write your code in this editor
if global.text_info == true {
	if room == Room_info {
		
	}

	sprite_index = s_skill_rogue_r;
	//anim
	
	if room == Room1 {
	
		
		if instance_exists(o_tier1_1_bandicot) {
		if sprite_index == s_skill_rogue_r {
			if timecount == true {
				time++;
				if o_rogue.real_glacier_res <= 0 {
					o_rogue.real_glacier_res = 0;
					if time/60 >= 0.0000 {
						image_index = 1;
					}
					if time/60 >= 0.0625*2 {
						image_index = 2;
					}
					if time/60 >= 0.1250*2 {
						image_index = 3;
					}
					if time/60 >= 0.1875*2 {
						image_index = 4;
					}
					if time/60 >= 0.2500*2 {
						image_index = 5;
					}
					if time/60 >= 0.3125*2 {
						image_index = 6;
					}
					if time/60 >= 0.3750*2 {
						image_index = 7;
					}
					if time/60 >= 0.4375*2 {
						image_index = 8;
					}
					if time/60 >= 0.5000*2 {
						image_index = 9;
					}
					if time/60 >= 0.5625*2 {
						image_index = 10;
					}
					if time/60 >= 0.6250*2 {
						image_index = 11;
					}
					if time/60 >= 0.6875*2 {
						image_index = 12;
					}
					if time/60 >= 0.7500*2 {
						image_index = 13;
					}
					if time/60 >= 0.8125*2 {
						image_index = 14;
					}
					if time/60 >= 0.8750*2 {
						image_index = 15;
					}
					if time/60 >= 0.9375*2 {
						image_index = 16;
					}
					if time/60 >= 1*2 {
						image_index = 0;
						timecount = false;
					}
				} else {
					if time/60 >= 0.0000 {
						image_index = 1;
					}
					if time/60 >= 0.0625 {
						image_index = 2;
					}
					if time/60 >= 0.1250 {
						image_index = 3;
					}
					if time/60 >= 0.1875 {
						image_index = 4;
					}
					if time/60 >= 0.2500 {
						image_index = 5;
					}
					if time/60 >= 0.3125 {
						image_index = 6;
					}
					if time/60 >= 0.3750 {
						image_index = 7;
					}
					if time/60 >= 0.4375 {
						image_index = 8;
					}
					if time/60 >= 0.5000 {
						image_index = 9;
					}
					if time/60 >= 0.5625 {
						image_index = 10;
					}
					if time/60 >= 0.6250 {
						image_index = 11;
					}
					if time/60 >= 0.6875 {
						image_index = 12;
					}
					if time/60 >= 0.7500 {
						image_index = 13;
					}
					if time/60 >= 0.8125 {
						image_index = 14;
					}
					if time/60 >= 0.8750 {
						image_index = 15;
					}
					if time/60 >= 0.9375 {
						image_index = 16;
					}
					if time/60 >= 1 {
						image_index = 0;
						timecount = false;
					}
				}
			}

			if timecount == false {
				if o_rogue.real_electro_res <= 0 {
					o_rogue.real_electro_res = 0;
					o_rogue.electro_timer++;
					if o_rogue.electro_timer/60 == 5{
						o_rogue.real_electro_res = o_rogue.max_electro_res;
						o_rogue.electro_timer = 0;
					}
				} else {
				if !instance_exists(o_skill_delay_effect){
					if keyboard_check_pressed(ord(string(key))){
						timecount = true;
						instance_create_layer(x,y,"hints",o_skill_delay_effect);
						if o_rogue.real_bleed_res <= 0 {
							o_rogue.hp -= ceil(o_rogue.max_hp/50);		
							var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
							popup.xpopupspeed = +2;
							popup.ypopupspeed = +0.5;
							popup.color = c_maroon;
							popup.damage = ceil(o_rogue.max_hp/50);
			
						}
						if o_skill_1.sprite_index != s_skill_1 {
							instance_create_layer(o_skill_1.x,o_skill_1.y,"hints",o_skill_delay_effect);
						}
						if o_skill_2.sprite_index != s_skill_1 {
							instance_create_layer(o_skill_2.x,o_skill_2.y,"hints",o_skill_delay_effect);
						}
						if o_skill_3.sprite_index != s_skill_1 {
							instance_create_layer(o_skill_3.x,o_skill_3.y,"hints",o_skill_delay_effect);
						}
						if o_skill_4.sprite_index != s_skill_1 {
							instance_create_layer(o_skill_4.x,o_skill_4.y,"hints",o_skill_delay_effect);
						}
						if o_skill_5.sprite_index != s_skill_1 {
							instance_create_layer(o_skill_5.x,o_skill_5.y,"hints",o_skill_delay_effect);
						}
						if o_skill_6.sprite_index != s_skill_1 {
							instance_create_layer(o_skill_6.x,o_skill_6.y,"hints",o_skill_delay_effect);
						}
						if o_skill_7.sprite_index != s_skill_1 {
							instance_create_layer(o_skill_7.x,o_skill_7.y,"hints",o_skill_delay_effect);
						}
						if o_skill_8.sprite_index != s_skill_1 {
							instance_create_layer(o_skill_8.x,o_skill_8.y,"hints",o_skill_delay_effect);
						}
						time = 0;
						x_value = random_range(384+128,384+32);
						y_value = random_range(112+128,112+32);
				
						//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
						if instance_exists(o_tier1_1_bandicot) {
							if o_rogue.critical_chance <= o_rogue.critical_rate {
								if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
									if (ceil(ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))/2)) > 0) {
										if !instance_exists(o_crit_info_r){
											instance_create_layer(x,y,"hints",o_crit_info_r);	
										}	
										o_tier1_1_bandicot.hp -= ceil(ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))/2));
									
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
										var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_white;
										popup.damage = ceil(ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))/2));
										o_border.shaking = true;
									}
									if (ceil(ceil(2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/2) > 0) {
										if !instance_exists(o_crit_info_r){
											instance_create_layer(x,y,"hints",o_crit_info_r);	
										}	
										o_tier1_1_bandicot.hp -= ceil(ceil(2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/2);
										o_tier1_1_bandicot.real_electro_res -= ceil(ceil(2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/2);
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
										var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_navy;
										popup.damage = ceil(ceil(2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/2);
										o_border.shaking = true;
									}
									if (ceil(ceil(2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/2) > 0) {
										if !instance_exists(o_crit_info_r){
											instance_create_layer(x,y,"hints",o_crit_info_r);	
										}	
										o_tier1_1_bandicot.hp -= ceil(ceil(2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/2);
										o_tier1_1_bandicot.real_bleed_res -= ceil(ceil(2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/2);
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
										var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_maroon;
										popup.damage = ceil(ceil(2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/2);
										o_border.shaking = true;
									}
									if (ceil(ceil(2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/2) > 0) {
										if !instance_exists(o_crit_info_r){
											instance_create_layer(x,y,"hints",o_crit_info_r);	
										}	
										o_tier1_1_bandicot.hp -= ceil(ceil(2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/2)
										o_tier1_1_bandicot.real_glacier_res -= ceil(ceil(2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/2);
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
										var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_aqua;
										popup.damage =  ceil(ceil(2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/2);
										o_border.shaking = true;
									}
									if (ceil(ceil(2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/2) > 0) {
										if !instance_exists(o_crit_info_r){
											instance_create_layer(x,y,"hints",o_crit_info_r);	
										}	
										o_tier1_1_bandicot.hp -= ceil(ceil(2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/2)
										o_tier1_1_bandicot.real_flame_res -= ceil(ceil(2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/2)
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
										var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_orange;
										popup.damage =  ceil(ceil(2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/2);
										o_border.shaking = true;
									}
									if (ceil(ceil(2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/2) > 0) {
										if !instance_exists(o_crit_info_r){
											instance_create_layer(x,y,"hints",o_crit_info_r);	
										}	
										o_tier1_1_bandicot.hp -= ceil(ceil(2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/2);
										o_tier1_1_bandicot.real_poison_res -= ceil(ceil(2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/2);
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
										var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_purple;
										popup.damage =  ceil(ceil(2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/2);
										o_border.shaking = true;
									}
							
								} else {
									o_border.dodge = true;
									o_tier1_1_bandicot.hp -=0;	
									o_tier1_1_bandicot.real_bleed_res -= 0;
									o_tier1_1_bandicot.real_poison_res -= 0;
									o_tier1_1_bandicot.real_glacier_res -= 0;
									o_tier1_1_bandicot.real_electro_res -= 0;
									o_tier1_1_bandicot.real_flame_res -= 0;
								}
						
							} else {
								if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
									if (ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/2) > 0) {
										o_tier1_1_bandicot.hp -= ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/2);
									
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
										var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_white;
										popup.damage = ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/2);
										o_border.shaking = true;
									}
									if (ceil(ceil(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))/2) > 0) {
										o_tier1_1_bandicot.hp -= ceil(ceil(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_tier1_1_bandicot.real_electro_res -= ceil(ceil(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))/2);
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
										var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_navy;
										popup.damage = ceil(ceil(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_border.shaking = true;
									}
									if (ceil(ceil(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))/2) > 0) {
										o_tier1_1_bandicot.hp -= ceil(ceil(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_tier1_1_bandicot.real_bleed_res -= ceil(ceil(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))/2);
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
										var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_maroon;
										popup.damage = ceil(ceil(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_border.shaking = true;
									}
									if (ceil(ceil(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))/2) > 0) {
										o_tier1_1_bandicot.hp -= ceil(ceil(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_tier1_1_bandicot.real_glacier_res -= ceil(ceil(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))/2);
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
										var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_aqua;
										popup.damage =  ceil(ceil(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_border.shaking = true;
									}
									if (ceil(ceil(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))/2) > 0) {
										o_tier1_1_bandicot.hp -= ceil(ceil(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_tier1_1_bandicot.real_flame_res -= ceil(ceil(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))/2);
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
										var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_orange;
										popup.damage =  ceil(ceil(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_border.shaking = true;
									}
									if (ceil(ceil(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))/2) > 0) {
										o_tier1_1_bandicot.hp -= ceil(ceil(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_tier1_1_bandicot.real_poison_res -= ceil(ceil(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))/2);
										x_value = random_range(384+128,384+32);
										y_value = random_range(112+128,112+32);
										instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
										var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
										popup.xpopupspeed = -2;
										popup.ypopupspeed = +0.5;
										popup.color = c_purple;
										popup.damage =  ceil(ceil(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))/2);
										o_border.shaking = true;
									}
								} else {
									o_border.dodge = true;
									o_tier1_1_bandicot.hp -=0;	
									o_tier1_1_bandicot.real_bleed_res -= 0;
									o_tier1_1_bandicot.real_poison_res -= 0;
									o_tier1_1_bandicot.real_glacier_res -= 0;
									o_tier1_1_bandicot.real_electro_res -= 0;
									o_tier1_1_bandicot.real_flame_res -= 0;
								}
							}
						}
				
				
					}
				}
				}
			}
		} 
		}

	}

}