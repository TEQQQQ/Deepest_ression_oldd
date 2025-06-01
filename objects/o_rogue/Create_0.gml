/// @description Insert description here
// You can write your code in this editor

	level_buff = true;
	
	hurting = 0;
	resisting = 0;
	thievery = 0;
	skill_point = 1;
	
	sapma = 0;
	critical_chance = 0;
	dodge_chance = 0;
	defence_50 = 0;
	once_defence = true;
	defence_timer = 0;
	
	
	eklenecek_str = 0;
	eklenecek_dex = 0;
	eklenecek_vit = 0;
	eklenecek_mp = 0;
	eklenecek_int = 0;
	
	hp = 200;
	
	mana = 1200
	attack = 200;
	luck = 0;
	armor = 5;
	str = 0;
	dex = 0;
	vit = 0;
	mp = 0;
	int = 0;
	critical_rate = 100;
	dodge_rate = 0;
	bleed_damage = 0;
	bleed_resistance = 10;
	poison_damage = 0;
	poison_resistance = 10;
	flame_damage = 0;
	flame_resistance = 10;
	glacier_damage = 0;
	glacier_resistance = 10;
	electro_damage = 0;
	electro_resistance = 10;
	max_mana = mana;
	max_hp = hp;
	level = 1;
	stat_points = 3;
	
	gold = 0;
	
	real_bleed_res = bleed_resistance*10;
	real_poison_res = poison_resistance*10;
	real_glacier_res = glacier_resistance*10;
	real_flame_res = flame_resistance*10;
	real_electro_res = electro_resistance*10;
	
	max_bleed_res = real_bleed_res;
	max_poison_res = real_poison_res;
	max_glacier_res = real_glacier_res;
	max_flame_res = real_flame_res;
	max_electro_res = real_electro_res;
	
	current_hp = hp;
	
	poison_timer = 0;
	once = true;
	electro_timer = 0;
	
resbar_width = 12;
resbar_height = 60;
resbar_x = 62;
resbar_y = 291;

resbar_glacier_x = 47;
resbar_glacier_y = 291;

resbar_electro_x = 32;
resbar_electro_y = 291;

resbar_bleed_x = 17;
resbar_bleed_y = 291;

resbar_poison_x = 2;
resbar_poison_y = 291;

	
health_potion_100 = 0;
mana_potion_50 = 0;
health_potion_500 = 0;
mana_potion_200 = 0;
health_potion_1000 = 0;
mana_potion_500 = 0;
health_potion_2000 = 0;
mana_potion_1000 = 0;
	
healthbar_width = 245;
healthbar_height = 22;
healthbar_x = 488;
healthbar_y = 214-16+6;

manabar_width = 86;
manabar_height = 18;
manabar_x = 488;
manabar_y = 247-16+6;


defence_resisting_1_2 = 0;
resisting_1_2_timer = 0;
once_defence_1_2 = true;
eklenen_deger = 0;
old_armor = 0;


defence_resisting_1_3 = 0;
defence_resisting_1_3_on = false;

//skills;

active_hunting_1 = 0;

active_resisting_1 = 0;

active_thievery_1 = 0;

active_hunting_2 = 0;

active_resisting_2 = 0;

active_thievery_2 = 0;


//zırhlar
once_helmet = true;
once_chest = true;
once_pants = true;
once_boots = true;
once_gloves = true;
once_ring_1 = true;
once_ring_2 = true;
once_belt = true;
once_neck = true;
once_earring_1 = true;
once_earring_2 = true;

inv_hp_helmet = 0;
inv_armor_helmet = 0;

inv_hp_chest = 0;
inv_armor_chest = 0;

inv_hp_pants = 0;
inv_armor_pants = 0;

inv_hp_boots = 0;
inv_armor_boots = 0;

inv_hp_gloves = 0;
inv_armor_gloves = 0;


inv_atak_ring_1 = 0;
inv_hp_ring_1 = 0;
inv_mana_ring_1 = 0;
inv_armor_ring_1 = 0;
inv_critical_rate_ring_1 = 0;
inv_dodge_rate_ring_1 = 0;
inv_bleed_resistance_ring_1 = 0;
inv_poison_resistance_ring_1 = 0;
inv_flame_resistance_ring_1 = 0;
inv_glacier_resistance_ring_1 = 0;
inv_electro_resistance_ring_1 = 0;
inv_bleed_damage_ring_1 = 0;
inv_poison_damage_ring_1 = 0;
inv_flame_damage_ring_1 = 0;
inv_glacier_damage_ring_1 = 0;
inv_electro_damage_ring_1 = 0;
inv_luck_ring_1 = 0;


