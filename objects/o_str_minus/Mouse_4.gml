/// @description Insert description here
// You can write your code in this editor

if global.character == 4 {
	if o_rogue.eklenecek_str > 0 {
		
		if o_rogue.inv_atak_ring_1 > 0 {
			o_rogue.attack -= o_rogue.inv_atak_ring_1;
		}
		
		if o_rogue.inv_atak_ring_2 > 0 {
			o_rogue.attack -= o_rogue.inv_atak_ring_2;
		}
		
		if o_rogue.inv_atak_belt > 0 {
			o_rogue.attack -= o_rogue.inv_atak_belt;
		}
		
		if o_rogue.inv_atak_neck > 0 {
			o_rogue.attack -= o_rogue.inv_atak_neck;
		}
		
		if o_rogue.inv_atak_earring_1 > 0 {
			o_rogue.attack -= o_rogue.inv_atak_earring_1;
		}
		
		if o_rogue.inv_atak_earring_2 > 0 {
			o_rogue.attack -= o_rogue.inv_atak_earring_2;
		}
		
		o_rogue.attack -= 10
		//o_rogue.attack -= (o_rogue.attack*3)/103;
		
		
		if o_rogue.inv_atak_ring_1 > 0 {
			o_rogue.attack += o_rogue.inv_atak_ring_1;
		}
		
		if o_rogue.inv_atak_ring_2 > 0 {
			o_rogue.attack += o_rogue.inv_atak_ring_2;
		}
		
		if o_rogue.inv_atak_belt > 0 {
			o_rogue.attack += o_rogue.inv_atak_belt;
		}
		
		if o_rogue.inv_atak_neck > 0 {
			o_rogue.attack += o_rogue.inv_atak_neck;
		}
		
		if o_rogue.inv_atak_earring_1 > 0 {
			o_rogue.attack += o_rogue.inv_atak_earring_1;
		}
		
		if o_rogue.inv_atak_earring_2 > 0 {
			o_rogue.attack += o_rogue.inv_atak_earring_2;
		}
		o_rogue.eklenecek_str -=1;
		o_rogue.stat_points +=1;
	}
}


if global.character == 3 {
	if o_mage.eklenecek_str > 0 {
		o_mage.attack -= 15
		o_mage.attack -= (o_mage.attack*1)/101;
		o_mage.eklenecek_str -=1;
		o_mage.stat_points +=1;
	}
}

if global.character == 1 {
	if o_knight.eklenecek_str > 0 {
		o_knight.attack -= 30
		o_knight.attack -= (o_knight.attack*4)/104;
		o_knight.eklenecek_str -=1;
		o_knight.stat_points +=1;
	}
}

if global.character == 2 {
	if o_priest.eklenecek_str > 0 {
		o_priest.attack -= 15
		o_priest.attack -= (o_priest.attack*3)/103;
		o_priest.eklenecek_str -=1;
		o_priest.stat_points +=1;
	}
}





