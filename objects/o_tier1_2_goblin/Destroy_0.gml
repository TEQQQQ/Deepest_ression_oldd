/// @description Insert description here
// You can write your code in this editor


//instance_create_layer(x,y,"effects",o_tier1_1_bandicot_drop_list);

instance_create_layer(x,y,"effects",o_chest);


instance_create_layer(x,y+150,"effects",o_fight_end_button);


global.tier = 1.3



if global.character == 4 {
	o_rogue.real_bleed_res = o_rogue.bleed_resistance*10;
	o_rogue.real_poison_res = o_rogue.poison_resistance*10;
	o_rogue.real_glacier_res = o_rogue.glacier_resistance*10;
	o_rogue.real_flame_res = o_rogue.flame_resistance*10;
	o_rogue.real_electro_res = o_rogue.electro_resistance*10;
	
	o_rogue.defence_resisting_1_3 = 0;
	o_rogue.defence_resisting_1_3_on = false;
	if instance_exists(o_bleed_debuff) {
		instance_destroy(o_bleed_debuff);	
	}
	if instance_exists(o_burn_debuff) {
		instance_destroy(o_burn_debuff);	
	}
	if instance_exists(o_electro_debuff) {
		instance_destroy(o_electro_debuff);	
	}
	if instance_exists(o_glacier_debuff) {
		instance_destroy(o_glacier_debuff);	
	}
	if instance_exists(o_poison_debuff) {
		instance_destroy(o_poison_debuff);	
	}
	o_skill_1.time = 0;
	o_skill_1.timecount = false;
}
