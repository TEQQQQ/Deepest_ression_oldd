/// @description Insert description here
// You can write your code in this editor

if global.character == 4 {
	if o_rogue.eklenecek_dex > 0 {
		if o_rogue.inv_armor_helmet > 0 {
			o_rogue.armor -= o_rogue.inv_armor_helmet;
		}
		if o_rogue.inv_armor_chest > 0 {
			o_rogue.armor -= o_rogue.inv_armor_chest;
		}
		if o_rogue.inv_armor_pants > 0 {
			o_rogue.armor -= o_rogue.inv_armor_pants;
		}
		if o_rogue.inv_armor_boots > 0 {
			o_rogue.armor -= o_rogue.inv_armor_boots;
		}
		if o_rogue.inv_armor_gloves > 0 {
			o_rogue.armor -= o_rogue.inv_armor_gloves;
		}
		if o_rogue.inv_armor_ring_1 > 0 {
			o_rogue.armor -= o_rogue.inv_armor_ring_1;
		}
		if o_rogue.inv_armor_ring_2 > 0 {
			o_rogue.armor -= o_rogue.inv_armor_ring_2;
		}
		if o_rogue.inv_armor_belt > 0 {
			o_rogue.armor -= o_rogue.inv_armor_belt;
		}
		if o_rogue.inv_armor_neck > 0 {
			o_rogue.armor -= o_rogue.inv_armor_neck;
		}
		if o_rogue.inv_armor_earring_1 > 0 {
			o_rogue.armor -= o_rogue.inv_armor_earring_1;
		}
		if o_rogue.inv_armor_earring_2 > 0 {
			o_rogue.armor -= o_rogue.inv_armor_earring_2;
		}
		
		o_rogue.armor -= 5
		//o_rogue.armor -= (o_rogue.armor*2)/102;
		
		if o_rogue.inv_armor_helmet > 0 {
			o_rogue.armor += o_rogue.inv_armor_helmet;
		}
		if o_rogue.inv_armor_chest > 0 {
			o_rogue.armor += o_rogue.inv_armor_chest;
		}
		if o_rogue.inv_armor_pants > 0 {
			o_rogue.armor += o_rogue.inv_armor_pants;
		}
		if o_rogue.inv_armor_boots > 0 {
			o_rogue.armor += o_rogue.inv_armor_boots;
		}
		if o_rogue.inv_armor_gloves > 0 {
			o_rogue.armor += o_rogue.inv_armor_gloves;
		}
		if o_rogue.inv_armor_ring_1 > 0 {
			o_rogue.armor += o_rogue.inv_armor_ring_1;
		}
		if o_rogue.inv_armor_ring_2 > 0 {
			o_rogue.armor += o_rogue.inv_armor_ring_2;
		}
		if o_rogue.inv_armor_belt > 0 {
			o_rogue.armor += o_rogue.inv_armor_belt;
		}
		if o_rogue.inv_armor_neck > 0 {
			o_rogue.armor += o_rogue.inv_armor_neck;
		}
		if o_rogue.inv_armor_earring_1 > 0 {
			o_rogue.armor += o_rogue.inv_armor_earring_1;
		}
		if o_rogue.inv_armor_earring_2 > 0 {
			o_rogue.armor += o_rogue.inv_armor_earring_2;
		}
		o_rogue.eklenecek_dex -=1;
		o_rogue.stat_points +=1;
	}
}

if global.character == 3 {
	if o_mage.eklenecek_dex > 0 {
		o_mage.armor -= 5
		o_mage.armor -= (o_mage.armor*1)/101;
		o_mage.eklenecek_dex -=1;
		o_mage.stat_points +=1;
	}
}

if global.character == 1 {
	if o_knight.eklenecek_dex > 0 {
		o_knight.armor -= 15
		o_knight.armor -= (o_knight.armor*4)/104;
		o_knight.eklenecek_dex -=1;
		o_knight.stat_points +=1;
	}
}

if global.character == 2 {
	if o_priest.eklenecek_dex > 0 {
		o_priest.armor -= 10
		o_priest.armor -= (o_priest.armor*2)/102;
		o_priest.eklenecek_dex -=1;
		o_priest.stat_points +=1;
	}
}


