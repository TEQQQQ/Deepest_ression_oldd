/// @description Insert description here
// You can write your code in this editor

if room == Room_character_stats {
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_leg_left_rogue);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_leg_right_rogue);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_arm_left_rogue);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_arm_right_rogue);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_head_rogue);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_torso_rogue);
	instance_create_layer(o_border.x+16,o_border.y+16,"effects",o_body_pants_rogue);
}

sapma = random_range(attack/10,-attack/10);
critical_chance = random_range(1,100);
dodge_chance = random_range(1,100);





if room == Room1 {
	healthbar_width = 245;
	healthbar_height = 22;
	healthbar_x = 15;
	healthbar_y = 2;
	
	manabar_width = 206;
	manabar_height = 22;
	manabar_x = 15;
	manabar_y = 27;
	if !instance_exists(o_buff_system){
		instance_create_layer(x,y,"Instances",o_buff_system);	
	}
	/*
	if mouse_check_button(mb_left){
		o_body_torso_rogue.hasar_alma = true ;
		o_body_pants_rogue.hasar_alma = true ;
		o_body_arm_left_rogue.hasar_alma = true ;
		o_body_arm_right_rogue.hasar_alma = true ;
		o_body_leg_left_rogue.hasar_alma = true ;
		o_body_leg_right_rogue.hasar_alma = true ;
		o_body_head_rogue.hasar_alma = true ;	
		if instance_exists(o_tier1_1_bandicot){
			o_tier1_1_bandicot.hasar_alma = true;
		}
	}
	*/
	if hp > max_hp {
		hp = max_hp;	
	}
	if current_hp < hp {
		current_hp = hp;	
	}
	if current_hp > hp {
		o_body_torso_rogue.hasar_alma = true ;
		o_body_pants_rogue.hasar_alma = true ;
		o_body_arm_left_rogue.hasar_alma = true ;
		o_body_arm_right_rogue.hasar_alma = true ;
		o_body_leg_left_rogue.hasar_alma = true ;
		o_body_leg_right_rogue.hasar_alma = true ;
		o_body_head_rogue.hasar_alma = true ;
		current_hp = hp;
	}
	
}

// rogue resisting 1_2 arası

if once_defence_1_2 == true {
	if defence_resisting_1_2 == 1 or defence_resisting_1_2 == 2 {
		if real_flame_res <= 0 {
			old_armor = armor
			armor += ((attack+sapma)/10)/2;
			eklenen_deger = armor-old_armor;
			once_defence_1_2 = false;
		} else {
			old_armor = armor
			armor += ((attack+sapma)/10);
			eklenen_deger = armor-old_armor;
			once_defence_1_2 = false;
		
		
		}
	}
}



if once_defence_1_2 == false {
	if defence_resisting_1_2 == 1 {
		resisting_1_2_timer++;
		if resisting_1_2_timer/60 >= 3 {
			armor -= eklenen_deger;
			
			defence_resisting_1_2 = 0;
			resisting_1_2_timer = 0;
			once_defence_1_2 = true;
		}
	}
	
	if defence_resisting_1_2 == 2 {
		resisting_1_2_timer++;
		if resisting_1_2_timer/60 >= 6 {
			armor -= eklenen_deger;
			
			defence_resisting_1_2 = 0;
			resisting_1_2_timer = 0;
			once_defence_1_2 = true;
		}
	}
	
}


// rogue resisting 1_2


if keyboard_check_pressed(ord("N")){
	attack += 100	
}




// rogue resisting 1_1 arası
if defence_50 == 2{
	if once_defence == true {
	
		if real_flame_res <= 0 {
			armor +=50;	
		} else {
			armor += 100;
		}
	
		once_defence = false;
	}
}

if defence_50 == 1{
	if once_defence == true {
		if real_flame_res <= 0 {
			armor +=25;	
		} else {
			armor += 50;
		}
	
		once_defence = false;
	}
}

if once_defence == false {
	defence_timer++;
	if defence_timer/60 >= 2 {
		if defence_50 == 2 {
			if real_flame_res <= 0 {
				armor -= 50;	
			} else {
				armor -=100;	
			}
		} else {
			if real_flame_res <= 0 {
				armor -= 25	
			} else {
			armor -= 50
			}
		}
		defence_50 = 0;
		defence_timer = 0;
		once_defence = true;
	}
}
// rogue resisting 1_1


	

if once == true {
	if real_flame_res <= 0 {
		real_flame_res = 0;
		max_bleed_res = max_bleed_res/2;
		max_poison_res = max_poison_res/2
		max_flame_res = max_flame_res/2;
		max_electro_res = max_electro_res/2;
		max_glacier_res = max_glacier_res/2;
		armor = armor/2;
		real_flame_res = real_flame_res/2;
		real_bleed_res = real_bleed_res/2;
		real_poison_res = real_poison_res/2;
		real_glacier_res = real_glacier_res/2;
		real_electro_res = real_electro_res/2;
		once = false;
	}
}



