/// @description Insert description here
// You can write your code in this editor

if global.character == 4 {
	if o_rogue.eklenecek_mp > 0 {
		if o_rogue.inv_mana_ring_1 > 0 {
			o_rogue.max_mana -= o_rogue.inv_mana_ring_1;
		}
		if o_rogue.inv_bleed_damage_ring_1 > 0 {
			o_rogue.bleed_damage -= o_rogue.inv_bleed_damage_ring_1;
		}
		if o_rogue.inv_poison_damage_ring_1 > 0 {
			o_rogue.poison_damage -= o_rogue.inv_poison_damage_ring_1;
		}
		if o_rogue.inv_flame_damage_ring_1 > 0 {
			o_rogue.flame_damage -= o_rogue.inv_flame_damage_ring_1;
		}
		if o_rogue.inv_glacier_damage_ring_1 > 0 {
			o_rogue.glacier_damage -= o_rogue.inv_glacier_damage_ring_1;
		}
		if o_rogue.inv_electro_damage_ring_1 > 0 {
			o_rogue.electro_damage -= o_rogue.inv_electro_damage_ring_1;
		}
		
		if o_rogue.inv_mana_ring_2 > 0 {
			o_rogue.max_mana -= o_rogue.inv_mana_ring_2;
		}
		if o_rogue.inv_bleed_damage_ring_2 > 0 {
			o_rogue.bleed_damage -= o_rogue.inv_bleed_damage_ring_2;
		}
		if o_rogue.inv_poison_damage_ring_2 > 0 {
			o_rogue.poison_damage -= o_rogue.inv_poison_damage_ring_2;
		}
		if o_rogue.inv_flame_damage_ring_2 > 0 {
			o_rogue.flame_damage -= o_rogue.inv_flame_damage_ring_2;
		}
		if o_rogue.inv_glacier_damage_ring_2 > 0 {
			o_rogue.glacier_damage -= o_rogue.inv_glacier_damage_ring_2;
		}
		if o_rogue.inv_electro_damage_ring_2 > 0 {
			o_rogue.electro_damage -= o_rogue.inv_electro_damage_ring_2;
		}
		
		
		if o_rogue.inv_mana_belt > 0 {
			o_rogue.max_mana -= o_rogue.inv_mana_belt;
		}
		if o_rogue.inv_bleed_damage_belt > 0 {
			o_rogue.bleed_damage -= o_rogue.inv_bleed_damage_belt;
		}
		if o_rogue.inv_poison_damage_belt > 0 {
			o_rogue.poison_damage -= o_rogue.inv_poison_damage_belt;
		}
		if o_rogue.inv_flame_damage_belt > 0 {
			o_rogue.flame_damage -= o_rogue.inv_flame_damage_belt;
		}
		if o_rogue.inv_glacier_damage_belt > 0 {
			o_rogue.glacier_damage -= o_rogue.inv_glacier_damage_belt;
		}
		if o_rogue.inv_electro_damage_belt > 0 {
			o_rogue.electro_damage -= o_rogue.inv_electro_damage_belt;
		}
		
		if o_rogue.inv_mana_neck > 0 {
			o_rogue.max_mana -= o_rogue.inv_mana_neck;
		}
		if o_rogue.inv_bleed_damage_neck > 0 {
			o_rogue.bleed_damage -= o_rogue.inv_bleed_damage_neck;
		}
		if o_rogue.inv_poison_damage_neck > 0 {
			o_rogue.poison_damage -= o_rogue.inv_poison_damage_neck;
		}
		if o_rogue.inv_flame_damage_neck > 0 {
			o_rogue.flame_damage -= o_rogue.inv_flame_damage_neck;
		}
		if o_rogue.inv_glacier_damage_neck > 0 {
			o_rogue.glacier_damage -= o_rogue.inv_glacier_damage_neck;
		}
		if o_rogue.inv_electro_damage_neck > 0 {
			o_rogue.electro_damage -= o_rogue.inv_electro_damage_neck;
		}
		
		
		if o_rogue.inv_mana_earring_1 > 0 {
			o_rogue.max_mana -= o_rogue.inv_mana_earring_1;
		}
		if o_rogue.inv_bleed_damage_earring_1 > 0 {
			o_rogue.bleed_damage -= o_rogue.inv_bleed_damage_earring_1;
		}
		if o_rogue.inv_poison_damage_earring_1 > 0 {
			o_rogue.poison_damage -= o_rogue.inv_poison_damage_earring_1;
		}
		if o_rogue.inv_flame_damage_earring_1 > 0 {
			o_rogue.flame_damage -= o_rogue.inv_flame_damage_earring_1;
		}
		if o_rogue.inv_glacier_damage_earring_1 > 0 {
			o_rogue.glacier_damage -= o_rogue.inv_glacier_damage_earring_1;
		}
		if o_rogue.inv_electro_damage_earring_1 > 0 {
			o_rogue.electro_damage -= o_rogue.inv_electro_damage_earring_1;
		}
		
		if o_rogue.inv_mana_earring_2 > 0 {
			o_rogue.max_mana -= o_rogue.inv_mana_earring_2;
		}
		if o_rogue.inv_bleed_damage_earring_2 > 0 {
			o_rogue.bleed_damage -= o_rogue.inv_bleed_damage_earring_2;
		}
		if o_rogue.inv_poison_damage_earring_2 > 0 {
			o_rogue.poison_damage -= o_rogue.inv_poison_damage_earring_2;
		}
		if o_rogue.inv_flame_damage_earring_2 > 0 {
			o_rogue.flame_damage -= o_rogue.inv_flame_damage_earring_2;
		}
		if o_rogue.inv_glacier_damage_earring_2 > 0 {
			o_rogue.glacier_damage -= o_rogue.inv_glacier_damage_earring_2;
		}
		if o_rogue.inv_electro_damage_earring_2 > 0 {
			o_rogue.electro_damage -= o_rogue.inv_electro_damage_earring_2;
		}
		
		
		o_rogue.max_mana -= 30
		
		/*
		o_rogue.max_mana -= (o_rogue.max_mana*3)/103;
		o_rogue.bleed_damage -= (o_rogue.bleed_damage*4)/104;
		o_rogue.poison_damage -= (o_rogue.poison_damage*4)/104;
		o_rogue.flame_damage -= (o_rogue.flame_damage*4)/104;
		o_rogue.glacier_damage -= (o_rogue.glacier_damage*4)/104;
		o_rogue.electro_damage -= (o_rogue.electro_damage*4)/104;
		*/
		
		
		
		if o_rogue.inv_mana_ring_1 > 0 {
			o_rogue.max_mana += o_rogue.inv_mana_ring_1;
		}
		if o_rogue.inv_bleed_damage_ring_1 > 0 {
			o_rogue.bleed_damage += o_rogue.inv_bleed_damage_ring_1;
		}
		if o_rogue.inv_poison_damage_ring_1 > 0 {
			o_rogue.poison_damage += o_rogue.inv_poison_damage_ring_1;
		}
		if o_rogue.inv_flame_damage_ring_1 > 0 {
			o_rogue.flame_damage += o_rogue.inv_flame_damage_ring_1;
		}
		if o_rogue.inv_glacier_damage_ring_1 > 0 {
			o_rogue.glacier_damage += o_rogue.inv_glacier_damage_ring_1;
		}
		if o_rogue.inv_electro_damage_ring_1 > 0 {
			o_rogue.electro_damage += o_rogue.inv_electro_damage_ring_1;
		}
		
		if o_rogue.inv_mana_ring_2 > 0 {
			o_rogue.max_mana += o_rogue.inv_mana_ring_2;
		}
		if o_rogue.inv_bleed_damage_ring_2 > 0 {
			o_rogue.bleed_damage += o_rogue.inv_bleed_damage_ring_2;
		}
		if o_rogue.inv_poison_damage_ring_2 > 0 {
			o_rogue.poison_damage += o_rogue.inv_poison_damage_ring_2;
		}
		if o_rogue.inv_flame_damage_ring_2 > 0 {
			o_rogue.flame_damage += o_rogue.inv_flame_damage_ring_2;
		}
		if o_rogue.inv_glacier_damage_ring_2 > 0 {
			o_rogue.glacier_damage += o_rogue.inv_glacier_damage_ring_2;
		}
		if o_rogue.inv_electro_damage_ring_2 > 0 {
			o_rogue.electro_damage += o_rogue.inv_electro_damage_ring_2;
		}
		
		
		if o_rogue.inv_mana_belt > 0 {
			o_rogue.max_mana += o_rogue.inv_mana_belt;
		}
		if o_rogue.inv_bleed_damage_belt > 0 {
			o_rogue.bleed_damage += o_rogue.inv_bleed_damage_belt;
		}
		if o_rogue.inv_poison_damage_belt > 0 {
			o_rogue.poison_damage += o_rogue.inv_poison_damage_belt;
		}
		if o_rogue.inv_flame_damage_belt > 0 {
			o_rogue.flame_damage += o_rogue.inv_flame_damage_belt;
		}
		if o_rogue.inv_glacier_damage_belt > 0 {
			o_rogue.glacier_damage += o_rogue.inv_glacier_damage_belt;
		}
		if o_rogue.inv_electro_damage_belt > 0 {
			o_rogue.electro_damage += o_rogue.inv_electro_damage_belt;
		}
		
		if o_rogue.inv_mana_neck > 0 {
			o_rogue.max_mana += o_rogue.inv_mana_neck;
		}
		if o_rogue.inv_bleed_damage_neck > 0 {
			o_rogue.bleed_damage += o_rogue.inv_bleed_damage_neck;
		}
		if o_rogue.inv_poison_damage_neck > 0 {
			o_rogue.poison_damage += o_rogue.inv_poison_damage_neck;
		}
		if o_rogue.inv_flame_damage_neck > 0 {
			o_rogue.flame_damage += o_rogue.inv_flame_damage_neck;
		}
		if o_rogue.inv_glacier_damage_neck > 0 {
			o_rogue.glacier_damage += o_rogue.inv_glacier_damage_neck;
		}
		if o_rogue.inv_electro_damage_neck > 0 {
			o_rogue.electro_damage += o_rogue.inv_electro_damage_neck;
		}
		
		if o_rogue.inv_mana_earring_1 > 0 {
			o_rogue.max_mana += o_rogue.inv_mana_earring_1;
		}
		if o_rogue.inv_bleed_damage_earring_1 > 0 {
			o_rogue.bleed_damage += o_rogue.inv_bleed_damage_earring_1;
		}
		if o_rogue.inv_poison_damage_earring_1 > 0 {
			o_rogue.poison_damage += o_rogue.inv_poison_damage_earring_1;
		}
		if o_rogue.inv_flame_damage_earring_1 > 0 {
			o_rogue.flame_damage += o_rogue.inv_flame_damage_earring_1;
		}
		if o_rogue.inv_glacier_damage_earring_1 > 0 {
			o_rogue.glacier_damage += o_rogue.inv_glacier_damage_earring_1;
		}
		if o_rogue.inv_electro_damage_earring_1 > 0 {
			o_rogue.electro_damage += o_rogue.inv_electro_damage_earring_1;
		}
		
		if o_rogue.inv_mana_earring_2 > 0 {
			o_rogue.max_mana += o_rogue.inv_mana_earring_2;
		}
		if o_rogue.inv_bleed_damage_earring_2 > 0 {
			o_rogue.bleed_damage += o_rogue.inv_bleed_damage_earring_2;
		}
		if o_rogue.inv_poison_damage_earring_2 > 0 {
			o_rogue.poison_damage += o_rogue.inv_poison_damage_earring_2;
		}
		if o_rogue.inv_flame_damage_earring_2 > 0 {
			o_rogue.flame_damage += o_rogue.inv_flame_damage_earring_2;
		}
		if o_rogue.inv_glacier_damage_earring_2 > 0 {
			o_rogue.glacier_damage += o_rogue.inv_glacier_damage_earring_2;
		}
		if o_rogue.inv_electro_damage_earring_2 > 0 {
			o_rogue.electro_damage += o_rogue.inv_electro_damage_earring_2;
		}
	
		o_rogue.eklenecek_mp -=1;
		o_rogue.stat_points +=1;
	}
}