inv_atak_ring_2 = 0;
inv_hp_ring_2 = 0;
inv_mana_ring_2 = 0;
inv_armor_ring_2 = 0;
inv_critical_rate_ring_2 = 0;
inv_dodge_rate_ring_2 = 0;
inv_bleed_resistance_ring_2 = 0;
inv_poison_resistance_ring_2 = 0;
inv_flame_resistance_ring_2 = 0;
inv_glacier_resistance_ring_2 = 0;
inv_electro_resistance_ring_2 = 0;
inv_bleed_damage_ring_2 = 0;
inv_poison_damage_ring_2 = 0;
inv_flame_damage_ring_2 = 0;
inv_glacier_damage_ring_2 = 0;
inv_electro_damage_ring_2 = 0;
inv_luck_ring_2 = 0;



inv_atak_earring_1 = 0;
inv_hp_earring_1 = 0;
inv_mana_earring_1 = 0;
inv_armor_earring_1 = 0;
inv_critical_rate_earring_1 = 0;
inv_dodge_rate_earring_1 = 0;
inv_bleed_resistance_earring_1 = 0;
inv_poison_resistance_earring_1 = 0;
inv_flame_resistance_earring_1 = 0;
inv_glacier_resistance_earring_1 = 0;
inv_electro_resistance_earring_1 = 0;
inv_bleed_damage_earring_1 = 0;
inv_poison_damage_earring_1 = 0;
inv_flame_damage_earring_1 = 0;
inv_glacier_damage_earring_1 = 0;
inv_electro_damage_earring_1 = 0;
inv_luck_earring_1 = 0;


inv_atak_earring_2 = 0;
inv_hp_earring_2 = 0;
inv_mana_earring_2 = 0;
inv_armor_earring_2 = 0;
inv_critical_rate_earring_2 = 0;
inv_dodge_rate_earring_2 = 0;
inv_bleed_resistance_earring_2 = 0;
inv_poison_resistance_earring_2 = 0;
inv_flame_resistance_earring_2 = 0;
inv_glacier_resistance_earring_2 = 0;
inv_electro_resistance_earring_2 = 0;
inv_bleed_damage_earring_2 = 0;
inv_poison_damage_earring_2 = 0;
inv_flame_damage_earring_2 = 0;
inv_glacier_damage_earring_2 = 0;
inv_electro_damage_earring_2 = 0;
inv_luck_earring_2 = 0;



inv_atak_belt = 0;
inv_hp_belt = 0;
inv_mana_belt = 0;
inv_armor_belt = 0;
inv_critical_rate_belt = 0;
inv_dodge_rate_belt = 0;
inv_bleed_resistance_belt = 0;
inv_poison_resistance_belt = 0;
inv_flame_resistance_belt = 0;
inv_glacier_resistance_belt = 0;
inv_electro_resistance_belt = 0;
inv_bleed_damage_belt = 0;
inv_poison_damage_belt = 0;
inv_flame_damage_belt = 0;
inv_glacier_damage_belt = 0;
inv_electro_damage_belt = 0;
inv_luck_belt = 0;


inv_atak_neck = 0;
inv_hp_neck = 0;
inv_mana_neck = 0;
inv_armor_neck = 0;
inv_critical_rate_neck = 0;
inv_dodge_rate_neck = 0;
inv_bleed_resistance_neck = 0;
inv_poison_resistance_neck = 0;
inv_flame_resistance_neck = 0;
inv_glacier_resistance_neck = 0;
inv_electro_resistance_neck = 0;
inv_bleed_damage_neck = 0;
inv_poison_damage_neck = 0;
inv_flame_damage_neck = 0;
inv_glacier_damage_neck = 0;
inv_electro_damage_neck = 0;
inv_luck_neck = 0;




equipment_helmet = 0;
previous_equipment_helmet = equipment_helmet;

equipment_gloves = 0;
previous_equipment_gloves = equipment_gloves;

equipment_chest = 0;
previous_equipment_chest = equipment_chest;

equipment_boots = 0;
previous_equipment_boots = equipment_boots;

equipment_pants = 0;
previous_equipment_pants = equipment_pants;

equipment_ring_1 = 0;
previous_equipment_ring_1 = equipment_ring_1;

equipment_ring_2 = 0;
previous_equipment_ring_2 = equipment_ring_2;

equipment_earring_1 = 0;
previous_equipment_earring_1 = equipment_earring_1;

equipment_earring_2 = 0;
previous_equipment_earring_2 = equipment_earring_2;

equipment_belt = 0;
previous_equipment_belt = equipment_belt;

equipment_neck = 0;
previous_equipment_neck = equipment_neck;

pacavra_helmet = 0; // equip value = 1 ---- leather zırh için equip değeri = 2
pacavra_boots = 0; // equip value = 1
pacavra_torso = 0; // equip value = 1
pacavra_gloves = 0; // equip value = 1
pacavra_pants = 0; // equip value = 1

ring_serpent = 0; //equip value = 1
ring_lousy = 0; //equip value = 2

belt_lichking = 0; //equip value = 1

neck_flashily = 0; //equip value = 1

earring_emerald = 0; // equip value q;





