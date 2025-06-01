/// @description Insert description here
// You can write your code in this editor
if global.text_info == true and global.enemy_info == false {
	if position == 0 {
		if x <= 106 {
			x = 106
		
			if image_xscale >= 1 {
				o_stone_controller.stone_count = 1;
				//o_stone_controller.once = true;
			
				if once == true {
					instance_create_layer(x,y,"Instances",o_stone_effect);
					screenshake(3,5);
					once = false;
				}
			
			} else {
				image_xscale += 0.03;	
				image_yscale += 0.03;
			}
		} else {
			x -= 6.3;
			if image_xscale >= 1 {
			
			} else {
				image_xscale += 0.03;	
				image_yscale += 0.03;
			}
		}

	}


	if position == 1 {
		if x == 320 {
			if image_xscale >= 1 {
				o_stone_controller.stone_count = 2;
				if once == true {
					instance_create_layer(x,y,"Instances",o_stone_effect);
					screenshake(3,5);
					once = false;
				}
				//o_stone_controller.once = true;
			} else {
				image_xscale += 0.03;	
				image_yscale += 0.03;
			}
		} else {
		
		
		}

	}

	if position == 2 {
		if x >= 534 {
			x = 534
			if image_xscale >= 1 {
				o_stone_controller.stone_count = 3;
				//o_stone_controller.once = true;
				if once == true {
					instance_create_layer(x,y,"Instances",o_stone_effect);
					screenshake(3,5);
					global.enemy_info = true;
					once = false;
				}
			} else {
				image_xscale += 0.03;	
				image_yscale += 0.03;
			}
		} else {
			x += 6.3;	
			if image_xscale >= 1 {
			
			} else {
				image_xscale += 0.03;	
				image_yscale += 0.03;
			}
		}

	}
}


if global.enemy_info == true {
	if position == 0 {
		
		image_xscale = 1;
		image_yscale = 1;
		x = 106;
	}
	if position == 1 {
		
		image_xscale = 1;
		image_yscale = 1;
		x = 320;
	}
	if position == 2 {
		
		image_xscale = 1;
		image_yscale = 1;
		x = 534;
	}
}