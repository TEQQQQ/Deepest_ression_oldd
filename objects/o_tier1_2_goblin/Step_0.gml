/// @description Insert description here
// You can write your code in this editor

if room == Room1 {
	x = o_border.x+16;
	y = o_border.y+16;
	if !instance_exists(o_buff_system_tier1_1_bandicot){
		instance_create_layer(x,y,"Instances",o_buff_system_tier1_1_bandicot);	
	}
	if hasar_alma == true {
		image_blend = c_red;
		alarm[0] = 10;
		image_xscale = random_range(0.9,1.1);
		image_yscale = random_range(0.9,1.1);
		hasar_alma = false;
	}


	if hasar_alma == false {
		//image_blend = c_white;
		image_xscale = lerp(image_xscale,1,0.2);
		image_yscale = lerp(image_yscale,1,0.2);
	}
}


if hp > max_hp {
	hp = max_hp;
}

if current_hp < hp {
	current_hp = hp;	
}
if current_hp > hp {
	hasar_alma = true;
	current_hp = hp;
}


critical_chance = random_range(1,100);
dodge_chance = random_range(1,100);



if !instance_exists(o_skill_goblin_spear){
	instance_create_layer(514,315,"Instances",o_skill_goblin_spear);	
}



if stun == 1 or stun == 2{
	if once4 == true {
		if !instance_exists(o_stun_effect){
			instance_create_layer(o_border.x,o_border.y,"hints",o_stun_effect);	
			once4 = false;
		}
	}
		
	stun_timer++;
	if stun == 2 {
		if stun_timer/60 == 4 {
			stun = 0;
			stun_timer = 0;
			once4 = true;
		}
	} else {
		if stun_timer/60 == 2 {
			stun = 0;
			stun_timer = 0;
			once4 = true;
		}
	}
	
} else {

if real_electro_res <= 0 {
	if once2 == true {
		if !instance_exists(o_lightning_effect){
			instance_create_layer(o_border.x,o_border.y,"hints",o_lightning_effect);	
			once2 = false;
		}
	}
	real_electro_res = 0;	
	electro_timer++;
	if electro_timer/60 == 5 {
		real_electro_res = max_electro_res;
		electro_timer = 0;
		once2 = true;
	}
} else {
if o_skill_goblin_spear.vurus == false {
	if skill_count == 3 {
		attack = 130;	
	}
	if skill_count == 4 {
		attack = 30
		skill_count = 0;	
	}
	act_time++;
	if zeka == 1 {
		
		if act_time == 25 {	
			o_skill_goblin_spear.vurus = true;
			skill_count += 1;
			if real_bleed_res <= 0 {
				real_bleed_res = 0;
				hp -= ceil(max_hp/50);
				var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
				popup.xpopupspeed = -2;
				popup.ypopupspeed = +0.5;
				popup.color = c_maroon;
				popup.damage = ceil(max_hp/50);
			}
			if instance_exists(o_rogue) {
				if critical_chance <= critical_rate {
					if o_rogue.dodge_chance >= o_rogue.dodge_rate{
						if (2*(ceil(attack)+ceil(sapma)-o_rogue.armor) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									
									
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
									var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage =  2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
								var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_white;
								popup.damage =  2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
								o_border_player.shaking = true;
								
							}
							
						}
						//bleed critik damage için
						if (2*(bleed_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_red;
									popup.damage =  2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_red;
								popup.damage =  2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//poison kritik damage için
						if (2*(poison_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.real_poison_res -= 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  2*ceil((poison_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((poison_damage-(o_rogue.armor/5)));
								o_rogue.real_poison_res -= 2*ceil((poison_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_purple;
								popup.damage =  2*ceil((poison_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						// flame kritik damage için
						if (2*(flame_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  2*ceil((flame_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_orange;
								popup.damage =  2*ceil((flame_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//glacier kritik damage için
						if (2*(glacier_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_aqua;
								popup.damage =  2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//electro kritik damage için
						if (2*(electro_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage =  2*ceil((electro_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_navy;
								popup.damage =  2*ceil((electro_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
					} else {
						o_border_player.dodge = true;
						o_rogue.hp -= 0;	
						o_rogue.real_bleed_res -= 0;
						o_rogue.real_poison_res -= 0;
						o_rogue.real_glacier_res -= 0;
						o_rogue.real_electro_res -= 0;
						o_rogue.real_flame_res -= 0;
					}
						
				} else {
					if o_rogue.dodge_chance >= o_rogue.dodge_rate{
						if ((ceil(attack)+ceil(sapma)-o_rogue.armor) > 0) {
							
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
									var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage =  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
							
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
								var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_white;
								popup.damage =  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
							
								o_border_player.shaking = true;
							}
							
							
						}
						//bleed hasar için
						if ((bleed_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.real_bleed_res -= ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage =  ceil((bleed_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;;
								}
							
							} else {
								o_rogue.hp -= ceil((bleed_damage-(o_rogue.armor/5)));
								o_rogue.real_bleed_res -= ceil((bleed_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_maroon;
								popup.damage =  ceil((bleed_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
							
							
						}
						//poison hasar için
						if ((poison_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.real_poison_res -= ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((poison_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil((poison_damage-(o_rogue.armor/5)));
								o_rogue.real_poison_res -= ceil((poison_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_purple;
								popup.damage =  ceil((poison_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
							
							
						}
						//flame hasar için
						if ((flame_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.real_flame_res -= ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage =  ceil((flame_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil((flame_damage-(o_rogue.armor/5)));
								o_rogue.real_flame_res -= ceil((flame_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_orange;
								popup.damage =  ceil((flame_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
							
							
						}
						//glacier hasar için
						if ((glacier_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.real_glacier_res -= ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage =  ceil((glacier_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil((glacier_damage-(o_rogue.armor/5)));
								o_rogue.real_glacier_res -= ceil((glacier_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_aqua;
								popup.damage =  ceil((glacier_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
							
							
						}
						//electro hasar için
						if ((electro_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.real_electro_res -= ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage =  ceil((electro_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil((electro_damage-(o_rogue.armor/5)));
								o_rogue.real_electro_res -= ceil((electro_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_navy;
								popup.damage =  ceil((electro_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
							
							
						}
					} else {
						o_border_player.dodge = true;
						o_rogue.hp -= 0;	
						o_rogue.real_bleed_res -= 0;
						o_rogue.real_poison_res -= 0;
						o_rogue.real_glacier_res -= 0;
						o_rogue.real_electro_res -= 0;
						o_rogue.real_flame_res -= 0;
					}
				}
			}
			act_time = 0;
			zeka = choose(1,2,3,4);
		}
	}
	if zeka == 2 {
		
		if act_time == 50 {	
			skill_count += 1;
			o_skill_goblin_spear.vurus = true;
			if real_bleed_res <= 0 {
				real_bleed_res = 0;
				hp -= ceil(max_hp/50);
				var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
				popup.xpopupspeed = -2;
				popup.ypopupspeed = +0.5;
				popup.color = c_maroon;
				popup.damage = ceil(max_hp/50);
			}
			if instance_exists(o_rogue) {
				if critical_chance <= critical_rate {
					if o_rogue.dodge_chance >= o_rogue.dodge_rate{
						if (2*(ceil(attack)+ceil(sapma)-o_rogue.armor) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
									var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage =  2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
								var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_white;
								popup.damage =  2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
								o_border_player.shaking = true;
							}
							
							
						}
						//bleed kritik için
						if (2*(bleed_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_maroon;
								popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//poison kritik için
						if (2*(poison_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.real_poison_res -= 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage = 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((poison_damage-(o_rogue.armor/5)));
								o_rogue.real_poison_res -= 2*ceil((poison_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_purple;
								popup.damage = 2*ceil((poison_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//flame kritik için
						if (2*(flame_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_orange;
								popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//glacier kritik için
						if (2*(glacier_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_aqua;
								popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//electro kritik için
						if (2*(electro_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_navy;
								popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
					} else {
						o_border_player.dodge = true;
						o_rogue.hp -= 0;	
						o_rogue.real_bleed_res -= 0;
						o_rogue.real_poison_res -= 0;
						o_rogue.real_glacier_res -= 0;
						o_rogue.real_electro_res -= 0;
						o_rogue.real_flame_res -= 0;
					}
						
				} else {
					if o_rogue.dodge_chance >= o_rogue.dodge_rate{
						if ((ceil(attack)+ceil(sapma)-o_rogue.armor) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
									var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage =  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
								var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_white;
								popup.damage =  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
								o_border_player.shaking = true;
							}
					
							
						}
						//bleed hasar için
						if ((bleed_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_maroon;
								popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//poison hasar için
						if ((poison_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.real_poison_res -= ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((poison_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil((poison_damage-(o_rogue.armor/5)));
								o_rogue.real_poison_res -= ceil((poison_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_purple;
								popup.damage =  ceil((poison_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
						}
						//flame hasar için
						if ((flame_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_orange;
								popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//glacier hasar için
						if ((glacier_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_aqua;
								popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//electro hasar için
						if ((electro_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_navy;
								popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
					} else {
						o_border_player.dodge = true;
						o_rogue.hp -= 0;	
						o_rogue.real_bleed_res -= 0;
						o_rogue.real_poison_res -= 0;
						o_rogue.real_glacier_res -= 0;
						o_rogue.real_electro_res -= 0;
						o_rogue.real_flame_res -= 0;
					}
				}
			}
			act_time = 0;
			zeka = choose(1,2,3,4);
		}
	}
	if zeka == 3 {
		
		if act_time == 75 {	
			skill_count += 1;
			o_skill_goblin_spear.vurus = true;
			if real_bleed_res <= 0 {
				real_bleed_res = 0;
				hp -= ceil(max_hp/50);
				var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
				popup.xpopupspeed = -2;
				popup.ypopupspeed = +0.5;
				popup.color = c_maroon;
				popup.damage = ceil(max_hp/50);
			}
			if instance_exists(o_rogue) {
				if critical_chance <= critical_rate {
					if o_rogue.dodge_chance >= o_rogue.dodge_rate{
						if (2*(ceil(attack)+ceil(sapma)-o_rogue.armor) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
									var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage =  2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
								var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_white;
								popup.damage =  2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
								o_border_player.shaking = true;
							}
							
							
							
						}
						//bleed kritik için
						if (2*(bleed_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_maroon;
								popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//poison kritik için
						if (2*(poison_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.real_poison_res -= 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage = 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((poison_damage-(o_rogue.armor/5)));
								o_rogue.real_poison_res -= 2*ceil((poison_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_purple;
								popup.damage = 2*ceil((poison_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//flame kritik için
						if (2*(flame_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_orange;
								popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//glacier kritik için
						if (2*(glacier_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_aqua;
								popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//electro kritik için
						if (2*(electro_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_navy;
								popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
					} else {
						o_border_player.dodge = true;
						o_rogue.hp -= 0;	
						o_rogue.real_bleed_res -= 0;
						o_rogue.real_poison_res -= 0;
						o_rogue.real_glacier_res -= 0;
						o_rogue.real_electro_res -= 0;
						o_rogue.real_flame_res -= 0;
					}
						
				} else {
					if o_rogue.dodge_chance >= o_rogue.dodge_rate{
						if ((ceil(attack)+ceil(sapma)-o_rogue.armor) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
									var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage =  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
								var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_white;
								popup.damage =  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
								o_border_player.shaking = true;
							}
							
							
						}
						//bleed hasar için
						if ((bleed_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_maroon;
								popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//poison hasar için
						if ((poison_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.real_poison_res -= ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((poison_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil((poison_damage-(o_rogue.armor/5)));
								o_rogue.real_poison_res -= ceil((poison_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_purple;
								popup.damage =  ceil((poison_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
						}
						//flame hasar için
						if ((flame_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_orange;
								popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//glacier hasar için
						if ((glacier_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_aqua;
								popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//electro hasar için
						if ((electro_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_navy;
								popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
					} else {
						o_border_player.dodge = true;
						o_rogue.hp -= 0;	
						o_rogue.real_bleed_res -= 0;
						o_rogue.real_poison_res -= 0;
						o_rogue.real_glacier_res -= 0;
						o_rogue.real_electro_res -= 0;
						o_rogue.real_flame_res -= 0;
					}
				}
			}
			act_time = 0;
			zeka = choose(1,2,3,4);
		}
	}
	
	//zeka 4
	if zeka == 4 {
		
		if act_time == 100 {
			skill_count += 1;
			o_skill_goblin_spear.vurus = true;
			if real_bleed_res <= 0 {
				real_bleed_res = 0;
				hp -= ceil(max_hp/50);
				var popup = instance_create_layer(383+32,194,"effects",o_damage_popup);
				popup.xpopupspeed = -2;
				popup.ypopupspeed = +0.5;
				popup.color = c_maroon;
				popup.damage = ceil(max_hp/50);
			}
			if instance_exists(o_rogue) {
				if critical_chance <= critical_rate {
					if o_rogue.dodge_chance >= o_rogue.dodge_rate{
						if (2*(ceil(attack)+ceil(sapma)-o_rogue.armor) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
									var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage =  2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
								var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_white;
								popup.damage =  2*(ceil(attack)+ceil(sapma)-o_rogue.armor);
								o_border_player.shaking = true;
							}
							
							
						}
						//bleed kritik hassar için
						if (2*(bleed_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_maroon;
								popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//poison kritik hasar için
						if (2*(poison_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.real_poison_res -= 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage = 2*ceil((poison_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((poison_damage-(o_rogue.armor/5)));
								o_rogue.real_poison_res -= 2*ceil((poison_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_purple;
								popup.damage = 2*ceil((poison_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
							
						}
						//flame kritik hasar için
						if (2*(flame_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_orange;
								popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//glacier kritik hasar için
						if (2*(glacier_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_aqua;
								popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						// electro kritik hasar için
						if (2*(electro_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_navy;
								popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
					} else {
						o_border_player.dodge = true;
						o_rogue.hp -= 0;	
						o_rogue.real_bleed_res -= 0;
						o_rogue.real_poison_res -= 0;
						o_rogue.real_glacier_res -= 0;
						o_rogue.real_electro_res -= 0;
						o_rogue.real_flame_res -= 0;
					}
						
				} else {
					if o_rogue.dodge_chance >= o_rogue.dodge_rate{
						if ((ceil(attack)+ceil(sapma)-o_rogue.armor) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
									
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
									var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_white;
									popup.damage =  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect);
								var popup = instance_create_layer(253-32,170,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_white;
								popup.damage =  ceil(ceil(attack)+ceil(sapma)-o_rogue.armor);
								o_border_player.shaking = true;
							}
					
							
						}
						//bleed hasar için
						if ((bleed_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_maroon;
									popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_rogue.real_bleed_res -= 2*ceil((bleed_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,194,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_maroon;
								popup.damage = 2*ceil((bleed_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//poison hasar için
						if ((poison_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -=  ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.real_poison_res -= ceil((poison_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_purple;
									popup.damage =  ceil((poison_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= ceil((poison_damage-(o_rogue.armor/5)));
								o_rogue.real_poison_res -= ceil((poison_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_purple;
								popup.damage =  ceil((poison_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
						}
						//flame hasar için
						if ((flame_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_orange;
									popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								o_rogue.hp -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_rogue.real_flame_res -= 2*ceil((flame_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,218,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_orange;
								popup.damage = 2*ceil((flame_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//glacier hasar için
						if ((glacier_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_aqua;
									popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
							
									
								}
							
							} else {
								o_rogue.hp -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_rogue.real_glacier_res -= 2*ceil((glacier_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,206,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_aqua;
								popup.damage = 2*ceil((glacier_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
						//electro hasar için
						if ((electro_damage-(o_rogue.armor/5)) > 0) {
							if o_rogue.defence_resisting_1_3_on == true {
								if o_rogue.defence_resisting_1_3 == 4 {
									o_rogue.hp -= 0;
									o_rogue.defence_resisting_1_3 = 0;
									o_rogue.defence_resisting_1_3_on = false;
									
							
									o_border_player.shaking = true;
								} else {
									//resisting1_3 aktif olmamışken vurduğu hasarı göstersin diye
									o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_rogue.defence_resisting_1_3 += 1;
									x_value = random_range(96+128,96+32);
									y_value = random_range(112+128,112+32);
									instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
									var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
									popup.xpopupspeed = +2;
									popup.ypopupspeed = +0.5;
									popup.color = c_navy;
									popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
									o_border_player.shaking = true;
								}
							
							} else {
								//resisting1_3 basılı değilken hiç yokken vuruğu hasarı göstersin diye
								o_rogue.hp -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_rogue.real_electro_res -= 2*ceil((electro_damage-(o_rogue.armor/5)));
								x_value = random_range(96+128,96+32);
								y_value = random_range(112+128,112+32);
								instance_create_layer(x_value,y_value,"hints",o_bandicot_bite_effect_poison);
								var popup = instance_create_layer(253-32,182,"effects",o_damage_popup);
								popup.xpopupspeed = +2;
								popup.ypopupspeed = +0.5;
								popup.color = c_navy;
								popup.damage = 2*ceil((electro_damage-(o_rogue.armor/5)));
								o_border_player.shaking = true;
							}
							
							
							
						}
					} else {
						o_border_player.dodge = true;
						o_rogue.hp -= 0;	
						o_rogue.real_bleed_res -= 0;
						o_rogue.real_poison_res -= 0;
						o_rogue.real_glacier_res -= 0;
						o_rogue.real_electro_res -= 0;
						o_rogue.real_flame_res -= 0;
					}
				}
			}
			act_time = 0;
			zeka = choose(1,2,3,4);
		}
	}
} 

}
}

sapma = random_range(attack/10,-attack/10);



	if real_poison_res <= 0 {
		if once3 == true {
			if !instance_exists(o_poison_effect){
				instance_create_layer(o_border.x,o_border.y,"effects",o_poison_effect);	
				once3 = false;
			}
		}
		poison_timer ++;
		if poison_timer/60 >= 1 {
			real_poison_res = 0;
			hp -= ceil(max_hp/200);
			var popup = instance_create_layer(383+32,230,"effects",o_damage_popup);
			popup.xpopupspeed = -2;
			popup.ypopupspeed = +0.5;
			popup.color = c_purple;
			popup.damage = ceil(max_hp/200);
			poison_timer = 0;
	}
}

if once == true {
	if real_flame_res <= 0 {
		if !instance_exists(o_burn_effect){
			instance_create_layer(o_border.x,o_border.y,"effects",o_burn_effect);	
		}
		real_flame_res = 0;
		max_bleed_res = ceil(max_bleed_res/2);
		max_poison_res = ceil(max_poison_res/2);
		max_flame_res = ceil(max_flame_res/2);
		max_electro_res = ceil(max_electro_res/2);
		max_glacier_res = ceil(max_glacier_res/2);
		armor = armor/2;
		real_flame_res = ceil(real_flame_res/2);
		real_bleed_res = ceil(real_bleed_res/2);
		real_poison_res = ceil(real_poison_res/2);
		real_glacier_res = ceil(real_glacier_res/2);
		real_electro_res = ceil(real_electro_res/2);
		once = false;
	}
}


if real_glacier_res <= 0 {
	
}


if real_electro_res <= 0 {
	
}
if !instance_exists(o_tier1_1_bandicot_drop_list){
	instance_create_layer(x,y,"effects",o_tier1_1_bandicot_drop_list);
}

if hp <= 0 {
	instance_destroy();
	instance_destroy(o_buff_system_tier1_1_bandicot);
	instance_destroy(o_skill_goblin_spear);
}

//hata şu 5 tane vuruypr tamama ama 5. engellenecek vurus fiziksel hasar oluyor değer artıyor ve poison engellenmiyor