/// @description Insert description here
// You can write your code in this editor

if global.character == 4 {
	if o_rogue.eklenecek_int > 0 {
		o_rogue.eklenecek_int -=1;
		o_rogue.stat_points +=1;
		if o_rogue.inv_bleed_resistance_ring_1 > 0 {
			o_rogue.bleed_resistance -= o_rogue.inv_bleed_resistance_ring_1;
		}
		if o_rogue.inv_poison_resistance_ring_1 > 0 {
			o_rogue.poison_resistance -= o_rogue.inv_poison_resistance_ring_1;
		}
		if o_rogue.inv_flame_resistance_ring_1 > 0 {
			o_rogue.flame_resistance -= o_rogue.inv_flame_resistance_ring_1;
		}
		if o_rogue.inv_glacier_resistance_ring_1 > 0 {
			o_rogue.glacier_resistance -= o_rogue.inv_glacier_resistance_ring_1;
		}
		if o_rogue.inv_electro_resistance_ring_1 > 0 {
			o_rogue.electro_resistance -= o_rogue.inv_electro_resistance_ring_1;
		}
		if o_rogue.inv_luck_ring_1 > 0 {
			o_rogue.luck -= o_rogue.inv_luck_ring_1;
		}
		
		if o_rogue.inv_bleed_resistance_ring_2 > 0 {
			o_rogue.bleed_resistance -= o_rogue.inv_bleed_resistance_ring_2;
		}
		if o_rogue.inv_poison_resistance_ring_2 > 0 {
			o_rogue.poison_resistance -= o_rogue.inv_poison_resistance_ring_2;
		}
		if o_rogue.inv_flame_resistance_ring_2 > 0 {
			o_rogue.flame_resistance -= o_rogue.inv_flame_resistance_ring_2;
		}
		if o_rogue.inv_glacier_resistance_ring_2 > 0 {
			o_rogue.glacier_resistance -= o_rogue.inv_glacier_resistance_ring_2;
		}
		if o_rogue.inv_electro_resistance_ring_2 > 0 {
			o_rogue.electro_resistance -= o_rogue.inv_electro_resistance_ring_2;
		}
		if o_rogue.inv_luck_ring_2 > 0 {
			o_rogue.luck -= o_rogue.inv_luck_ring_2;
		}
		
		
		if o_rogue.inv_bleed_resistance_belt > 0 {
			o_rogue.bleed_resistance -= o_rogue.inv_bleed_resistance_belt;
		}
		if o_rogue.inv_poison_resistance_belt > 0 {
			o_rogue.poison_resistance -= o_rogue.inv_poison_resistance_belt;
		}
		if o_rogue.inv_flame_resistance_belt > 0 {
			o_rogue.flame_resistance -= o_rogue.inv_flame_resistance_belt;
		}
		if o_rogue.inv_glacier_resistance_belt > 0 {
			o_rogue.glacier_resistance -= o_rogue.inv_glacier_resistance_belt;
		}
		if o_rogue.inv_electro_resistance_belt > 0 {
			o_rogue.electro_resistance -= o_rogue.inv_electro_resistance_belt;
		}
		if o_rogue.inv_luck_belt > 0 {
			o_rogue.luck -= o_rogue.inv_luck_belt;
		}
		
		if o_rogue.inv_bleed_resistance_neck > 0 {
			o_rogue.bleed_resistance -= o_rogue.inv_bleed_resistance_neck;
		}
		if o_rogue.inv_poison_resistance_neck > 0 {
			o_rogue.poison_resistance -= o_rogue.inv_poison_resistance_neck;
		}
		if o_rogue.inv_flame_resistance_neck > 0 {
			o_rogue.flame_resistance -= o_rogue.inv_flame_resistance_neck;
		}
		if o_rogue.inv_glacier_resistance_neck > 0 {
			o_rogue.glacier_resistance -= o_rogue.inv_glacier_resistance_neck;
		}
		if o_rogue.inv_electro_resistance_neck > 0 {
			o_rogue.electro_resistance -= o_rogue.inv_electro_resistance_neck;
		}
		if o_rogue.inv_luck_neck > 0 {
			o_rogue.luck -= o_rogue.inv_luck_neck;
		}
		
		if o_rogue.inv_bleed_resistance_earring_1 > 0 {
			o_rogue.bleed_resistance -= o_rogue.inv_bleed_resistance_earring_1;
		}
		if o_rogue.inv_poison_resistance_earring_1 > 0 {
			o_rogue.poison_resistance -= o_rogue.inv_poison_resistance_earring_1;
		}
		if o_rogue.inv_flame_resistance_earring_1 > 0 {
			o_rogue.flame_resistance -= o_rogue.inv_flame_resistance_earring_1;
		}
		if o_rogue.inv_glacier_resistance_earring_1 > 0 {
			o_rogue.glacier_resistance -= o_rogue.inv_glacier_resistance_earring_1;
		}
		if o_rogue.inv_electro_resistance_earring_1 > 0 {
			o_rogue.electro_resistance -= o_rogue.inv_electro_resistance_earring_1;
		}
		if o_rogue.inv_luck_earring_1 > 0 {
			o_rogue.luck -= o_rogue.inv_luck_earring_1;
		}
		
		if o_rogue.inv_bleed_resistance_earring_2 > 0 {
			o_rogue.bleed_resistance -= o_rogue.inv_bleed_resistance_earring_2;
		}
		if o_rogue.inv_poison_resistance_earring_2 > 0 {
			o_rogue.poison_resistance -= o_rogue.inv_poison_resistance_earring_2;
		}
		if o_rogue.inv_flame_resistance_earring_2 > 0 {
			o_rogue.flame_resistance -= o_rogue.inv_flame_resistance_earring_2;
		}
		if o_rogue.inv_glacier_resistance_earring_2 > 0 {
			o_rogue.glacier_resistance -= o_rogue.inv_glacier_resistance_earring_2;
		}
		if o_rogue.inv_electro_resistance_earring_2 > 0 {
			o_rogue.electro_resistance -= o_rogue.inv_electro_resistance_earring_2;
		}
		if o_rogue.inv_luck_earring_2 > 0 {
			o_rogue.luck -= o_rogue.inv_luck_earring_2;
		}
		
		
		o_rogue.luck -= 2
		o_rogue.bleed_resistance -= 2;
		o_rogue.poison_resistance -= 2;
		o_rogue.flame_resistance -= 2;
		o_rogue.glacier_resistance -= 2;
		o_rogue.electro_resistance -= 2;
		/*
		o_rogue.bleed_resistance -= (o_rogue.bleed_resistance*2)/102;
		o_rogue.poison_resistance -=(o_rogue.poison_resistance*2)/102;
		o_rogue.flame_resistance -= (o_rogue.flame_resistance*2)/102;
		o_rogue.glacier_resistance -= (o_rogue.glacier_resistance*2)/102;
		o_rogue.electro_resistance -= (o_rogue.electro_resistance*2)/102;
		*/
		
		if o_rogue.inv_bleed_resistance_ring_1 > 0 {
			o_rogue.bleed_resistance += o_rogue.inv_bleed_resistance_ring_1;
		}
		if o_rogue.inv_poison_resistance_ring_1 > 0 {
			o_rogue.poison_resistance += o_rogue.inv_poison_resistance_ring_1;
		}
		if o_rogue.inv_flame_resistance_ring_1 > 0 {
			o_rogue.flame_resistance += o_rogue.inv_flame_resistance_ring_1;
		}
		if o_rogue.inv_glacier_resistance_ring_1 > 0 {
			o_rogue.glacier_resistance += o_rogue.inv_glacier_resistance_ring_1;
		}
		if o_rogue.inv_electro_resistance_ring_1 > 0 {
			o_rogue.electro_resistance += o_rogue.inv_electro_resistance_ring_1;
		}
		if o_rogue.inv_luck_ring_1 > 0 {
			o_rogue.luck += o_rogue.inv_luck_ring_1;
		}
		
		if o_rogue.inv_bleed_resistance_ring_2 > 0 {
			o_rogue.bleed_resistance += o_rogue.inv_bleed_resistance_ring_2;
		}
		if o_rogue.inv_poison_resistance_ring_2 > 0 {
			o_rogue.poison_resistance += o_rogue.inv_poison_resistance_ring_2;
		}
		if o_rogue.inv_flame_resistance_ring_2 > 0 {
			o_rogue.flame_resistance += o_rogue.inv_flame_resistance_ring_2;
		}
		if o_rogue.inv_glacier_resistance_ring_2 > 0 {
			o_rogue.glacier_resistance += o_rogue.inv_glacier_resistance_ring_2;
		}
		if o_rogue.inv_electro_resistance_ring_2 > 0 {
			o_rogue.electro_resistance += o_rogue.inv_electro_resistance_ring_2;
		}
		if o_rogue.inv_luck_ring_2 > 0 {
			o_rogue.luck += o_rogue.inv_luck_ring_2;
		}
		
		
		if o_rogue.inv_bleed_resistance_belt > 0 {
			o_rogue.bleed_resistance += o_rogue.inv_bleed_resistance_belt;
		}
		if o_rogue.inv_poison_resistance_belt > 0 {
			o_rogue.poison_resistance += o_rogue.inv_poison_resistance_belt;
		}
		if o_rogue.inv_flame_resistance_belt > 0 {
			o_rogue.flame_resistance += o_rogue.inv_flame_resistance_belt;
		}
		if o_rogue.inv_glacier_resistance_belt > 0 {
			o_rogue.glacier_resistance += o_rogue.inv_glacier_resistance_belt;
		}
		if o_rogue.inv_electro_resistance_belt > 0 {
			o_rogue.electro_resistance += o_rogue.inv_electro_resistance_belt;
		}
		if o_rogue.inv_luck_belt > 0 {
			o_rogue.luck += o_rogue.inv_luck_belt;
		}
		
		if o_rogue.inv_bleed_resistance_neck > 0 {
			o_rogue.bleed_resistance += o_rogue.inv_bleed_resistance_neck;
		}
		if o_rogue.inv_poison_resistance_neck > 0 {
			o_rogue.poison_resistance += o_rogue.inv_poison_resistance_neck;
		}
		if o_rogue.inv_flame_resistance_neck > 0 {
			o_rogue.flame_resistance += o_rogue.inv_flame_resistance_neck;
		}
		if o_rogue.inv_glacier_resistance_neck > 0 {
			o_rogue.glacier_resistance += o_rogue.inv_glacier_resistance_neck;
		}
		if o_rogue.inv_electro_resistance_neck > 0 {
			o_rogue.electro_resistance += o_rogue.inv_electro_resistance_neck;
		}
		if o_rogue.inv_luck_neck > 0 {
			o_rogue.luck += o_rogue.inv_luck_neck;
		}
		
		if o_rogue.inv_bleed_resistance_earring_1 > 0 {
			o_rogue.bleed_resistance += o_rogue.inv_bleed_resistance_earring_1;
		}
		if o_rogue.inv_poison_resistance_earring_1 > 0 {
			o_rogue.poison_resistance += o_rogue.inv_poison_resistance_earring_1;
		}
		if o_rogue.inv_flame_resistance_earring_1 > 0 {
			o_rogue.flame_resistance += o_rogue.inv_flame_resistance_earring_1;
		}
		if o_rogue.inv_glacier_resistance_earring_1 > 0 {
			o_rogue.glacier_resistance += o_rogue.inv_glacier_resistance_earring_1;
		}
		if o_rogue.inv_electro_resistance_earring_1 > 0 {
			o_rogue.electro_resistance += o_rogue.inv_electro_resistance_earring_1;
		}
		if o_rogue.inv_luck_earring_1 > 0 {
			o_rogue.luck += o_rogue.inv_luck_earring_1;
		}
		
		if o_rogue.inv_bleed_resistance_earring_2 > 0 {
			o_rogue.bleed_resistance += o_rogue.inv_bleed_resistance_earring_2;
		}
		if o_rogue.inv_poison_resistance_earring_2 > 0 {
			o_rogue.poison_resistance += o_rogue.inv_poison_resistance_earring_2;
		}
		if o_rogue.inv_flame_resistance_earring_2 > 0 {
			o_rogue.flame_resistance += o_rogue.inv_flame_resistance_earring_2;
		}
		if o_rogue.inv_glacier_resistance_earring_2 > 0 {
			o_rogue.glacier_resistance += o_rogue.inv_glacier_resistance_earring_2;
		}
		if o_rogue.inv_electro_resistance_earring_2 > 0 {
			o_rogue.electro_resistance += o_rogue.inv_electro_resistance_earring_2;
		}
		if o_rogue.inv_luck_earring_2 > 0 {
			o_rogue.luck += o_rogue.inv_luck_earring_2;
		}
	}
}