if real_poison_res <= 0 {
	poison_timer ++;
	if poison_timer/60 >= 1 {
		real_poison_res = 0;
		hp -= ceil(max_hp/200);
		var popup = instance_create_layer(253-32,230,"effects",o_damage_popup);
		popup.xpopupspeed = +2;
		popup.ypopupspeed = +0.5;
		popup.color = c_purple;
		popup.damage = ceil(max_hp/200);
		poison_timer = 0;
	}
}



if level_buff == true {
	if level == 2 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 3 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 4 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 5 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 6 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 7 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 8 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 9 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 10 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 11 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 12 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 13 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 14 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 15 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 16 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 17 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 18 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 19 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 20 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 21 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 22 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 23 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 24 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 25 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 26 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 27 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 28 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 29 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
	if level == 30 {
		stat_points += 3;
		skill_point += 1;
		level_buff = false;
	}
}


if keyboard_check_pressed(ord("C")){
	if level == 30 {
	 	
	} else {
		level +=1;
		level_buff = true;
	}
}

if keyboard_check(ord("Q")){
	health_potion_100 += 1;
	mana_potion_50 += 1;
}



//kasklar
if previous_equipment_helmet != equipment_helmet {
	if once_helmet == false {
		once_helmet = true;
		previous_equipment_helmet = equipment_helmet;
	}
}

if equipment_helmet == 1 {
	if once_helmet == true {
		inv_hp_helmet += 100;
		inv_armor_helmet += 10;
		max_hp += inv_hp_helmet;
		armor += inv_armor_helmet;
		once_helmet = false;
	}
}

if equipment_helmet == 2 {
	if once_helmet == true {
		inv_hp_helmet += 500;
		inv_armor_helmet += 50;
		max_hp += inv_hp_helmet;
		armor += inv_armor_helmet;
		once_helmet = false;
	}
}

//chests
if previous_equipment_chest != equipment_chest {
	if once_chest == false {
		once_chest = true;
		previous_equipment_chest = equipment_chest;
	}
}


if equipment_chest == 1 {
	if once_chest == true {
		inv_hp_chest += 100;
		inv_armor_chest += 10;
		max_hp += inv_hp_chest;
		armor += inv_armor_chest;
		once_chest = false;
	}
}

//donluklar
if previous_equipment_pants != equipment_pants {
	if once_pants == false {
		once_pants = true;
		previous_equipment_pants = equipment_pants;
	}
}

if equipment_pants == 1 {
	if once_pants == true {
		inv_hp_pants += 100;
		inv_armor_pants += 10;
		max_hp += inv_hp_pants;
		armor += inv_armor_pants;
		once_pants = false;
	}
}

//botlar ayakkabılar
if previous_equipment_boots != equipment_boots {
	if once_boots == false {
		once_boots = true;
		previous_equipment_boots = equipment_boots;
	}
}

if equipment_boots == 1 {
	if once_boots == true {
		inv_hp_boots += 100;
		inv_armor_boots += 10;
		max_hp += inv_hp_boots;
		armor += inv_armor_boots;
		once_boots = false;
	}
}


//gloves
if previous_equipment_gloves != equipment_gloves {
	if once_gloves == false {
		once_gloves = true;
		previous_equipment_gloves = equipment_gloves;
	}
}

if equipment_gloves == 1 {
	if once_gloves == true {
		inv_hp_gloves += 100;
		inv_armor_gloves += 10;
		max_hp += inv_hp_gloves;
		armor += inv_armor_gloves;
		once_gloves = false;
	}
}

//ringler_1
if previous_equipment_ring_1 != equipment_ring_1 {
	if once_ring_1 == false {
		once_ring_1 = true;
		previous_equipment_ring_1 = equipment_ring_1;
	}
}

if equipment_ring_1 == 1 {
	if once_ring_1 == true {
		inv_hp_ring_1 += 100;
		inv_armor_ring_1 += 10;
		inv_mana_ring_1 += 100;
		inv_atak_ring_1 += 100;
		inv_critical_rate_ring_1 += 10;
		inv_dodge_rate_ring_1 += 5;
		inv_bleed_resistance_ring_1 += 10;
		inv_poison_resistance_ring_1 += 10;
		inv_flame_resistance_ring_1 += 10;
		inv_glacier_resistance_ring_1 += 10;
		inv_electro_resistance_ring_1 += 10;
		inv_bleed_damage_ring_1 += 100;
		inv_poison_damage_ring_1 += 100;
		inv_flame_damage_ring_1 += 100;
		inv_glacier_damage_ring_1 += 100;
		inv_electro_damage_ring_1 += 100;
		inv_luck_ring_1 += 20;
		max_hp += inv_hp_ring_1;
		max_mana += inv_mana_ring_1;
		armor += inv_armor_ring_1;
		attack += inv_atak_ring_1;
		critical_rate += inv_critical_rate_ring_1;
		dodge_rate += inv_dodge_rate_ring_1
		bleed_resistance += inv_bleed_resistance_ring_1
		poison_resistance += inv_poison_resistance_ring_1;
		flame_resistance += inv_flame_resistance_ring_1;
		glacier_resistance += inv_glacier_resistance_ring_1;
		electro_resistance += inv_electro_resistance_ring_1;
		bleed_damage += inv_bleed_damage_ring_1;
		poison_damage += inv_poison_damage_ring_1;
		flame_damage += inv_flame_damage_ring_1;
		glacier_damage += inv_glacier_damage_ring_1;
		electro_damage += inv_electro_damage_ring_1;
		luck += inv_luck_ring_1;
		once_ring_1 = false;
	}
}



