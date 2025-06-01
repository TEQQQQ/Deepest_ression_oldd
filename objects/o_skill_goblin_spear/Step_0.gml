/// @description Insert description here
// You can write your code in this editor



	if vurus == true {
	
			time++;
			if o_tier1_1_bandicot.real_glacier_res <= 0 {
				o_tier1_1_bandicot.real_glacier_res = 0;
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
					vurus = false;
					time = 0;
				
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
					vurus = false;
					time = 0;
				
				}	
			}
	}