if global.character == 3 {
	if o_mage.eklenecek_mp > 0 {
		o_mage.max_mana -= 50
		o_mage.max_mana -= (o_mage.max_mana*5)/105;
		o_mage.bleed_damage -= (o_mage.bleed_damage*5)/105;
		o_mage.poison_damage -= (o_mage.poison_damage*5)/105;
		o_mage.flame_damage -= (o_mage.flame_damage*5)/105;
		o_mage.glacier_damage -= (o_mage.glacier_damage*5)/105;
		o_mage.electro_damage -= (o_mage.electro_damage*5)/105;
	
	
		o_mage.eklenecek_mp -=1;
		o_mage.stat_points +=1;
	}
}

if global.character == 1 {
	if o_knight.eklenecek_mp > 0 {
		o_knight.max_mana -= 20
		o_knight.max_mana -= (o_knight.max_mana*2)/102;
		o_knight.bleed_damage -= (o_knight.bleed_damage*2)/102;
		o_knight.poison_damage -= (o_knight.poison_damage*2)/102;
		o_knight.flame_damage -= (o_knight.flame_damage*2)/102;
		o_knight.glacier_damage -= (o_knight.glacier_damage*2)/102;
		o_knight.electro_damage -= (o_knight.electro_damage*2)/102;
	
	
		o_knight.eklenecek_mp -=1;
		o_knight.stat_points +=1;
	}
}

if global.character == 2 {
	if o_priest.eklenecek_mp > 0 {
		o_priest.max_mana -= 20
		o_priest.max_mana -= (o_priest.max_mana*4)/104;
		o_priest.bleed_damage -= (o_priest.bleed_damage*3)/103;
		o_priest.poison_damage -= (o_priest.poison_damage*3)/103;
		o_priest.flame_damage -= (o_priest.flame_damage*3)/103;
		o_priest.glacier_damage -= (o_priest.glacier_damage*3)/103;
		o_priest.electro_damage -= (o_priest.electro_damage*3)/103;
	
	
		o_priest.eklenecek_mp -=1;
		o_priest.stat_points +=1;
	}
}