if equipment_ring_1 == 2 {
	if once_ring_1 == true {
		inv_hp_ring_1 += 1000;
		inv_armor_ring_1 += 0;
		inv_mana_ring_1 += 0;
		inv_atak_ring_1 += 0;
		inv_critical_rate_ring_1 += 0;
		inv_dodge_rate_ring_1 += 0;
		inv_bleed_resistance_ring_1 += 0;
		inv_poison_resistance_ring_1 += 0;
		inv_flame_resistance_ring_1 += 0;
		inv_glacier_resistance_ring_1 += 0;
		inv_electro_resistance_ring_1 += 0;
		inv_bleed_damage_ring_1 += 0;
		inv_poison_damage_ring_1 += 0;
		inv_flame_damage_ring_1 += 0;
		inv_glacier_damage_ring_1 += 0;
		inv_electro_damage_ring_1 += 0;
		inv_luck_ring_1 += 0;
		max_hp += inv_hp_ring_1;
		max_mana += inv_mana_ring_1;
		armor += inv_armor_ring_1;
		attack += inv_atak_ring_1;
		critical_rate += inv_critical_rate_ring_1;
		dodge_rate += inv_dodge_rate_ring_1
		bleed_resistance += inv_bleed_resistance_ring_1
		poison_resistance += inv_poison_resistance_ring_1;
		flame_resistance += inv_flame_resistance_ring_1;
		glacier_resistance += inv_glacier_resistance_ring_1;
		electro_resistance += inv_electro_resistance_ring_1;
		bleed_damage += inv_bleed_damage_ring_1;
		poison_damage += inv_poison_damage_ring_1;
		flame_damage += inv_flame_damage_ring_1;
		glacier_damage += inv_glacier_damage_ring_1;
		electro_damage += inv_electro_damage_ring_1;
		luck += inv_luck_ring_1;
		once_ring_1 = false;
	}
}



//ringler_2
if previous_equipment_ring_2 != equipment_ring_2 {
	if once_ring_2 == false {
		once_ring_2 = true;
		previous_equipment_ring_2 = equipment_ring_2;
	}
}

if equipment_ring_2 == 1 {
	if once_ring_2 == true {
		inv_hp_ring_2 += 100;
		inv_armor_ring_2 += 10;
		inv_mana_ring_2 += 100;
		inv_atak_ring_2 += 100;
		inv_critical_rate_ring_2 += 10;
		inv_dodge_rate_ring_2 += 5;
		inv_bleed_resistance_ring_2 += 10;
		inv_poison_resistance_ring_2 += 10;
		inv_flame_resistance_ring_2 += 10;
		inv_glacier_resistance_ring_2 += 10;
		inv_electro_resistance_ring_2 += 10;
		inv_bleed_damage_ring_2 += 100;
		inv_poison_damage_ring_2 += 100;
		inv_flame_damage_ring_2 += 100;
		inv_glacier_damage_ring_2 += 100;
		inv_electro_damage_ring_2 += 100;
		inv_luck_ring_2 += 20;
		max_hp += inv_hp_ring_2;
		max_mana += inv_mana_ring_2;
		armor += inv_armor_ring_2;
		attack += inv_atak_ring_2;
		critical_rate += inv_critical_rate_ring_2;
		dodge_rate += inv_dodge_rate_ring_2
		bleed_resistance += inv_bleed_resistance_ring_2
		poison_resistance += inv_poison_resistance_ring_2;
		flame_resistance += inv_flame_resistance_ring_2;
		glacier_resistance += inv_glacier_resistance_ring_2;
		electro_resistance += inv_electro_resistance_ring_2;
		bleed_damage += inv_bleed_damage_ring_2;
		poison_damage += inv_poison_damage_ring_2;
		flame_damage += inv_flame_damage_ring_2;
		glacier_damage += inv_glacier_damage_ring_2;
		electro_damage += inv_electro_damage_ring_2;
		luck += inv_luck_ring_2;
		once_ring_2 = false;
	}
}