if global.character == 3 {
	if o_mage.eklenecek_int > 0 {
		o_mage.eklenecek_int -=1;
		o_mage.stat_points +=1;
		o_mage.luck -= 2
		o_mage.bleed_resistance -= (o_mage.bleed_resistance*4)/104;
		o_mage.poison_resistance -=(o_mage.poison_resistance*4)/104;
		o_mage.flame_resistance -= (o_mage.flame_resistance*4)/104;
		o_mage.glacier_resistance -= (o_mage.glacier_resistance*4)/104;
		o_mage.electro_resistance -= (o_mage.electro_resistance*4)/104;
	}
}

if global.character == 1 {
	if o_knight.eklenecek_int > 0 {
		o_knight.eklenecek_int -=1;
		o_knight.stat_points +=1;
		o_knight.luck -= 2
		o_knight.bleed_resistance -= (o_knight.bleed_resistance*1)/101;
		o_knight.poison_resistance -=(o_knight.poison_resistance*1)/101;
		o_knight.flame_resistance -= (o_knight.flame_resistance*1)/101;
		o_knight.glacier_resistance -= (o_knight.glacier_resistance*1)/101;
		o_knight.electro_resistance -= (o_knight.electro_resistance*1)/101;
	}
}

if global.character == 2 {
	if o_priest.eklenecek_int > 0 {
		o_priest.eklenecek_int -=1;
		o_priest.stat_points +=1;
		o_priest.luck -= 2
		o_priest.bleed_resistance -= (o_priest.bleed_resistance*3)/103;
		o_priest.poison_resistance -=(o_priest.poison_resistance*3)/103;
		o_priest.flame_resistance -= (o_priest.flame_resistance*3)/103;
		o_priest.glacier_resistance -= (o_priest.glacier_resistance*3)/103;
		o_priest.electro_resistance -= (o_priest.electro_resistance*3)/103;
	}
}




