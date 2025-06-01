/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if global.text_info == true {
	if room = Room_info {
	
		if hurting_deger == 1.1 {
			sprite_index = s_skill_rogue_active_hurting_1_1;
		}
		if resisting_deger == 1.1 {
			sprite_index = s_skill_rogue_active_resisting_1_1;
		}
		if thievery_deger == 1.1 {
			sprite_index = s_skill_rogue_active_thievery_1_1;
		}
	
		if hurting_deger == 1.2 {
			sprite_index = s_skill_rogue_active_hurting_1_2;
		}
		if resisting_deger == 1.2 {
			sprite_index = s_skill_rogue_active_resisting_1_2;
		}
		if thievery_deger == 1.2 {
			sprite_index = s_skill_rogue_active_thievery_1_2;
		}
	
		if hurting_deger == 1.3 {
			sprite_index = s_skill_rogue_active_hurting_1_3;
		}
		if resisting_deger == 1.3{
			sprite_index = s_skill_rogue_active_resisting_1_3;
		}
		if thievery_deger == 1.3 {
			sprite_index = s_skill_rogue_active_thievery_1_3;
		}
		
		if hurting_deger == 2.1 {
			sprite_index = s_skill_rogue_active_hurting_2_1;
		}
		//1 2 3 4 hpler için 5 6 7 8 mp ler için
		if potion_deger == 1{
			sprite_index = s_active_potion_hp_100;
		}
		if potion_deger == 5{
			sprite_index = s_active_potion_mp_50;
		}
	
	}





	if room == Room_info {
		if o_stats.time == 0 and o_inventory.time == 0 and o_drop_menu.time == 0  {
			if position_meeting(mouse_x,mouse_y,o_skill_8){
				if hareket == false {
					if sprite_index != s_skill_1 {
						if !instance_exists(o_hint_skill_info_8){
							instance_create_layer(x,y,"hints",o_hint_skill_info_8);	
						}
					}
				} else {
					instance_destroy(o_hint_skill_info_8);
				}
			} else {
				instance_destroy(o_hint_skill_info_8);
			}
		} else {
			instance_destroy(o_hint_skill_info_8);
		}
	}

	if room == Room_character_skills {
		if position_meeting(mouse_x,mouse_y,o_skill_8){
				if !instance_exists(o_hint_skill_info_8){
					instance_create_layer(x,y,"hints",o_hint_skill_info_8);	
				}
		} else {
			instance_destroy(o_hint_skill_info_8);
		}
	}



	if room = Room_info {
		if hurting_deger == 1.1 {
			sprite_index = s_skill_rogue_active_hurting_1_1;
		}
		if resisting_deger == 1.1 {
			sprite_index = s_skill_rogue_active_resisting_1_1;
		}
		if thievery_deger == 1.1 {
			sprite_index = s_skill_rogue_active_thievery_1_1;
		}
	
		if hurting_deger == 1.2 {
			sprite_index = s_skill_rogue_active_hurting_1_2;
		}
		if resisting_deger == 1.2 {
			sprite_index = s_skill_rogue_active_resisting_1_2;
		}
		if thievery_deger == 1.2 {
			sprite_index = s_skill_rogue_active_thievery_1_2;
		}
	
		if hurting_deger == 1.3 {
			sprite_index = s_skill_rogue_active_hurting_1_3;
		}
		if resisting_deger == 1.3{
			sprite_index = s_skill_rogue_active_resisting_1_3;
		}
		if thievery_deger == 1.3 {
			sprite_index = s_skill_rogue_active_thievery_1_3;
		}
	}


	if room = Room_info {
		x = 155+35+35+35;
		y = 292+33;
	}
	if room = Room_character_skills {
		x = 368+64+64;
		y = 318;
		sprite_index = s_skill_1;
	}
	//seçince hareket etsin diye
	if hareket == true and room == Room_info {
		x = mouse_x-16;
		y = mouse_y-16;
		global.skill = 1;
	
		if mouse_check_button_pressed(mb_right){
	
			if sprite_index != s_skill_1 {
				instance_destroy(o_hint_skill_info_11);
				instance_destroy(o_skill_select);
				global.skill = 0;
				x = 148+48+32;
				y = 256+48;
				hareket = false;
			}
	
		}
	
	
	}

	if room == Room_info {
		if o_stats.time <= 0 {
		
		} else {
			hareket = false;
			global.skill = 0;
		}
	}

	if room == Room_info {
		if o_inventory.time <= 0 {
		
		} else {
			hareket = false;
			global.skill = 0;
		}
	}


	if room == Room_info {
		image_index = 0;
		if o_drop_menu.time <= 0 {
		
		} else {
			hareket = false;
			global.skill = 0;
		}
	}


	if room == Room1 {
		x = 127+35+35+35;//82
		y = 293+33
		if sprite_index == noone {
			sprite_index = s_skill_1;	
		}
	
	
	if sprite_index == s_skill_1 {
		if o_rogue.real_electro_res <= 0 {
				o_rogue.real_electro_res = 0;
				o_rogue.electro_timer++;
				if o_rogue.electro_timer/60 == 5{
					o_rogue.real_electro_res = o_rogue.max_electro_res;
					o_rogue.electro_timer = 0;
				}
			} else {
			
			}
	}
	

	
	
	
	
		//hurting_1 = 1
	
	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_hurting_1_1 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1875*2 {
					image_index = 2;
				}
				if time/60 >= 0.3750*2 {
					image_index = 3;
				}
				if time/60 >= 0.5625*2 {
					image_index = 4;
				}
				if time/60 >= 0.7500*2 {
					image_index = 5;
				}
				if time/60 >= 0.9375*2 {
					image_index = 6;
				}
				if time/60 >= 1.1125*2 {
					image_index = 7;
				}
				if time/60 >= 1.3125*2 {
					image_index = 8;
				}
				if time/60 >= 1.5000*2 {
					image_index = 9;
				}
				if time/60 >= 1.6875*2 {
					image_index = 10;
				}
				if time/60 >= 1.8750*2 {
					image_index = 11;
				}
				if time/60 >= 2.0625*2 {
					image_index = 12;
				}
				if time/60 >= 2.2500*2 {
					image_index = 13;
				}
				if time/60 >= 2.4375*2 {
					image_index = 14;
				}
				if time/60 >= 2.6250*2 {
					image_index = 15;
				}
				if time/60 >= 2.8125*2 {
					image_index = 16;
				}
				if time/60 >= 3*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1875 {
					image_index = 2;
				}
				if time/60 >= 0.3750 {
					image_index = 3;
				}
				if time/60 >= 0.5625 {
					image_index = 4;
				}
				if time/60 >= 0.7500 {
					image_index = 5;
				}
				if time/60 >= 0.9375 {
					image_index = 6;
				}
				if time/60 >= 1.1125 {
					image_index = 7;
				}
				if time/60 >= 1.3125 {
					image_index = 8;
				}
				if time/60 >= 1.5000 {
					image_index = 9;
				}
				if time/60 >= 1.6875 {
					image_index = 10;
				}
				if time/60 >= 1.8750 {
					image_index = 11;
				}
				if time/60 >= 2.0625 {
					image_index = 12;
				}
				if time/60 >= 2.2500 {
					image_index = 13;
				}
				if time/60 >= 2.4375 {
					image_index = 14;
				}
				if time/60 >= 2.6250 {
					image_index = 15;
				}
				if time/60 >= 2.8125 {
					image_index = 16;
				}
				if time/60 >= 3 {
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
					if o_rogue.mana >= 100 {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					time = 0;
					x_value = random_range(384+128,384+32);
					y_value = random_range(112+128,112+32);
				
					//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
					if instance_exists(o_tier1_1_bandicot) {
						if o_rogue.critical_chance <= o_rogue.critical_rate {
							if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
								if (2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor);
									o_rogue.hp += 200;
									var popup2 = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup2.xpopupspeed = +2;
									popup2.ypopupspeed = 0;
									popup2.color = c_green;
									popup2.damage = 200
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = 2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor);
									o_border.shaking = true;
								}
								if (2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_electro_res -= 2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = 2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_bleed_res -= 2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = 2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_glacier_res -= 2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_flame_res -= 2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_poison_res -= 2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
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
								if ((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor) > 0) {
									o_tier1_1_bandicot.hp -= (ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									o_rogue.hp += 100;
									var popup2 = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup2.xpopupspeed = +2;
									popup2.ypopupspeed = 0;
									popup2.color = c_green;
									popup2.damage = 100
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = (ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor);
									o_border.shaking = true;
								}
								if ((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_electro_res -= ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_bleed_res -= ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_glacier_res -= ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_flame_res -= ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_poison_res -= ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
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
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 
	}


	//hurting1-2
	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_hurting_1_2 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1250*2 {
					image_index = 2;
				}
				if time/60 >= 0.2500*2 {
					image_index = 3;
				}
				if time/60 >= 0.3750*2 {
					image_index = 4;
				}
				if time/60 >= 0.5000*2 {
					image_index = 5;
				}
				if time/60 >= 0.6250*2 {
					image_index = 6;
				}
				if time/60 >= 0.7500*2 {
					image_index = 7;
				}
				if time/60 >= 0.8750*2 {
					image_index = 8;
				}
				if time/60 >= 1.0000*2 {
					image_index = 9;
				}
				if time/60 >= 1.1250*2 {
					image_index = 10;
				}
				if time/60 >= 1.2500*2 {
					image_index = 11;
				}
				if time/60 >= 1.3750*2 {
					image_index = 12;
				}
				if time/60 >= 1.5000*2 {
					image_index = 13;
				}
				if time/60 >= 1.6250*2 {
					image_index = 14;
				}
				if time/60 >= 1.7500*2 {
					image_index = 15;
				}
				if time/60 >= 1.8750*2 {
					image_index = 16;
				}
				if time/60 >= 2*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1250 {
					image_index = 2;
				}
				if time/60 >= 0.2500 {
					image_index = 3;
				}
				if time/60 >= 0.3750 {
					image_index = 4;
				}
				if time/60 >= 0.5000 {
					image_index = 5;
				}
				if time/60 >= 0.6250 {
					image_index = 6;
				}
				if time/60 >= 0.7500 {
					image_index = 7;
				}
				if time/60 >= 0.8750 {
					image_index = 8;
				}
				if time/60 >= 1.0000 {
					image_index = 9;
				}
				if time/60 >= 1.1250 {
					image_index = 10;
				}
				if time/60 >= 1.2500 {
					image_index = 11;
				}
				if time/60 >= 1.3750 {
					image_index = 12;
				}
				if time/60 >= 1.5000 {
					image_index = 13;
				}
				if time/60 >= 1.6250 {
					image_index = 14;
				}
				if time/60 >= 1.7500 {
					image_index = 15;
				}
				if time/60 >= 1.8750 {
					image_index = 16;
				}
				if time/60 >= 2 {
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
					if o_rogue.mana >= 100 {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					time = 0;
					x_value = random_range(384+128,384+32);
					y_value = random_range(112+128,112+32);
				
					//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
					if instance_exists(o_tier1_1_bandicot) {
						if o_rogue.critical_chance <= o_rogue.critical_rate {
							if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
								if (2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)+100 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= (2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))+100;
				
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = (2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))+100;
									o_border.shaking = true;
								}
								if (2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_electro_res -= 2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = 2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_bleed_res -= 2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = 2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_glacier_res -= 2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_flame_res -= 2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_poison_res -= 2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
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
								if ((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)+50 > 0) {
									o_tier1_1_bandicot.hp -= (ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)+50;
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
								
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = (ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)+50;
									o_border.shaking = true;
								}
								if ((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_electro_res -= ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_bleed_res -= ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_glacier_res -= ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_flame_res -= ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_poison_res -= ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
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
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 
	}


	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_hurting_1_3 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.3125*2 {
					image_index = 2;
				}
				if time/60 >= 0.6250*2 {
					image_index = 3;
				}
				if time/60 >= 0.9375*2 {
					image_index = 4;
				}
				if time/60 >= 1.2500*2 {
					image_index = 5;
				}
				if time/60 >= 1.5625*2 {
					image_index = 6;
				}
				if time/60 >= 1.8750*2 {
					image_index = 7;
				}
				if time/60 >= 2.1875*2 {
					image_index = 8;
				}
				if time/60 >= 2.5000*2 {
					image_index = 9;
				}
				if time/60 >= 2.8125*2 {
					image_index = 10;
				}
				if time/60 >= 3.1250*2 {
					image_index = 11;
				}
				if time/60 >= 3.4375*2 {
					image_index = 12;
				}
				if time/60 >= 3.7500*2 {
					image_index = 13;
				}
				if time/60 >= 4.0625*2 {
					image_index = 14;
				}
				if time/60 >= 4.3750*2 {
					image_index = 15;
				}
				if time/60 >= 4.6875*2 {
					image_index = 16;
				}
				if time/60 >= 5*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.3125 {
					image_index = 2;
				}
				if time/60 >= 0.6250 {
					image_index = 3;
				}
				if time/60 >= 0.9375 {
					image_index = 4;
				}
				if time/60 >= 1.2500 {
					image_index = 5;
				}
				if time/60 >= 1.5625 {
					image_index = 6;
				}
				if time/60 >= 1.8750 {
					image_index = 7;
				}
				if time/60 >= 2.1875 {
					image_index = 8;
				}
				if time/60 >= 2.5000 {
					image_index = 9;
				}
				if time/60 >= 2.8125 {
					image_index = 10;
				}
				if time/60 >= 3.1250 {
					image_index = 11;
				}
				if time/60 >= 3.4375 {
					image_index = 12;
				}
				if time/60 >= 3.7500 {
					image_index = 13;
				}
				if time/60 >= 4.0625 {
					image_index = 14;
				}
				if time/60 >= 4.3750 {
					image_index = 15;
				}
				if time/60 >= 4.6875 {
					image_index = 16;
				}
				if time/60 >= 5 {
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
					if o_rogue.mana >= 100 {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					time = 0;
					x_value = random_range(384+128,384+32);
					y_value = random_range(112+128,112+32);
				
					//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
					if instance_exists(o_tier1_1_bandicot) {
						if o_rogue.critical_chance <= o_rogue.critical_rate {
							if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
								if (2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/2 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))/2);
									o_tier1_1_bandicot.stun = 2;
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))/2);
									o_border.shaking = true;
								}
								if (2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))))/2);
									o_tier1_1_bandicot.real_electro_res -= ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))))/2);
									o_border.shaking = true;
								}
								if (2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))))/2);
									o_tier1_1_bandicot.real_bleed_res -= ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))))/2);
									o_border.shaking = true;
								}
								if (2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))))/2);
									o_tier1_1_bandicot.real_glacier_res -= ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))))/2);
									o_border.shaking = true;
								}
								if (2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))))/2);
									o_tier1_1_bandicot.real_flame_res -= ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))))/2);
									o_border.shaking = true;
								}
								if (2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))))/2);
									o_tier1_1_bandicot.real_poison_res -= ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))))/2);
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
								if ((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/2 > 0) {
									o_tier1_1_bandicot.hp -= ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									o_tier1_1_bandicot.stun = 1;
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/2);
									o_border.shaking = true;
								}
								if ((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/2);
									o_tier1_1_bandicot.real_electro_res -= ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/2);
									o_border.shaking = true;
								}
								if ((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/2);
									o_tier1_1_bandicot.real_bleed_res -= ceil(ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = ceil(ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/2);
									o_border.shaking = true;
								}
								if ((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/2);
									o_tier1_1_bandicot.real_glacier_res -= ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/2);
									o_border.shaking = true;
								}
								if ((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/2);
									o_tier1_1_bandicot.real_flame_res -= ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/2);
									o_border.shaking = true;
								}
								if ((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))/2 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/2);
									o_tier1_1_bandicot.real_poison_res -= ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/2);
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
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 
	}


	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_resisting_1_1 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.6250*2 {
					image_index = 2;
				}
				if time/60 >= 1.2500*2 {
					image_index = 3;
				}
				if time/60 >= 1.8750*2 {
					image_index = 4;
				}
				if time/60 >= 2.5000*2 {
					image_index = 5;
				}
				if time/60 >= 3.1250*2 {
					image_index = 6;
				}
				if time/60 >= 3.7500*2 {
					image_index = 7;
				}
				if time/60 >= 4.3750*2 {
					image_index = 8;
				}
				if time/60 >= 5.0000*2 {
					image_index = 9;
				}
				if time/60 >= 5.6250*2 {
					image_index = 10;
				}
				if time/60 >= 6.2500*2 {
					image_index = 11;
				}
				if time/60 >= 6.8750*2 {
					image_index = 12;
				}
				if time/60 >= 7.5000*2 {
					image_index = 13;
				}
				if time/60 >= 8.1250*2 {
					image_index = 14;
				}
				if time/60 >= 8.7500*2 {
					image_index = 15;
				}
				if time/60 >= 9.3750*2 {
					image_index = 16;
				}
				if time/60 >= 10*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.6250 {
					image_index = 2;
				}
				if time/60 >= 1.2500 {
					image_index = 3;
				}
				if time/60 >= 1.8750 {
					image_index = 4;
				}
				if time/60 >= 2.5000 {
					image_index = 5;
				}
				if time/60 >= 3.1250 {
					image_index = 6;
				}
				if time/60 >= 3.7500 {
					image_index = 7;
				}
				if time/60 >= 4.3750 {
					image_index = 8;
				}
				if time/60 >= 5.0000 {
					image_index = 9;
				}
				if time/60 >= 5.6250 {
					image_index = 10;
				}
				if time/60 >= 6.2500 {
					image_index = 11;
				}
				if time/60 >= 6.8750 {
					image_index = 12;
				}
				if time/60 >= 7.5000 {
					image_index = 13;
				}
				if time/60 >= 8.1250 {
					image_index = 14;
				}
				if time/60 >= 8.7500 {
					image_index = 15;
				}
				if time/60 >= 9.3750 {
					image_index = 16;
				}
				if time/60 >= 10 {
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
					if o_rogue.mana >= 100 {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					time = 0;
					x_value = random_range(384+128,384+32);
					y_value = random_range(112+128,112+32);
				
					//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
					if instance_exists(o_tier1_1_bandicot) {
						if o_rogue.critical_chance <= o_rogue.critical_rate {
							if !instance_exists(o_crit_info_8){
								instance_create_layer(x,y,"hints",o_crit_info_8);	
							}
							o_rogue.defence_50 = 2;
						
						} else {
						
							o_rogue.defence_50 = 1;
						
						}
					}
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 
	}


	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_resisting_1_2 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1875*2 {
					image_index = 2;
				}
				if time/60 >= 0.3750*2 {
					image_index = 3;
				}
				if time/60 >= 0.5625*2 {
					image_index = 4;
				}
				if time/60 >= 0.7500*2 {
					image_index = 5;
				}
				if time/60 >= 0.9375*2 {
					image_index = 6;
				}
				if time/60 >= 1.1125*2 {
					image_index = 7;
				}
				if time/60 >= 1.3125*2 {
					image_index = 8;
				}
				if time/60 >= 1.5000*2 {
					image_index = 9;
				}
				if time/60 >= 1.6875*2 {
					image_index = 10;
				}
				if time/60 >= 1.8750*2 {
					image_index = 11;
				}
				if time/60 >= 2.0625*2 {
					image_index = 12;
				}
				if time/60 >= 2.2500*2 {
					image_index = 13;
				}
				if time/60 >= 2.4375*2 {
					image_index = 14;
				}
				if time/60 >= 2.6250*2 {
					image_index = 15;
				}
				if time/60 >= 2.8125*2 {
					image_index = 16;
				}
				if time/60 >= 3*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1875 {
					image_index = 2;
				}
				if time/60 >= 0.3750 {
					image_index = 3;
				}
				if time/60 >= 0.5625 {
					image_index = 4;
				}
				if time/60 >= 0.7500 {
					image_index = 5;
				}
				if time/60 >= 0.9375 {
					image_index = 6;
				}
				if time/60 >= 1.1125 {
					image_index = 7;
				}
				if time/60 >= 1.3125 {
					image_index = 8;
				}
				if time/60 >= 1.5000 {
					image_index = 9;
				}
				if time/60 >= 1.6875 {
					image_index = 10;
				}
				if time/60 >= 1.8750 {
					image_index = 11;
				}
				if time/60 >= 2.0625 {
					image_index = 12;
				}
				if time/60 >= 2.2500 {
					image_index = 13;
				}
				if time/60 >= 2.4375 {
					image_index = 14;
				}
				if time/60 >= 2.6250 {
					image_index = 15;
				}
				if time/60 >= 2.8125 {
					image_index = 16;
				}
				if time/60 >= 3 {
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
					if o_rogue.mana >= 100  and !instance_exists(o_defence_1_2_buff) {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					time = 0;
					x_value = random_range(384+128,384+32);
					y_value = random_range(112+128,112+32);
				
					//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
					if instance_exists(o_tier1_1_bandicot) {
						if o_rogue.critical_chance <= o_rogue.critical_rate {
							if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
								if ((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))/10 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))/10);
									o_rogue.defence_resisting_1_2 = 2;
									o_rogue.resisting_1_2_timer = 0;
									if instance_exists(o_defence_1_2_buff){
										o_defence_1_2_buff.once = true;	
									}
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))/10);
									o_border.shaking = true;
								}
								if ((2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/10 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))))/10);
									o_tier1_1_bandicot.real_electro_res -= ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))))/10);
									o_border.shaking = true;
								}
								if ((2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/10 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))))/10);
									o_tier1_1_bandicot.real_bleed_res -= ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))))/10);
									o_border.shaking = true;
								}
								if ((2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/10 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))))/10);
									o_tier1_1_bandicot.real_glacier_res -= ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))))/10);
									o_border.shaking = true;
								}
								if ((2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/10 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))))/10);
									o_tier1_1_bandicot.real_flame_res -= ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))))/10);
									o_border.shaking = true;
								}
								if ((2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/10 > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))))/10);
									o_tier1_1_bandicot.real_poison_res -= ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))))/10);
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
								if ((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/10 > 0) {
									o_tier1_1_bandicot.hp -= ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									o_rogue.defence_resisting_1_2 = 1;
									o_rogue.resisting_1_2_timer = 0;
									if instance_exists(o_defence_1_2_buff){
										o_defence_1_2_buff.once = true;	
									} 
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/10);
									o_border.shaking = true;
								}
								if ((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))/10 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/10);
									o_tier1_1_bandicot.real_electro_res -= ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))/10);
									o_border.shaking = true;
								}
								if ((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))/10 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/10);
									o_tier1_1_bandicot.real_bleed_res -= ceil(ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = (ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))/10);
									o_border.shaking = true;
								}
								if ((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))/10 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/10);
									o_tier1_1_bandicot.real_glacier_res -= ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))/10);
									o_border.shaking = true;
								}
								if ((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))/10 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/10);
									o_tier1_1_bandicot.real_flame_res -= ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))/10);
									o_border.shaking = true;
								}
								if ((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))/10 > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/10);
									o_tier1_1_bandicot.real_poison_res -= ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/10);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))/10);
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
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 
	}


	//active resisting 1-3
	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_resisting_1_3 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1250*2 {
					image_index = 2;
				}
				if time/60 >= 0.2500*2 {
					image_index = 3;
				}
				if time/60 >= 0.3750*2 {
					image_index = 4;
				}
				if time/60 >= 0.5000*2 {
					image_index = 5;
				}
				if time/60 >= 0.6250*2 {
					image_index = 6;
				}
				if time/60 >= 0.7500*2 {
					image_index = 7;
				}
				if time/60 >= 0.8750*2 {
					image_index = 8;
				}
				if time/60 >= 1.0000*2 {
					image_index = 9;
				}
				if time/60 >= 1.1250*2 {
					image_index = 10;
				}
				if time/60 >= 1.2500*2 {
					image_index = 11;
				}
				if time/60 >= 1.3750*2 {
					image_index = 12;
				}
				if time/60 >= 1.5000*2 {
					image_index = 13;
				}
				if time/60 >= 1.6250*2 {
					image_index = 14;
				}
				if time/60 >= 1.7500*2 {
					image_index = 15;
				}
				if time/60 >= 1.8750*2 {
					image_index = 16;
				}
				if time/60 >= 2*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1250 {
					image_index = 2;
				}
				if time/60 >= 0.2500 {
					image_index = 3;
				}
				if time/60 >= 0.3750 {
					image_index = 4;
				}
				if time/60 >= 0.5000 {
					image_index = 5;
				}
				if time/60 >= 0.6250 {
					image_index = 6;
				}
				if time/60 >= 0.7500 {
					image_index = 7;
				}
				if time/60 >= 0.8750 {
					image_index = 8;
				}
				if time/60 >= 1.0000 {
					image_index = 9;
				}
				if time/60 >= 1.1250 {
					image_index = 10;
				}
				if time/60 >= 1.2500 {
					image_index = 11;
				}
				if time/60 >= 1.3750 {
					image_index = 12;
				}
				if time/60 >= 1.5000 {
					image_index = 13;
				}
				if time/60 >= 1.6250 {
					image_index = 14;
				}
				if time/60 >= 1.7500 {
					image_index = 15;
				}
				if time/60 >= 1.8750 {
					image_index = 16;
				}
				if time/60 >= 2 {
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
					if o_rogue.mana >= 100 and !instance_exists(o_defence_1_3_buff) {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					time = 0;
					x_value = random_range(384+128,384+32);
					y_value = random_range(112+128,112+32);
				
					//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
					if instance_exists(o_tier1_1_bandicot) {
						if o_rogue.critical_chance <= o_rogue.critical_rate {
							if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
							
			
									if o_rogue.defence_resisting_1_3_on == false {
										o_rogue.defence_resisting_1_3_on = true;
									}
							
							} else {
								// bu skili rakip dodgelayamaz çünkü dodgelanacak bir hasar verilmiyor
									if o_rogue.defence_resisting_1_3_on == false {
										o_rogue.defence_resisting_1_3_on = true;
									}
							}
						
						} else {
							if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
									if o_rogue.defence_resisting_1_3_on == false {
										o_rogue.defence_resisting_1_3_on = true;
									}
							} else {
									if o_rogue.defence_resisting_1_3_on == false {
										o_rogue.defence_resisting_1_3_on = true;
									}
							}
						}
					}
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 
	}


	// theivery 1_1

	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_thievery_1_1 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.3125*2 {
					image_index = 2;
				}
				if time/60 >= 0.6250*2 {
					image_index = 3;
				}
				if time/60 >= 0.9375*2 {
					image_index = 4;
				}
				if time/60 >= 1.2500*2 {
					image_index = 5;
				}
				if time/60 >= 1.5625*2 {
					image_index = 6;
				}
				if time/60 >= 1.8750*2 {
					image_index = 7;
				}
				if time/60 >= 2.1875*2 {
					image_index = 8;
				}
				if time/60 >= 2.5000*2 {
					image_index = 9;
				}
				if time/60 >= 2.8125*2 {
					image_index = 10;
				}
				if time/60 >= 3.1250*2 {
					image_index = 11;
				}
				if time/60 >= 3.4375*2 {
					image_index = 12;
				}
				if time/60 >= 3.7500*2 {
					image_index = 13;
				}
				if time/60 >= 4.0625*2 {
					image_index = 14;
				}
				if time/60 >= 4.3750*2 {
					image_index = 15;
				}
				if time/60 >= 4.6875*2 {
					image_index = 16;
				}
				if time/60 >= 5*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.3125 {
					image_index = 2;
				}
				if time/60 >= 0.6250 {
					image_index = 3;
				}
				if time/60 >= 0.9375 {
					image_index = 4;
				}
				if time/60 >= 1.2500 {
					image_index = 5;
				}
				if time/60 >= 1.5625 {
					image_index = 6;
				}
				if time/60 >= 1.8750 {
					image_index = 7;
				}
				if time/60 >= 2.1875 {
					image_index = 8;
				}
				if time/60 >= 2.5000 {
					image_index = 9;
				}
				if time/60 >= 2.8125 {
					image_index = 10;
				}
				if time/60 >= 3.1250 {
					image_index = 11;
				}
				if time/60 >= 3.4375 {
					image_index = 12;
				}
				if time/60 >= 3.7500 {
					image_index = 13;
				}
				if time/60 >= 4.0625 {
					image_index = 14;
				}
				if time/60 >= 4.3750 {
					image_index = 15;
				}
				if time/60 >= 4.6875 {
					image_index = 16;
				}
				if time/60 >= 5 {
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
					if o_rogue.mana >= 100 {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					time = 0;
					x_value = random_range(384+128,384+32);
					y_value = random_range(112+128,112+32);
				
					//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
					if instance_exists(o_tier1_1_bandicot) {
						if o_rogue.critical_chance <= o_rogue.critical_rate {
							if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
							
								if o_tier1_1_bandicot.health_potion_100 > 0 {
									o_tier1_1_bandicot.health_potion_100 -= 2;
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_rogue.health_potion_100 += 2;
								
								}
							
								if o_tier1_1_bandicot.health_potion_500 > 0 {
									o_tier1_1_bandicot.health_potion_500 -= 2;
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_rogue.health_potion_500 += 2;
								
								}
							
								if o_tier1_1_bandicot.health_potion_1000 > 0 {
									o_tier1_1_bandicot.health_potion_1000 -= 2;
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_rogue.health_potion_1000 += 2;
								
								}
							
								if o_tier1_1_bandicot.health_potion_2000 > 0 {
									o_tier1_1_bandicot.health_potion_2000 -= 2;
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_rogue.health_potion_2000 += 2;
								
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
							
								if o_tier1_1_bandicot.health_potion_100 > 0 {
									o_tier1_1_bandicot.health_potion_100 -= 1;
									o_rogue.health_potion_100 += 1;
								
								}
							
								if o_tier1_1_bandicot.health_potion_500 > 0 {
									o_tier1_1_bandicot.health_potion_500 -= 1;
									o_rogue.health_potion_500 += 1;
								
								}
							
								if o_tier1_1_bandicot.health_potion_1000 > 0 {
									o_tier1_1_bandicot.health_potion_1000 -= 1;
									o_rogue.health_potion_1000 += 1;
								
								}
							
								if o_tier1_1_bandicot.health_potion_2000 > 0 {
									o_tier1_1_bandicot.health_potion_2000 -= 1;
									o_rogue.health_potion_2000 += 1;
								
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
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 
	}


	//thievery 1_2


	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_thievery_1_2 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1875*2 {
					image_index = 2;
				}
				if time/60 >= 0.3750*2 {
					image_index = 3;
				}
				if time/60 >= 0.5625*2 {
					image_index = 4;
				}
				if time/60 >= 0.7500*2 {
					image_index = 5;
				}
				if time/60 >= 0.9375*2 {
					image_index = 6;
				}
				if time/60 >= 1.1125*2 {
					image_index = 7;
				}
				if time/60 >= 1.3125*2 {
					image_index = 8;
				}
				if time/60 >= 1.5000*2 {
					image_index = 9;
				}
				if time/60 >= 1.6875*2 {
					image_index = 10;
				}
				if time/60 >= 1.8750*2 {
					image_index = 11;
				}
				if time/60 >= 2.0625*2 {
					image_index = 12;
				}
				if time/60 >= 2.2500*2 {
					image_index = 13;
				}
				if time/60 >= 2.4375*2 {
					image_index = 14;
				}
				if time/60 >= 2.6250*2 {
					image_index = 15;
				}
				if time/60 >= 2.8125*2 {
					image_index = 16;
				}
				if time/60 >= 3*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1875 {
					image_index = 2;
				}
				if time/60 >= 0.3750 {
					image_index = 3;
				}
				if time/60 >= 0.5625 {
					image_index = 4;
				}
				if time/60 >= 0.7500 {
					image_index = 5;
				}
				if time/60 >= 0.9375 {
					image_index = 6;
				}
				if time/60 >= 1.1125 {
					image_index = 7;
				}
				if time/60 >= 1.3125 {
					image_index = 8;
				}
				if time/60 >= 1.5000 {
					image_index = 9;
				}
				if time/60 >= 1.6875 {
					image_index = 10;
				}
				if time/60 >= 1.8750 {
					image_index = 11;
				}
				if time/60 >= 2.0625 {
					image_index = 12;
				}
				if time/60 >= 2.2500 {
					image_index = 13;
				}
				if time/60 >= 2.4375 {
					image_index = 14;
				}
				if time/60 >= 2.6250 {
					image_index = 15;
				}
				if time/60 >= 2.8125 {
					image_index = 16;
				}
				if time/60 >= 3 {
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
					if o_rogue.mana >= 100 {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					time = 0;
					x_value = random_range(384+128,384+32);
					y_value = random_range(112+128,112+32);
				
					//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
					if instance_exists(o_tier1_1_bandicot) {
						if o_rogue.critical_chance <= o_rogue.critical_rate {
							if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
								if ((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)));
									o_rogue.gold += ceil((ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))))/50);
								
								
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)));
									o_border.shaking = true;
								}
								if ((2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))));
									o_tier1_1_bandicot.real_electro_res -= ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))));
									o_rogue.gold += ceil((ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = ceil((2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))));
									o_border.shaking = true;
								}
								if ((2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))));
									o_tier1_1_bandicot.real_bleed_res -= ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))));
									o_rogue.gold += ceil((ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = ceil((2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))));
									o_border.shaking = true;
								}
								if ((2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))));
									o_tier1_1_bandicot.real_glacier_res -= ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))));
									o_rogue.gold += ceil((ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil((2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))));
									o_border.shaking = true;
								}
								if ((2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))));
									o_tier1_1_bandicot.real_flame_res -= ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))));
									o_rogue.gold += ceil((ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil((2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))));
									o_border.shaking = true;
								}
								if ((2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))) > 0) {
									if !instance_exists(o_crit_info_8){
										instance_create_layer(x,y,"hints",o_crit_info_8);	
									}
									o_tier1_1_bandicot.hp -= ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))));
									o_tier1_1_bandicot.real_poison_res -= ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))));
									o_rogue.gold += ceil((ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))));
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
								if ((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor) > 0) {
									o_tier1_1_bandicot.hp -= ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor));
									o_rogue.gold += ceil((ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
								
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor));
									o_border.shaking = true;
								}
								if ((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))));
									o_tier1_1_bandicot.real_electro_res -= ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))));
									o_rogue.gold += ceil((ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = ceil(ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5))));
									o_border.shaking = true;
								}
								if ((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))));
									o_tier1_1_bandicot.real_bleed_res -= ceil(ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))));
									o_rogue.gold += ceil((ceil(ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = (ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5))));
									o_border.shaking = true;
								}
								if ((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))));
									o_tier1_1_bandicot.real_glacier_res -= ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))));
									o_rogue.gold += ceil((ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil(ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5))));
									o_border.shaking = true;
								}
								if ((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))));
									o_tier1_1_bandicot.real_flame_res -= ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))));
									o_rogue.gold += ceil((ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil(ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5))));
									o_border.shaking = true;
								}
								if ((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))));
									o_tier1_1_bandicot.real_poison_res -= ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))));
									o_rogue.gold += ceil((ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)))))/50);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil(ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5))));
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
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 

	}

	//thievery1_3


	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_thievery_1_3 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.3125*2 {
					image_index = 2;
				}
				if time/60 >= 0.6250*2 {
					image_index = 3;
				}
				if time/60 >= 0.9375*2 {
					image_index = 4;
				}
				if time/60 >= 1.2500*2 {
					image_index = 5;
				}
				if time/60 >= 1.5625*2 {
					image_index = 6;
				}
				if time/60 >= 1.8750*2 {
					image_index = 7;
				}
				if time/60 >= 2.1875*2 {
					image_index = 8;
				}
				if time/60 >= 2.5000*2 {
					image_index = 9;
				}
				if time/60 >= 2.8125*2 {
					image_index = 10;
				}
				if time/60 >= 3.1250*2 {
					image_index = 11;
				}
				if time/60 >= 3.4375*2 {
					image_index = 12;
				}
				if time/60 >= 3.7500*2 {
					image_index = 13;
				}
				if time/60 >= 4.0625*2 {
					image_index = 14;
				}
				if time/60 >= 4.3750*2 {
					image_index = 15;
				}
				if time/60 >= 4.6875*2 {
					image_index = 16;
				}
				if time/60 >= 5*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.3125 {
					image_index = 2;
				}
				if time/60 >= 0.6250 {
					image_index = 3;
				}
				if time/60 >= 0.9375 {
					image_index = 4;
				}
				if time/60 >= 1.2500 {
					image_index = 5;
				}
				if time/60 >= 1.5625 {
					image_index = 6;
				}
				if time/60 >= 1.8750 {
					image_index = 7;
				}
				if time/60 >= 2.1875 {
					image_index = 8;
				}
				if time/60 >= 2.5000 {
					image_index = 9;
				}
				if time/60 >= 2.8125 {
					image_index = 10;
				}
				if time/60 >= 3.1250 {
					image_index = 11;
				}
				if time/60 >= 3.4375 {
					image_index = 12;
				}
				if time/60 >= 3.7500 {
					image_index = 13;
				}
				if time/60 >= 4.0625 {
					image_index = 14;
				}
				if time/60 >= 4.3750 {
					image_index = 15;
				}
				if time/60 >= 4.6875 {
					image_index = 16;
				}
				if time/60 >= 5 {
					image_index = 0;
					timecount = noone;
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
					if o_rogue.mana >= 100 and !instance_exists(o_gold_curse_debuff_bandicot) {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					time = 0;
					x_value = random_range(384+128,384+32);
					y_value = random_range(112+128,112+32);
				
					//vurulan hasar %10 sapma ile belirleniyor ceil üste yuvarlıyor.
					if instance_exists(o_tier1_1_bandicot) {
						if o_rogue.critical_chance <= o_rogue.critical_rate {
							if o_tier1_1_bandicot.dodge_chance >= o_tier1_1_bandicot.dodge_rate {
							
								if !instance_exists(o_crit_info_8){
									instance_create_layer(x,y,"hints",o_crit_info_8);	
								}
								o_tier1_1_bandicot.gold_curse = 2;
								o_tier1_1_bandicot_drop_list.gold_curse = 2;
							
							
							
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
							
								o_tier1_1_bandicot.gold_curse = 1;
								o_tier1_1_bandicot_drop_list.gold_curse = 1;
							
							
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
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 
	}




	//potion_hp_100


	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_active_potion_hp_100 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1250*2 {
					image_index = 2;
				}
				if time/60 >= 0.2500*2 {
					image_index = 3;
				}
				if time/60 >= 0.3750*2 {
					image_index = 4;
				}
				if time/60 >= 0.5000*2 {
					image_index = 5;
				}
				if time/60 >= 0.6250*2 {
					image_index = 6;
				}
				if time/60 >= 0.7500*2 {
					image_index = 7;
				}
				if time/60 >= 0.8750*2 {
					image_index = 8;
				}
				if time/60 >= 1.0000*2 {
					image_index = 9;
				}
				if time/60 >= 1.1250*2 {
					image_index = 10;
				}
				if time/60 >= 1.2500*2 {
					image_index = 11;
				}
				if time/60 >= 1.3750*2 {
					image_index = 12;
				}
				if time/60 >= 1.5000*2 {
					image_index = 13;
				}
				if time/60 >= 1.6250*2 {
					image_index = 14;
				}
				if time/60 >= 1.7500*2 {
					image_index = 15;
				}
				if time/60 >= 1.8750*2 {
					image_index = 16;
				}
				if time/60 >= 2*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.1250 {
					image_index = 2;
				}
				if time/60 >= 0.2500 {
					image_index = 3;
				}
				if time/60 >= 0.3750 {
					image_index = 4;
				}
				if time/60 >= 0.5000 {
					image_index = 5;
				}
				if time/60 >= 0.6250 {
					image_index = 6;
				}
				if time/60 >= 0.7500 {
					image_index = 7;
				}
				if time/60 >= 0.8750 {
					image_index = 8;
				}
				if time/60 >= 1.0000 {
					image_index = 9;
				}
				if time/60 >= 1.1250 {
					image_index = 10;
				}
				if time/60 >= 1.2500 {
					image_index = 11;
				}
				if time/60 >= 1.3750 {
					image_index = 12;
				}
				if time/60 >= 1.5000 {
					image_index = 13;
				}
				if time/60 >= 1.6250 {
					image_index = 14;
				}
				if time/60 >= 1.7500 {
					image_index = 15;
				}
				if time/60 >= 1.8750 {
					image_index = 16;
				}
				if time/60 >= 2 {
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
					if o_rogue.mana >= 100 {
						o_rogue.mana -= 100;
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
						
							if o_rogue.health_potion_100 >= 1 {
								o_rogue.health_potion_100 -= 1;
								if !instance_exists(o_crit_info_8){
									instance_create_layer(x,y,"hints",o_crit_info_8);	
								}
								o_rogue.hp +=200;
							} 
						
							if o_rogue.health_potion_100 == 0 {
								potion_deger = 0;	
								sprite_index = s_skill_1;
							}
						
						} else {
						
							
							if o_rogue.health_potion_100 >= 1 {
								o_rogue.health_potion_100 -= 1;
								o_rogue.hp +=100;
							} 
						
							if o_rogue.health_potion_100 == 0 {
								potion_deger = 0;	
								sprite_index = s_skill_1;
							}
							
							
						
						}
					}
				
				
				} else {
					//mananın bittiği yer	
				}
				}
			}
			}
		}
	} 
	}


	/// hurting 2_1
	
	if instance_exists(o_tier1_1_bandicot) {
	if sprite_index == s_skill_rogue_active_hurting_2_1 {
		if timecount == true {
			time++;
			if o_rogue.real_glacier_res <= 0 {
				o_rogue.real_glacier_res = 0;
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.2500*2 {
					image_index = 2;
				}
				if time/60 >= 0.5000*2 {
					image_index = 3;
				}
				if time/60 >= 0.7500*2 {
					image_index = 4;
				}
				if time/60 >= 1.0000*2 {
					image_index = 5;
				}
				if time/60 >= 1.2500*2 {
					image_index = 6;
				}
				if time/60 >= 1.5000*2 {
					image_index = 7;
				}
				if time/60 >= 1.7500*2 {
					image_index = 8;
				}
				if time/60 >= 2.0000*2 {
					image_index = 9;
				}
				if time/60 >= 2.2500*2 {
					image_index = 10;
				}
				if time/60 >= 2.5000*2 {
					image_index = 11;
				}
				if time/60 >= 2.7500*2 {
					image_index = 12;
				}
				if time/60 >= 3.0000*2 {
					image_index = 13;
				}
				if time/60 >= 3.2500*2 {
					image_index = 14;
				}
				if time/60 >= 3.5000*2 {
					image_index = 15;
				}
				if time/60 >= 3.7500*2 {
					image_index = 16;
				}
				if time/60 >= 4*2 {
					image_index = 0;
					timecount = false;
				}
			} else {
				if time/60 >= 0.0000 {
					image_index = 1;
				}
				if time/60 >= 0.2500 {
					image_index = 2;
				}
				if time/60 >= 0.5000 {
					image_index = 3;
				}
				if time/60 >= 0.7500 {
					image_index = 4;
				}
				if time/60 >= 1.0000 {
				
					image_index = 5;
				}
				if time/60 >= 1.2500 {
				
					image_index = 6;
				}
				if time/60 >= 1.5000 {
				
					image_index = 7;
				}
				if time/60 >= 1.7500 {
				
					image_index = 8;
				}
				if time/60 >= 2.0000 {
				
					image_index = 9;
				}
				if time/60 >= 2.2500 {
				
					image_index = 10;
				}
				if time/60 >= 2.5000 {
				
					image_index = 11;
				}
				if time/60 >= 2.7500 {
				
					image_index = 12;
				}
				if time/60 >= 3.0000 {
				
					image_index = 13;
				}
				if time/60 >= 3.2500 {
				
					image_index = 14;
				}
				if time/60 >= 3.5000 {
				
					image_index = 15;
				}
				if time/60 >= 3.7500 {
				
					image_index = 16;
				}
				if time/60 >= 4 {
				
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
					if o_rogue.mana >= 100 {
						o_rogue.mana -= 100;
				
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
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
								if (2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor) > 0) {
									o_tier1_1_bandicot.hp -= ceil((2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor))/2);
									//cooldownlar için
									if o_skill_2.time > 0 {
										o_skill_2.time += 60;
									}
									if o_skill_3.time > 0 {
										o_skill_3.time += 60;
									}
									if o_skill_4.time > 0 {
										o_skill_4.time += 60;
									}
									if o_skill_5.time > 0 {
										o_skill_5.time += 60;
									}
									if o_skill_6.time > 0 {
										o_skill_6.time += 60;
									}
									if o_skill_7.time > 0 {
										o_skill_7.time += 60;
									}
									if o_skill_1.time > 0 {
										o_skill_1.time += 60;
									}
									////
									if !instance_exists(o_crit_info_1) {
										instance_create_layer(x,y,"buttons",o_crit_info_1);
									}
									var popup2 = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup2.xpopupspeed = +2;
									popup2.ypopupspeed = 0;
									popup2.color = c_green;
									popup2.damage = 200
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = 2*(ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor);
									o_border.shaking = true;
								}
								if (2*(o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_1) {
										instance_create_layer(x,y,"buttons",o_crit_info_1);
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_electro_res -= 2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = 2*ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_1) {
										instance_create_layer(x,y,"buttons",o_crit_info_1);
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_bleed_res -= 2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = 2*ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_1) {
										instance_create_layer(x,y,"buttons",o_crit_info_1);
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_glacier_res -= 2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  2*ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_1) {
										instance_create_layer(x,y,"buttons",o_crit_info_1);
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_flame_res -= 2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  2*ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if (2*(o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									if !instance_exists(o_crit_info_1) {
										instance_create_layer(x,y,"buttons",o_crit_info_1);
									}
									o_tier1_1_bandicot.hp -= 2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_poison_res -= 2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  2*ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
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
								if ((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor) > 0) {
									o_tier1_1_bandicot.hp -= ceil((ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor)/2);
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									//skillerin cooldownını düşürmek için gereken yer r nin düşürmüyor
									if o_skill_2.time > 0 {
										o_skill_2.time += 30;
									}
									if o_skill_3.time > 0 {
										o_skill_3.time += 30;
									}
									if o_skill_4.time > 0 {
										o_skill_4.time += 30;
									}
									if o_skill_5.time > 0 {
										o_skill_5.time += 30;
									}
									if o_skill_6.time > 0 {
										o_skill_6.time += 30;
									}
									if o_skill_7.time > 0 {
										o_skill_7.time += 30;
									}
									if o_skill_1.time > 0 {
										o_skill_1.time += 30;
									}
									////////
									var popup2 = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup2.xpopupspeed = +2;
									popup2.ypopupspeed = 0;
									popup2.color = c_green;
									popup2.damage = 100
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
									var popup = instance_create_layer(383+32,170,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage = (ceil(o_rogue.attack)+ceil(o_rogue.sapma)-o_tier1_1_bandicot.armor);
									o_border.shaking = true;
								}
								if ((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_electro_res -= ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_electro);
									var popup = instance_create_layer(383+32,182,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = ceil((o_rogue.electro_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_bleed_res -= ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_bleed);
									var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = ceil((o_rogue.bleed_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_glacier_res -= ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_glacier);
									var popup = instance_create_layer(383+32,206,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil((o_rogue.glacier_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_flame_res -= ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_flame);
									var popup = instance_create_layer(383+32,218,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil((o_rogue.flame_damage-(o_tier1_1_bandicot.armor/5)));
									o_border.shaking = true;
								}
								if ((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)) > 0) {
									o_tier1_1_bandicot.hp -= ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									o_tier1_1_bandicot.real_poison_res -= ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
									x_value = random_range(384+128,384+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect_poison);
									var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
									popup.xpopupspeed = -2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((o_rogue.poison_damage-(o_tier1_1_bandicot.armor/5)));
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
				
				
				} else {
					//mananın bittiği yer 
				}
			
				} 
			}
			}
		}
	} 
	}
	
	/*
	//2. skill

	if sprite_index == s_skill_rogue_2 {
		if timecount == true {
			time++;
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

		if timecount == false {
			if !instance_exists(o_skill_delay_effect) {
				if keyboard_check_pressed(ord(string(key))){
					timecount = true;
					instance_create_layer(x,y,"hints",o_skill_delay_effect);
					if o_skill_r.sprite_index != s_skill_1 {
						instance_create_layer(o_skill_r.x,o_skill_r.y,"hints",o_skill_delay_effect);
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
					x_value = random_range(420,550);
					y_value = random_range(40,165);
					instance_create_layer(x_value,y_value,"hints",o_rogue_r_effect);
					o_enemy_rat.hp -= 30;	
				}
			}
		}
	}
	*/
	}
} else {
	sprite_index = s_skill_1;
	x = 800;
	y = 800;	
}