if equipment_ring_2 == 2 {
	if once_ring_2 == true {
		inv_hp_ring_2 += 1000;
		inv_armor_ring_2 += 0;
		inv_mana_ring_2 += 0;
		inv_atak_ring_2 += 0;
		inv_critical_rate_ring_2 += 0;
		inv_dodge_rate_ring_2 += 0;
		inv_bleed_resistance_ring_2 += 0;
		inv_poison_resistance_ring_2 += 0;
		inv_flame_resistance_ring_2 += 0;
		inv_glacier_resistance_ring_2 += 0;
		inv_electro_resistance_ring_2 += 0;
		inv_bleed_damage_ring_2 += 0;
		inv_poison_damage_ring_2 += 0;
		inv_flame_damage_ring_2 += 0;
		inv_glacier_damage_ring_2 += 0;
		inv_electro_damage_ring_2 += 0;
		inv_luck_ring_2 += 0;
		max_hp += inv_hp_ring_2;
		max_mana += inv_mana_ring_2;
		armor += inv_armor_ring_2;
		attack += inv_atak_ring_2;
		critical_rate += inv_critical_rate_ring_2;
		dodge_rate += inv_dodge_rate_ring_2
		bleed_resistance += inv_bleed_resistance_ring_2
		poison_resistance += inv_poison_resistance_ring_2;
		flame_resistance += inv_flame_resistance_ring_2;
		glacier_resistance += inv_glacier_resistance_ring_2;
		electro_resistance += inv_electro_resistance_ring_2;
		bleed_damage += inv_bleed_damage_ring_2;
		poison_damage += inv_poison_damage_ring_2;
		flame_damage += inv_flame_damage_ring_2;
		glacier_damage += inv_glacier_damage_ring_2;
		electro_damage += inv_electro_damage_ring_2;
		luck += inv_luck_ring_2;
		once_ring_2 = false;
	}
}


//belts
if previous_equipment_belt != equipment_belt {
	if once_belt == false {
		once_belt = true;
		previous_equipment_belt = equipment_belt;
	}
}

if equipment_belt == 1 {
	if once_belt == true {
		inv_hp_belt += 0;
		inv_armor_belt += 0;
		inv_mana_belt += 0;
		inv_atak_belt += 0;
		inv_critical_rate_belt += 0;
		inv_dodge_rate_belt += 0;
		inv_bleed_resistance_belt += 0;
		inv_poison_resistance_belt += 0;
		inv_flame_resistance_belt += 0;
		inv_glacier_resistance_belt += 0;
		inv_electro_resistance_belt += 0;
		inv_bleed_damage_belt += 0;
		inv_poison_damage_belt += 0;
		inv_flame_damage_belt += 0;
		inv_glacier_damage_belt += 0;
		inv_electro_damage_belt += 0;
		inv_luck_belt += 50;
		max_hp += inv_hp_belt;
		max_mana += inv_mana_belt;
		armor += inv_armor_belt;
		attack += inv_atak_belt;
		critical_rate += inv_critical_rate_belt;
		dodge_rate += inv_dodge_rate_belt
		bleed_resistance += inv_bleed_resistance_belt
		poison_resistance += inv_poison_resistance_belt;
		flame_resistance += inv_flame_resistance_belt;
		glacier_resistance += inv_glacier_resistance_belt;
		electro_resistance += inv_electro_resistance_belt;
		bleed_damage += inv_bleed_damage_belt;
		poison_damage += inv_poison_damage_belt;
		flame_damage += inv_flame_damage_belt;
		glacier_damage += inv_glacier_damage_belt;
		electro_damage += inv_electro_damage_belt;
		luck += inv_luck_belt;
		once_belt = false;
	}
}

//necks
if previous_equipment_neck != equipment_neck {
	if once_neck == false {
		once_neck = true;
		previous_equipment_neck = equipment_neck;
	}
}

if equipment_neck == 1 {
	if once_neck == true {
		inv_hp_neck += 0;
		inv_armor_neck += 0;
		inv_mana_neck += 0;
		inv_atak_neck += 1000;
		inv_critical_rate_neck += 0;
		inv_dodge_rate_neck += 0;
		inv_bleed_resistance_neck += 0;
		inv_poison_resistance_neck += 0;
		inv_flame_resistance_neck += 0;
		inv_glacier_resistance_neck += 0;
		inv_electro_resistance_neck += 0;
		inv_bleed_damage_neck += 0;
		inv_poison_damage_neck += 0;
		inv_flame_damage_neck += 0;
		inv_glacier_damage_neck += 0;
		inv_electro_damage_neck += 0;
		inv_luck_neck += 0;
		max_hp += inv_hp_neck;
		max_mana += inv_mana_neck;
		armor += inv_armor_neck;
		attack += inv_atak_neck;
		critical_rate += inv_critical_rate_neck;
		dodge_rate += inv_dodge_rate_neck
		bleed_resistance += inv_bleed_resistance_neck
		poison_resistance += inv_poison_resistance_neck;
		flame_resistance += inv_flame_resistance_neck;
		glacier_resistance += inv_glacier_resistance_neck;
		electro_resistance += inv_electro_resistance_neck;
		bleed_damage += inv_bleed_damage_neck;
		poison_damage += inv_poison_damage_neck;
		flame_damage += inv_flame_damage_neck;
		glacier_damage += inv_glacier_damage_neck;
		electro_damage += inv_electro_damage_neck;
		luck += inv_luck_neck;
		once_neck = false;
	}
}

