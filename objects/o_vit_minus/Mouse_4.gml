/// @description Insert description here
// You can write your code in this editor

if global.character == 4 {
	if o_rogue.eklenecek_vit > 0 {
		if o_rogue.inv_hp_helmet > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_helmet;
		}
		if o_rogue.inv_hp_chest > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_chest;
		}
		if o_rogue.inv_hp_pants > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_pants;
		}
		if o_rogue.inv_hp_boots > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_boots;
		}
		if o_rogue.inv_hp_gloves > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_gloves;
		}
		if o_rogue.inv_hp_ring_1 > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_ring_1;
		}
		if o_rogue.inv_hp_ring_2 > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_ring_2;
		}
		if o_rogue.inv_hp_belt > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_belt;
		}
		if o_rogue.inv_hp_neck > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_neck;
		}
		if o_rogue.inv_hp_earring_1 > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_earring_1;
		}
		if o_rogue.inv_hp_earring_2 > 0 {
			o_rogue.max_hp -= o_rogue.inv_hp_earring_2;
		}
		
		o_rogue.max_hp -= 30
		//o_rogue.max_hp -= (o_rogue.max_hp*2)/102;
		
		if o_rogue.inv_hp_helmet > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_helmet;
		}
		if o_rogue.inv_hp_chest > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_chest;
		}
		if o_rogue.inv_hp_pants > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_pants;
		}
		if o_rogue.inv_hp_boots > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_boots;
		}
		if o_rogue.inv_hp_gloves > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_gloves;
		}
		if o_rogue.inv_hp_ring_1 > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_ring_1;
		}
		if o_rogue.inv_hp_ring_2 > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_ring_2;
		}
		if o_rogue.inv_hp_belt > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_belt;
		}
		if o_rogue.inv_hp_neck > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_neck;
		}
		if o_rogue.inv_hp_earring_1 > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_earring_1;
		}
		if o_rogue.inv_hp_earring_2 > 0 {
			o_rogue.max_hp += o_rogue.inv_hp_earring_2;
		}
		o_rogue.eklenecek_vit -=1;
		o_rogue.stat_points +=1;

	
	}

}


if global.character == 3 {
	if o_mage.eklenecek_vit > 0 {
		o_mage.max_hp -= 50
		o_mage.max_hp -= (o_mage.max_hp*1)/101;
		o_mage.eklenecek_vit -=1;
		o_mage.stat_points +=1;

	
	}

}


if global.character == 1 {
	if o_knight.eklenecek_vit > 0 {
		o_knight.max_hp -= 50
		o_knight.max_hp -= (o_knight.max_hp*4)/104;
		o_knight.eklenecek_vit -=1;
		o_knight.stat_points +=1;

	
	}

}


if global.character == 2 {
	if o_priest.eklenecek_vit > 0 {
		o_priest.max_hp -= 20
		o_priest.max_hp -= (o_priest.max_hp*3)/103;
		o_priest.eklenecek_vit -=1;
		o_priest.stat_points +=1;

	
	}

}