//earrings_1
if previous_equipment_earring_1 != equipment_earring_1 {
	if once_earring_1 == false {
		once_earring_1 = true;
		previous_equipment_earring_1 = equipment_earring_1;
	}
}

if equipment_earring_1 == 1 {
	if once_earring_1 == true {
		inv_hp_earring_1 += 0;
		inv_armor_earring_1 += 0;
		inv_mana_earring_1 += 100;
		inv_atak_earring_1 += 0;
		inv_critical_rate_earring_1 += 0;
		inv_dodge_rate_earring_1 += 0;
		inv_bleed_resistance_earring_1 += 15;
		inv_poison_resistance_earring_1 += 15;
		inv_flame_resistance_earring_1 += 15;
		inv_glacier_resistance_earring_1 += 15;
		inv_electro_resistance_earring_1 += 15;
		inv_bleed_damage_earring_1 += 0;
		inv_poison_damage_earring_1 += 0;
		inv_flame_damage_earring_1 += 0;
		inv_glacier_damage_earring_1 += 0;
		inv_electro_damage_earring_1 += 0;
		inv_luck_earring_1 += 0;
		max_hp += inv_hp_earring_1;
		max_mana += inv_mana_earring_1;
		armor += inv_armor_earring_1;
		attack += inv_atak_earring_1;
		critical_rate += inv_critical_rate_earring_1;
		dodge_rate += inv_dodge_rate_earring_1
		bleed_resistance += inv_bleed_resistance_earring_1
		poison_resistance += inv_poison_resistance_earring_1;
		flame_resistance += inv_flame_resistance_earring_1;
		glacier_resistance += inv_glacier_resistance_earring_1;
		electro_resistance += inv_electro_resistance_earring_1;
		bleed_damage += inv_bleed_damage_earring_1;
		poison_damage += inv_poison_damage_earring_1;
		flame_damage += inv_flame_damage_earring_1;
		glacier_damage += inv_glacier_damage_earring_1;
		electro_damage += inv_electro_damage_earring_1;
		luck += inv_luck_earring_1;
		once_earring_1 = false;
	}
}


//earrings_2
if previous_equipment_earring_2 != equipment_earring_2 {
	if once_earring_2 == false {
		once_earring_2 = true;
		previous_equipment_earring_2 = equipment_earring_2;
	}
}

if equipment_earring_2 == 1 {
	if once_earring_2 == true {
		inv_hp_earring_2 += 0;
		inv_armor_earring_2 += 0;
		inv_mana_earring_2 += 100;
		inv_atak_earring_2 += 0;
		inv_critical_rate_earring_2 += 0;
		inv_dodge_rate_earring_2 += 0;
		inv_bleed_resistance_earring_2 += 15;
		inv_poison_resistance_earring_2 += 15;
		inv_flame_resistance_earring_2 += 15;
		inv_glacier_resistance_earring_2 += 15;
		inv_electro_resistance_earring_2 += 15;
		inv_bleed_damage_earring_2 += 0;
		inv_poison_damage_earring_2 += 0;
		inv_flame_damage_earring_2 += 0;
		inv_glacier_damage_earring_2 += 0;
		inv_electro_damage_earring_2 += 0;
		inv_luck_earring_2 += 0;
		max_hp += inv_hp_earring_2;
		max_mana += inv_mana_earring_2;
		armor += inv_armor_earring_2;
		attack += inv_atak_earring_2;
		critical_rate += inv_critical_rate_earring_2;
		dodge_rate += inv_dodge_rate_earring_2
		bleed_resistance += inv_bleed_resistance_earring_2
		poison_resistance += inv_poison_resistance_earring_2;
		flame_resistance += inv_flame_resistance_earring_2;
		glacier_resistance += inv_glacier_resistance_earring_2;
		electro_resistance += inv_electro_resistance_earring_2;
		bleed_damage += inv_bleed_damage_earring_2;
		poison_damage += inv_poison_damage_earring_2;
		flame_damage += inv_flame_damage_earring_2;
		glacier_damage += inv_glacier_damage_earring_2;
		electro_damage += inv_electro_damage_earring_2;
		luck += inv_luck_earring_2;
		once_earring_2 = false;
	}
}




//1 ler daima bunun üstünde olacak
if hp > max_hp {
	hp = max_hp;	
}

if equipment_helmet == 0 {
	if once_helmet == true {
		
		
		max_hp -= inv_hp_helmet;
		armor -= inv_armor_helmet;
		inv_hp_helmet -= inv_hp_helmet;
		inv_armor_helmet -= inv_armor_helmet
		once_helmet = false;
	}
}

if equipment_chest == 0 {
	if once_chest == true {
		
		
		max_hp -= inv_hp_chest;
		armor -= inv_armor_chest;
		inv_hp_chest -= inv_hp_chest;
		inv_armor_chest -= inv_armor_chest
		once_chest = false;
	}
}

if equipment_pants == 0 {
	if once_pants == true {
		
		
		max_hp -= inv_hp_pants;
		armor -= inv_armor_pants;
		inv_hp_pants -= inv_hp_pants;
		inv_armor_pants -= inv_armor_pants
		once_pants = false;
	}
}

if equipment_boots == 0 {
	if once_boots == true {
		
		
		max_hp -= inv_hp_boots;
		armor -= inv_armor_boots;
		inv_hp_boots -= inv_hp_boots;
		inv_armor_boots -= inv_armor_boots
		once_boots = false;
	}
}

if equipment_gloves == 0 {
	if once_gloves == true {
		
		
		max_hp -= inv_hp_gloves;
		armor -= inv_armor_gloves;
		inv_hp_gloves -= inv_hp_gloves;
		inv_armor_gloves -= inv_armor_gloves
		once_gloves = false;
	}
}

if equipment_ring_1 == 0 {
	if once_ring_1 == true {
		
		max_mana -= inv_mana_ring_1;
		max_hp -= inv_hp_ring_1;
		armor -= inv_armor_ring_1;
		attack -= inv_atak_ring_1;
		critical_rate -= inv_critical_rate_ring_1;
		dodge_rate -= inv_dodge_rate_ring_1;
		bleed_resistance -= inv_bleed_resistance_ring_1;
		poison_resistance -= inv_poison_resistance_ring_1;
		flame_resistance -= inv_flame_resistance_ring_1;
		glacier_resistance -= inv_glacier_resistance_ring_1;
		electro_resistance -= inv_electro_resistance_ring_1;
		bleed_damage -= inv_bleed_damage_ring_1;
		poison_damage -= inv_poison_damage_ring_1;
		flame_damage -= inv_flame_damage_ring_1;
		glacier_damage -= inv_glacier_damage_ring_1;
		electro_damage -= inv_electro_damage_ring_1;
		luck -= inv_luck_ring_1;
		inv_hp_ring_1 -= inv_hp_ring_1;
		inv_armor_ring_1 -= inv_armor_ring_1;
		inv_mana_ring_1 -= inv_mana_ring_1;
		inv_atak_ring_1 -= inv_atak_ring_1;
		inv_critical_rate_ring_1 -= inv_critical_rate_ring_1;
		inv_dodge_rate_ring_1 -= inv_dodge_rate_ring_1;
		inv_bleed_resistance_ring_1 -= inv_bleed_resistance_ring_1;
		inv_poison_resistance_ring_1 -= inv_poison_resistance_ring_1;
		inv_flame_resistance_ring_1 -= inv_flame_resistance_ring_1;
		inv_glacier_resistance_ring_1 -= inv_glacier_resistance_ring_1;
		inv_electro_resistance_ring_1 -= inv_electro_resistance_ring_1;
		inv_bleed_damage_ring_1 -= inv_bleed_damage_ring_1;
		inv_poison_damage_ring_1 -= inv_poison_damage_ring_1;
		inv_flame_damage_ring_1 -= inv_flame_damage_ring_1;
		inv_glacier_damage_ring_1 -= inv_glacier_damage_ring_1;
		inv_electro_damage_ring_1 -= inv_electro_damage_ring_1;
		inv_luck_ring_1 -= inv_luck_ring_1;
		once_ring_1 = false;
	}
}





if equipment_ring_2 == 0 {
	if once_ring_2 == true {
		
		max_mana -= inv_mana_ring_2;
		max_hp -= inv_hp_ring_2;
		armor -= inv_armor_ring_2;
		attack -= inv_atak_ring_2;
		critical_rate -= inv_critical_rate_ring_2;
		dodge_rate -= inv_dodge_rate_ring_2;
		bleed_resistance -= inv_bleed_resistance_ring_2;
		poison_resistance -= inv_poison_resistance_ring_2;
		flame_resistance -= inv_flame_resistance_ring_2;
		glacier_resistance -= inv_glacier_resistance_ring_2;
		electro_resistance -= inv_electro_resistance_ring_2;
		bleed_damage -= inv_bleed_damage_ring_2;
		poison_damage -= inv_poison_damage_ring_2;
		flame_damage -= inv_flame_damage_ring_2;
		glacier_damage -= inv_glacier_damage_ring_2;
		electro_damage -= inv_electro_damage_ring_2;
		luck -= inv_luck_ring_2;
		inv_hp_ring_2 -= inv_hp_ring_2;
		inv_armor_ring_2 -= inv_armor_ring_2;
		inv_mana_ring_2 -= inv_mana_ring_2;
		inv_atak_ring_2 -= inv_atak_ring_2;
		inv_critical_rate_ring_2 -= inv_critical_rate_ring_2;
		inv_dodge_rate_ring_2 -= inv_dodge_rate_ring_2;
		inv_bleed_resistance_ring_2 -= inv_bleed_resistance_ring_2;
		inv_poison_resistance_ring_2 -= inv_poison_resistance_ring_2;
		inv_flame_resistance_ring_2 -= inv_flame_resistance_ring_2;
		inv_glacier_resistance_ring_2 -= inv_glacier_resistance_ring_2;
		inv_electro_resistance_ring_2 -= inv_electro_resistance_ring_2;
		inv_bleed_damage_ring_2 -= inv_bleed_damage_ring_2;
		inv_poison_damage_ring_2 -= inv_poison_damage_ring_2;
		inv_flame_damage_ring_2 -= inv_flame_damage_ring_2;
		inv_glacier_damage_ring_2 -= inv_glacier_damage_ring_2;
		inv_electro_damage_ring_2 -= inv_electro_damage_ring_2;
		inv_luck_ring_2 -= inv_luck_ring_2;
		once_ring_2 = false;
	}
}



if equipment_belt == 0 {
	if once_belt == true {
		
		max_mana -= inv_mana_belt;
		max_hp -= inv_hp_belt;
		armor -= inv_armor_belt;
		attack -= inv_atak_belt;
		critical_rate -= inv_critical_rate_belt;
		dodge_rate -= inv_dodge_rate_belt;
		bleed_resistance -= inv_bleed_resistance_belt;
		poison_resistance -= inv_poison_resistance_belt;
		flame_resistance -= inv_flame_resistance_belt;
		glacier_resistance -= inv_glacier_resistance_belt;
		electro_resistance -= inv_electro_resistance_belt;
		bleed_damage -= inv_bleed_damage_belt;
		poison_damage -= inv_poison_damage_belt;
		flame_damage -= inv_flame_damage_belt;
		glacier_damage -= inv_glacier_damage_belt;
		electro_damage -= inv_electro_damage_belt;
		luck -= inv_luck_belt;
		inv_hp_belt -= inv_hp_belt;
		inv_armor_belt -= inv_armor_belt;
		inv_mana_belt -= inv_mana_belt;
		inv_atak_belt -= inv_atak_belt;
		inv_critical_rate_belt -= inv_critical_rate_belt;
		inv_dodge_rate_belt -= inv_dodge_rate_belt;
		inv_bleed_resistance_belt -= inv_bleed_resistance_belt;
		inv_poison_resistance_belt -= inv_poison_resistance_belt;
		inv_flame_resistance_belt -= inv_flame_resistance_belt;
		inv_glacier_resistance_belt -= inv_glacier_resistance_belt;
		inv_electro_resistance_belt -= inv_electro_resistance_belt;
		inv_bleed_damage_belt -= inv_bleed_damage_belt;
		inv_poison_damage_belt -= inv_poison_damage_belt;
		inv_flame_damage_belt -= inv_flame_damage_belt;
		inv_glacier_damage_belt -= inv_glacier_damage_belt;
		inv_electro_damage_belt -= inv_electro_damage_belt;
		inv_luck_belt -= inv_luck_belt;
		once_belt = false;
	}
}



if equipment_neck == 0 {
	if once_neck == true {
		
		max_mana -= inv_mana_neck;
		max_hp -= inv_hp_neck;
		armor -= inv_armor_neck;
		attack -= inv_atak_neck;
		critical_rate -= inv_critical_rate_neck;
		dodge_rate -= inv_dodge_rate_neck;
		bleed_resistance -= inv_bleed_resistance_neck;
		poison_resistance -= inv_poison_resistance_neck;
		flame_resistance -= inv_flame_resistance_neck;
		glacier_resistance -= inv_glacier_resistance_neck;
		electro_resistance -= inv_electro_resistance_neck;
		bleed_damage -= inv_bleed_damage_neck;
		poison_damage -= inv_poison_damage_neck;
		flame_damage -= inv_flame_damage_neck;
		glacier_damage -= inv_glacier_damage_neck;
		electro_damage -= inv_electro_damage_neck;
		luck -= inv_luck_neck;
		inv_hp_neck -= inv_hp_neck;
		inv_armor_neck -= inv_armor_neck;
		inv_mana_neck -= inv_mana_neck;
		inv_atak_neck -= inv_atak_neck;
		inv_critical_rate_neck -= inv_critical_rate_neck;
		inv_dodge_rate_neck -= inv_dodge_rate_neck;
		inv_bleed_resistance_neck -= inv_bleed_resistance_neck;
		inv_poison_resistance_neck -= inv_poison_resistance_neck;
		inv_flame_resistance_neck -= inv_flame_resistance_neck;
		inv_glacier_resistance_neck -= inv_glacier_resistance_neck;
		inv_electro_resistance_neck -= inv_electro_resistance_neck;
		inv_bleed_damage_neck -= inv_bleed_damage_neck;
		inv_poison_damage_neck -= inv_poison_damage_neck;
		inv_flame_damage_neck -= inv_flame_damage_neck;
		inv_glacier_damage_neck -= inv_glacier_damage_neck;
		inv_electro_damage_neck -= inv_electro_damage_neck;
		inv_luck_neck -= inv_luck_neck;
		once_neck = false;
	}
}



if equipment_earring_1 == 0 {
	if once_earring_1 == true {
		
		max_mana -= inv_mana_earring_1;
		max_hp -= inv_hp_earring_1;
		armor -= inv_armor_earring_1;
		attack -= inv_atak_earring_1;
		critical_rate -= inv_critical_rate_earring_1;
		dodge_rate -= inv_dodge_rate_earring_1;
		bleed_resistance -= inv_bleed_resistance_earring_1;
		poison_resistance -= inv_poison_resistance_earring_1;
		flame_resistance -= inv_flame_resistance_earring_1;
		glacier_resistance -= inv_glacier_resistance_earring_1;
		electro_resistance -= inv_electro_resistance_earring_1;
		bleed_damage -= inv_bleed_damage_earring_1;
		poison_damage -= inv_poison_damage_earring_1;
		flame_damage -= inv_flame_damage_earring_1;
		glacier_damage -= inv_glacier_damage_earring_1;
		electro_damage -= inv_electro_damage_earring_1;
		luck -= inv_luck_earring_1;
		inv_hp_earring_1 -= inv_hp_earring_1;
		inv_armor_earring_1 -= inv_armor_earring_1;
		inv_mana_earring_1 -= inv_mana_earring_1;
		inv_atak_earring_1 -= inv_atak_earring_1;
		inv_critical_rate_earring_1 -= inv_critical_rate_earring_1;
		inv_dodge_rate_earring_1 -= inv_dodge_rate_earring_1;
		inv_bleed_resistance_earring_1 -= inv_bleed_resistance_earring_1;
		inv_poison_resistance_earring_1 -= inv_poison_resistance_earring_1;
		inv_flame_resistance_earring_1 -= inv_flame_resistance_earring_1;
		inv_glacier_resistance_earring_1 -= inv_glacier_resistance_earring_1;
		inv_electro_resistance_earring_1 -= inv_electro_resistance_earring_1;
		inv_bleed_damage_earring_1 -= inv_bleed_damage_earring_1;
		inv_poison_damage_earring_1 -= inv_poison_damage_earring_1;
		inv_flame_damage_earring_1 -= inv_flame_damage_earring_1;
		inv_glacier_damage_earring_1 -= inv_glacier_damage_earring_1;
		inv_electro_damage_earring_1 -= inv_electro_damage_earring_1;
		inv_luck_earring_1 -= inv_luck_earring_1;
		once_earring_1 = false;
	}
}





if equipment_earring_2 == 0 {
	if once_earring_2 == true {
		
		max_mana -= inv_mana_earring_2;
		max_hp -= inv_hp_earring_2;
		armor -= inv_armor_earring_2;
		attack -= inv_atak_earring_2;
		critical_rate -= inv_critical_rate_earring_2;
		dodge_rate -= inv_dodge_rate_earring_2;
		bleed_resistance -= inv_bleed_resistance_earring_2;
		poison_resistance -= inv_poison_resistance_earring_2;
		flame_resistance -= inv_flame_resistance_earring_2;
		glacier_resistance -= inv_glacier_resistance_earring_2;
		electro_resistance -= inv_electro_resistance_earring_2;
		bleed_damage -= inv_bleed_damage_earring_2;
		poison_damage -= inv_poison_damage_earring_2;
		flame_damage -= inv_flame_damage_earring_2;
		glacier_damage -= inv_glacier_damage_earring_2;
		electro_damage -= inv_electro_damage_earring_2;
		luck -= inv_luck_earring_2;
		inv_hp_earring_2 -= inv_hp_earring_2;
		inv_armor_earring_2 -= inv_armor_earring_2;
		inv_mana_earring_2 -= inv_mana_earring_2;
		inv_atak_earring_2 -= inv_atak_earring_2;
		inv_critical_rate_earring_2 -= inv_critical_rate_earring_2;
		inv_dodge_rate_earring_2 -= inv_dodge_rate_earring_2;
		inv_bleed_resistance_earring_2 -= inv_bleed_resistance_earring_2;
		inv_poison_resistance_earring_2 -= inv_poison_resistance_earring_2;
		inv_flame_resistance_earring_2 -= inv_flame_resistance_earring_2;
		inv_glacier_resistance_earring_2 -= inv_glacier_resistance_earring_2;
		inv_electro_resistance_earring_2 -= inv_electro_resistance_earring_2;
		inv_bleed_damage_earring_2 -= inv_bleed_damage_earring_2;
		inv_poison_damage_earring_2 -= inv_poison_damage_earring_2;
		inv_flame_damage_earring_2 -= inv_flame_damage_earring_2;
		inv_glacier_damage_earring_2 -= inv_glacier_damage_earring_2;
		inv_electro_damage_earring_2 -= inv_electro_damage_earring_2;
		inv_luck_earring_2 -= inv_luck_earring_2;
		once_earring_2 = false;
	}
}




//room infoya gelince statların normal hale dönmesi
if room == Room_info {
	
	mana = max_mana;
	
	hp = max_hp;
	
	real_bleed_res = max_bleed_res;
	real_poison_res = max_poison_res;
	real_glacier_res = max_glacier_res;
	real_flame_res = max_flame_res;
	real_electro_res = max_electro_res;
}


