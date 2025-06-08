/// @description Insert description here
// You can write your code in this editor

if global.text_info == true {
	sprite_index = s_inventory;	

	if room == Room_character_items_info or room == Room_character_select or room == Room_menu or room == Room_character_stats {
		instance_destroy();	
	}




	if room == Room1 and !instance_exists(o_tier1_1_bandicot) {
	
		if once_konum == true {
			x = -160;
			y = 176;	
		
			once_konum = false;
		} 
		if time == 25 or time == 0 {
			if keyboard_check_pressed(ord("I")){
					if inventory == true {
			
						dash = true;
						x_speed = -24.8;
					} else {
						dash = true;
						x_speed = 24.8
					}
				}
			} else {


				if time < 0 {
					time = 0;
					x = -160;
				}
				if time > 25 {
					time = 25;
					x = 160;
				}
			}
	

		if !instance_exists(o_inventory_close){
			instance_create_layer(x,y,"buttons",o_inventory_close);	
		}

		if dash = true {
			if inventory == false {
				x += x_speed;
				x_speed --;
				time++;
			} else {
				x += x_speed;
				x_speed ++;
				time--;
			}
		}
		if inventory == false {
			if x_speed <= 0 {
				dash = false;	
				inventory = true;
			}
		} else {
			if x_speed > 0 {
				dash = false;	
				inventory = false;
			}	
		}
	}

	if room == Room_info {
		if once_konum == true {
			x = 800;
			y = 176;	
		
			once_konum = false;
		} 
		if o_drop_menu.time == 0 and global.skill == 0{
			if time == 25 or time == 0 {
				if keyboard_check_pressed(ord("I")){
					if inventory == true {
						dash = true;
						x_speed = -24.8;
					} else {
						dash = true;
						x_speed = 24.8
					}
				}
			} else {


				if time < 0 {
					time = 0;
					x = 800;
				}
				if time > 25 {
					time = 25;
					x = 480;
				}
			}
		}

		if !instance_exists(o_inventory_close){
			instance_create_layer(x,y,"buttons",o_inventory_close);	
		}

		if dash = true {
			if inventory == false {
				x -= x_speed;
				x_speed --;
				time++;
			} else {
				x -= x_speed;
				x_speed ++;
				time--;
			}
		}
		if inventory == false {
			if x_speed <= 0 {
				dash = false;	
				time = time;
				inventory = true;
			}
		} else {
			if x_speed > 0 {
				dash = false;	
				time = time;
				inventory = false;
			}	
		}

	}


	if !instance_exists(o_inventory_place_trash) {
		instance_create_layer(x+85,y+11,"buttons",o_inventory_place_trash);	
	}

	if !instance_exists(o_inventory_place_helmet) {
		instance_create_layer(x+44,y-153,"buttons",o_inventory_place_helmet);	
	}

	if !instance_exists(o_inventory_place_earring) {
		instance_create_layer(x+3,y-153,"buttons",o_inventory_place_earring);	
	}

	if !instance_exists(o_inventory_place_earring_2) {
		instance_create_layer(x+85,y-153,"buttons",o_inventory_place_earring_2);	
	}

	if !instance_exists(o_inventory_place_chest) {
		instance_create_layer(x+44,y-112,"buttons",o_inventory_place_chest);	
	}

	if !instance_exists(o_inventory_place_pants) {
		instance_create_layer(x+44,y-30,"buttons",o_inventory_place_pants);	
	}

	if !instance_exists(o_inventory_place_boots) {
		instance_create_layer(x+44,y+11,"buttons",o_inventory_place_boots);	
	}

	if !instance_exists(o_inventory_place_gloves) {
		instance_create_layer(x+3,y+11,"buttons",o_inventory_place_gloves);	
	}

	if !instance_exists(o_inventory_place_ring) {
		instance_create_layer(x+3,y-30,"buttons",o_inventory_place_ring);	
	}

	if !instance_exists(o_inventory_place_ring_2) {
		instance_create_layer(x+85,y-30,"buttons",o_inventory_place_ring_2);	
	}

	if !instance_exists(o_inventory_place_belt) {
		instance_create_layer(x+44,y-71,"buttons",o_inventory_place_belt);	
	}

	if !instance_exists(o_inventory_place_neck) {
		instance_create_layer(x+3,y-112,"buttons",o_inventory_place_neck);	
	}

	if !instance_exists(o_inventory_place_1) {
		instance_create_layer(x-146,y+54,"buttons",o_inventory_place_1);	
	}


	if !instance_exists(o_inventory_place_2) {
		instance_create_layer(x-109,y+54,"buttons",o_inventory_place_2);
	}

	if !instance_exists(o_inventory_place_3) {
		instance_create_layer(x-72,y+54,"buttons",o_inventory_place_3);
	}

	if !instance_exists(o_inventory_place_4) {
		instance_create_layer(x-35,y+54,"buttons",o_inventory_place_4);
	}

	if !instance_exists(o_inventory_place_5) {
		instance_create_layer(x+2,y+54,"buttons",o_inventory_place_5);
	}

	if !instance_exists(o_inventory_place_6) {
		instance_create_layer(x+39,y+54,"buttons",o_inventory_place_6);
	}

	if !instance_exists(o_inventory_place_7) {
		instance_create_layer(x+76,y+54,"buttons",o_inventory_place_7);
	}

	if !instance_exists(o_inventory_place_8) {
		instance_create_layer(x+113,y+54,"buttons",o_inventory_place_8);
	}

	if !instance_exists(o_inventory_place_9) {
		instance_create_layer(x-146,y+91,"buttons",o_inventory_place_9);
	}

	if !instance_exists(o_inventory_place_10) {
		instance_create_layer(x-109,y+91,"buttons",o_inventory_place_10);
	}

	if !instance_exists(o_inventory_place_11) {
		instance_create_layer(x-72,y+91,"buttons",o_inventory_place_11);
	}

	if !instance_exists(o_inventory_place_12) {
		instance_create_layer(x-35,y+91,"buttons",o_inventory_place_12);
	}

	if !instance_exists(o_inventory_place_13) {
		instance_create_layer(x+2,y+91,"buttons",o_inventory_place_13);
	}

	if !instance_exists(o_inventory_place_14) {
		instance_create_layer(x+39,y+54,"buttons",o_inventory_place_14);
	}

	if !instance_exists(o_inventory_place_15) {
		instance_create_layer(x+76,y+54,"buttons",o_inventory_place_15);
	}

	if !instance_exists(o_inventory_place_16) {
		instance_create_layer(x+113,y+54,"buttons",o_inventory_place_16);
	}


	/*

			if place_1 == true {
				instance_create_layer(x-146,y+54,"buttons",o_inventory_place_1);	
				place_1 = false;
			} else if place_2 == true {
				instance_create_layer(x-109,y+54,"effects",o_inventory_place_);	
				place_2 = false;
			} else if place_3 == true {
				instance_create_layer(x-72,y+54,"effects",o_health_potion_100_inv);	
				place_3 = false;
			} else if place_4 == true {
				instance_create_layer(x-35,y+54,"effects",o_health_potion_100_inv);	
				place_4 = false;
			} else if place_5 == true {
				instance_create_layer(x+2,y+54,"effects",o_health_potion_100_inv);	
				place_5 = false;
			} else if place_6 == true {
				instance_create_layer(x+39,y+54,"effects",o_health_potion_100_inv);	
				place_6 = false;
			} else if place_7 == true {
				instance_create_layer(x+76,y+54,"effects",o_health_potion_100_inv);	
				place_7 = false;
			} else if place_8 == true {
				instance_create_layer(x+113,y+54,"effects",o_health_potion_100_inv);	
				place_8 = false;
			} else if place_9 == true {
				instance_create_layer(x-146,y+91,"effects",o_health_potion_100_inv);	
				place_9 = false;
			} else if place_10 == true {
				instance_create_layer(x-109,y+91,"effects",o_health_potion_100_inv);	
				place_10 = false;
			} else if place_11 == true {
				instance_create_layer(x-72,y+91,"effects",o_health_potion_100_inv);	
				place_11 = false;
			} else if place_12 == true {
				instance_create_layer(x-35,y+91,"effects",o_health_potion_100_inv);	
				place_12 = false;
			} else if place_13 == true {
				instance_create_layer(x+2,y+91,"effects",o_health_potion_100_inv);	
				place_13 = false;
			} else if place_14 == true {
				instance_create_layer(x+39,y+91,"effects",o_health_potion_100_inv);	
				place_14 = false;
			} else if place_15 == true {
				instance_create_layer(x+76,y+91,"effects",o_health_potion_100_inv);	
				place_15 = false; 
			} else if place_16 == true {
				instance_create_layer(x+113,y+91,"effects",o_health_potion_100_inv);	
				place_16 = false;
			}
	*/


	if o_rogue.health_potion_100 >= 1 {
		if place_1 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_health_potion_100_inv);
				place_1 = false;
				o_health_potion_100_inv.position = 1;
			}
		} else if place_2 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_health_potion_100_inv);
				place_2 = false;
				o_health_potion_100_inv.position = 2;
			}
		} else if place_3 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_health_potion_100_inv);
				place_3 = false;
				o_health_potion_100_inv.position = 3;
			}
		} else if place_4 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_health_potion_100_inv);
				place_4 = false;
				o_health_potion_100_inv.position = 4;
			}
		} else if place_5 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_health_potion_100_inv);
				place_5 = false;
				o_health_potion_100_inv.position = 5;
			}
		} else if place_6 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_health_potion_100_inv);
				place_6 = false;
				o_health_potion_100_inv.position = 6;
			}
		} else if place_7 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_health_potion_100_inv);
				place_7 = false;
				o_health_potion_100_inv.position = 7;
			}
		} else if place_8 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_health_potion_100_inv);
				place_8 = false;
				o_health_potion_100_inv.position = 8;
			}
		} else if place_9 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_health_potion_100_inv);
				place_9 = false;
				o_health_potion_100_inv.position = 9;
			}
		} else if place_10 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_health_potion_100_inv);
				place_10 = false;
				o_health_potion_100_inv.position = 10;
			}
		} else if place_11 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_health_potion_100_inv);
				place_11 = false;
				o_health_potion_100_inv.position = 11;
			}
		} else if place_12 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_health_potion_100_inv);
				place_12 = false;
				o_health_potion_100_inv.position = 12;
			}
		} else if place_13 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_health_potion_100_inv);
				place_13 = false;
				o_health_potion_100_inv.position = 13;
			}
		} else if place_14 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_health_potion_100_inv);
				place_14 = false;
				o_health_potion_100_inv.position = 14;
			}
		} else if place_15 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_health_potion_100_inv);
				place_15 = false;
				o_health_potion_100_inv.position = 15;
			}
		} else if place_16 == true {
			if !instance_exists(o_health_potion_100_inv){
				instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_health_potion_100_inv);
				place_16 = false;
				o_health_potion_100_inv.position = 16;
			}
		}
	} else if instance_exists(o_health_potion_100_inv){
		//bu kısım sayısı azalırsa bitsin diye var
		if o_health_potion_100_inv.position == 1 {
			place_1 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 2 {
	
			place_2 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 3 {
	
	
			place_3 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 4 {
	
			place_4 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 5 {
	
			place_5 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 6 {
	
			place_6 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 7 {
	
			place_7 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 8 {
	
			place_8 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 9 {
	
			place_9 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 10 {
	
			place_10 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 11 {
	
			place_11 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 12 {
	
			place_12 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 13 {
	
			place_13 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 14 {
	
			place_14 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 15 {
	
			place_15 = true;	
			instance_destroy(o_health_potion_100_inv);
		} else if o_health_potion_100_inv.position == 16 {
	
			place_16 = true;	
			instance_destroy(o_health_potion_100_inv);
		}
	}

	if o_rogue.mana_potion_50 >= 1 {
		if place_1 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_mana_potion_50_inv);
				place_1 = false;
				o_mana_potion_50_inv.position = 1;
			}
		} else if place_2 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_mana_potion_50_inv);
				place_2 = false;
				o_mana_potion_50_inv.position = 2;
			}
		} else if place_3 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_mana_potion_50_inv);
				place_3 = false;
				o_mana_potion_50_inv.position = 3;
			}
		} else if place_4 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_mana_potion_50_inv);
				place_4 = false;
				o_mana_potion_50_inv.position = 4;
			}
		} else if place_5 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_mana_potion_50_inv);
				place_5 = false;
				o_mana_potion_50_inv.position = 5;
			}
		} else if place_6 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_mana_potion_50_inv);
				place_6 = false;
				o_mana_potion_50_inv.position = 6;
			}
		} else if place_7 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_mana_potion_50_inv);
				place_7 = false;
				o_mana_potion_50_inv.position = 7;
			}
		} else if place_8 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_mana_potion_50_inv);
				place_8 = false;
				o_mana_potion_50_inv.position = 8;
			}
		} else if place_9 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_mana_potion_50_inv);
				place_9 = false;
				o_mana_potion_50_inv.position = 9;
			}
		} else if place_10 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_mana_potion_50_inv);
				place_10 = false;
				o_mana_potion_50_inv.position = 10;
			}
		} else if place_11 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_mana_potion_50_inv);
				place_11 = false;
				o_mana_potion_50_inv.position = 11;
			}
		} else if place_12 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_mana_potion_50_inv);
				place_12 = false;
				o_mana_potion_50_inv.position = 12;
			}
		} else if place_13 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_mana_potion_50_inv);
				place_13 = false;
				o_mana_potion_50_inv.position = 13;
			}
		} else if place_14 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_mana_potion_50_inv);
				place_14 = false;
				o_mana_potion_50_inv.position = 14;
			}
		} else if place_15 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_mana_potion_50_inv);
				place_15 = false;
				o_mana_potion_50_inv.position = 15;
			}
		} else if place_16 == true {
			if !instance_exists(o_mana_potion_50_inv){
				instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_mana_potion_50_inv);
				place_16 = false;
				o_mana_potion_50_inv.position = 16;
			}
		} 
	} else if instance_exists(o_mana_potion_50_inv){
		if o_mana_potion_50_inv.position == 1 {
			place_1 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 2 {
	
			place_2 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 3 {
	
	
			place_3 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 4 {
	
			place_4 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 5 {
	
			place_5 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 6 {
	
			place_6 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 7 {
	
			place_7 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 8 {
	
			place_8 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 9 {
	
			place_9 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 10 {
	
			place_10 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 11 {
	
			place_11 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 12 {
	
			place_12 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 13 {
	
			place_13 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 14 {
	
			place_14 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 15 {
	
			place_15 = true;	
			instance_destroy(o_mana_potion_50_inv);
		} else if o_mana_potion_50_inv.position == 16 {
	
			place_16 = true;	
			instance_destroy(o_mana_potion_50_inv);
		}
	}






	if o_rogue.pacavra_helmet = 1 {
		if place_1 == true {
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 1;
					global.pacavra_id_1 = noone;
				
					place_1 = false;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 1;
					global.pacavra_id_2 = noone;
				
					place_1 = false;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 1;
					global.pacavra_id_3 = noone;
				
					place_1 = false;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 1;
					global.pacavra_id_4 = noone;
				
					place_1 = false;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 1;
					global.pacavra_id_5 = noone;
				
					place_1 = false;
				}
			
			
		
		} else if place_2 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 2;
					global.pacavra_id_1 = noone;
				
					place_2 = false;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 2;
					global.pacavra_id_2 = noone;
				
					place_2 = false;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 2;
					global.pacavra_id_3 = noone;
				
					place_2 = false;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 2;
					global.pacavra_id_4 = noone;
				
					place_2 = false;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 2;
					global.pacavra_id_5 = noone;
				
					place_2 = false;
				}
			
			
		
		} else if place_3 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 3;
					global.pacavra_id_1 = noone;
					place_3 = false;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 3;
					global.pacavra_id_2 = noone;
					place_3 = false;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 3;
					global.pacavra_id_3 = noone;
					place_3 = false;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 3;
					global.pacavra_id_4 = noone;
					place_3 = false;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 3;
					global.pacavra_id_5 = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 4;
					global.pacavra_id_1 = noone;
					place_4 = false;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 4;
					global.pacavra_id_2 = noone;
					place_4 = false;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 4;
					global.pacavra_id_3 = noone;
					place_4 = false;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 4;
					global.pacavra_id_4 = noone;
					place_4 = false;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 4;
					global.pacavra_id_5 = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 5;
					global.pacavra_id_1 = noone;
					place_5 = false;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 5;
					global.pacavra_id_2 = noone;
					place_5 = false;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 5;
					global.pacavra_id_3 = noone;
					place_5 = false;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 5;
					global.pacavra_id_4 = noone;
					place_5 = false;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 5;
					global.pacavra_id_5 = noone;
					place_5 = false;
				}
			
			
			
		
		} else if place_6 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 6;
					global.pacavra_id_1 = noone;
					place_6 = false;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 6;
					global.pacavra_id_2 = noone;
					place_6 = false;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 6;
					global.pacavra_id_3 = noone;
					place_6 = false;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 6;
					global.pacavra_id_4 = noone;
					place_6 = false;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 6;
					global.pacavra_id_5 = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 7;
					global.pacavra_id_1 = noone;
					place_7 = false;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 7;
					global.pacavra_id_2 = noone;
					place_7 = false;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 7;
					global.pacavra_id_3 = noone;
					place_7 = false;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 7;
					global.pacavra_id_4 = noone;
					place_7 = false;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 7;
					global.pacavra_id_5 = noone;
					place_7 = false;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 8;
					place_8 = false;
					global.pacavra_id_1 = noone;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 8;
					global.pacavra_id_2 = noone;
					place_8 = false;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 8;
					global.pacavra_id_3 = noone;
					place_8 = false;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 8;
					global.pacavra_id_4 = noone;
					place_8 = false;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 8;
					global.pacavra_id_5 = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 9;
					place_9 = false;
					global.pacavra_id_1 = noone;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 9;
					place_9 = false;
					global.pacavra_id_2 = noone;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 9;
					place_9 = false;
					global.pacavra_id_3 = noone;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 9;
					place_9 = false;
					global.pacavra_id_4 = noone;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 9;
					place_9 = false;
					global.pacavra_id_5 = noone;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 10;
					place_10 = false;
					global.pacavra_id_1 = noone;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 10;
					place_10 = false;
					global.pacavra_id_2 = noone;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 10;
					place_10 = false;
					global.pacavra_id_3 = noone;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 10;
					place_10 = false;
					global.pacavra_id_4 = noone;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 10;
					place_10 = false;
					global.pacavra_id_5 = noone;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 11;
					place_11 = false;
					global.pacavra_id_1 = noone;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 11;
					place_11 = false;
					global.pacavra_id_2 = noone;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 11;
					place_11 = false;
					global.pacavra_id_3 = noone;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 11;
					place_11 = false;
					global.pacavra_id_4 = noone;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 11;
					place_11 = false;
					global.pacavra_id_5 = noone;
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 12;
					place_12 = false;
					global.pacavra_id_1 = noone;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 12;
					global.pacavra_id_2 = noone;
					place_12 = false;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 12;
					place_12 = false;
					global.pacavra_id_3 = noone;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 12;
					place_12 = false;
					global.pacavra_id_4 = noone;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 12;
					place_12 = false;
					global.pacavra_id_5 = noone;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 13;
					place_13 = false;
					global.pacavra_id_1 = noone;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 13;
					place_13 = false;
					global.pacavra_id_2 = noone;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 13;
					place_13 = false;
					global.pacavra_id_3 = noone;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 13;
					place_13 = false;
					global.pacavra_id_4 = noone;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 13;
					place_13 = false;
					global.pacavra_id_5 = noone;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 14;
					place_14 = false;
					global.pacavra_id_1 = noone;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 14;
					place_14 = false;
					global.pacavra_id_2 = noone;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 14;
					place_14 = false;
					global.pacavra_id_3 = noone;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 14;
					place_14 = false;
					global.pacavra_id_4 = noone;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 14;
					place_14 = false;
					global.pacavra_id_5 = noone;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 15;
					place_15 = false;
					global.pacavra_id_1 = noone;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 15;
					place_15 = false;
					global.pacavra_id_2 = noone;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 15;
					place_15 = false;
					global.pacavra_id_3 = noone;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 15;
					place_15 = false;
					global.pacavra_id_4 = noone;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 15;
					place_15 = false;
					global.pacavra_id_5 = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.pacavra_id_1 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_helmet_inv);
					o_rogue_pacavra_helmet_inv.position = 16;
					place_16 = false;
					global.pacavra_id_1 = noone;
				} else if global.pacavra_id_2 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_helmet_inv2);
					o_rogue_pacavra_helmet_inv2.position = 16;
					place_16 = false;
					global.pacavra_id_2 = noone;
				} else if global.pacavra_id_3 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_helmet_inv3);
					o_rogue_pacavra_helmet_inv3.position = 16;
					place_16 = false;
					global.pacavra_id_3 = noone;
				} else if global.pacavra_id_4 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_helmet_inv4);
					o_rogue_pacavra_helmet_inv4.position = 16;
					place_16 = false;
					global.pacavra_id_4 = noone;
				} else if global.pacavra_id_5 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_helmet_inv5);
					o_rogue_pacavra_helmet_inv5.position = 16;
					place_16 = false;
					global.pacavra_id_5 = noone;
				}
			
			
			
		
		} 
	} 






	if o_rogue.pacavra_helmet = 2 {
		if place_1 == true {
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 1;
					global.leather_id_1 = noone;
				
					place_1 = false;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 1;
					global.leather_id_2 = noone;
				
					place_1 = false;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 1;
					global.leather_id_3 = noone;
				
					place_1 = false;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 1;
					global.leather_id_4 = noone;
				
					place_1 = false;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 1;
					global.leather_id_5 = noone;
				
					place_1 = false;
				}
			
			
		
		} else if place_2 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 2;
					global.leather_id_1 = noone;
				
					place_2 = false;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 2;
					global.leather_id_2 = noone;
				
					place_2 = false;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 2;
					global.leather_id_3 = noone;
				
					place_2 = false;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 2;
					global.leather_id_4 = noone;
				
					place_2 = false;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 2;
					global.leather_id_5 = noone;
				
					place_2 = false;
				}
			
			
		
		} else if place_3 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 3;
					global.leather_id_1 = noone;
					place_3 = false;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 3;
					global.leather_id_2 = noone;
					place_3 = false;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 3;
					global.leather_id_3 = noone;
					place_3 = false;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 3;
					global.leather_id_4 = noone;
					place_3 = false;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 3;
					global.leather_id_5 = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 4;
					global.leather_id_1 = noone;
					place_4 = false;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 4;
					global.leather_id_2 = noone;
					place_4 = false;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 4;
					global.leather_id_3 = noone;
					place_4 = false;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 4;
					global.leather_id_4 = noone;
					place_4 = false;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 4;
					global.leather_id_5 = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 5;
					global.leather_id_1 = noone;
					place_5 = false;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 5;
					global.leather_id_2 = noone;
					place_5 = false;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 5;
					global.leather_id_3 = noone;
					place_5 = false;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 5;
					global.leather_id_4 = noone;
					place_5 = false;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 5;
					global.leather_id_5 = noone;
					place_5 = false;
				}
			
			
			
		
		} else if place_6 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 6;
					global.leather_id_1 = noone;
					place_6 = false;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 6;
					global.leather_id_2 = noone;
					place_6 = false;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 6;
					global.leather_id_3 = noone;
					place_6 = false;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 6;
					global.leather_id_4 = noone;
					place_6 = false;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 6;
					global.leather_id_5 = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 7;
					global.leather_id_1 = noone;
					place_7 = false;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 7;
					global.leather_id_2 = noone;
					place_7 = false;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 7;
					global.leather_id_3 = noone;
					place_7 = false;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 7;
					global.leather_id_4 = noone;
					place_7 = false;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 7;
					global.leather_id_5 = noone;
					place_7 = false;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 8;
					place_8 = false;
					global.leather_id_1 = noone;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 8;
					global.leather_id_2 = noone;
					place_8 = false;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 8;
					global.leather_id_3 = noone;
					place_8 = false;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 8;
					global.leather_id_4 = noone;
					place_8 = false;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 8;
					global.leather_id_5 = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 9;
					place_9 = false;
					global.leather_id_1 = noone;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 9;
					place_9 = false;
					global.leather_id_2 = noone;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 9;
					place_9 = false;
					global.leather_id_3 = noone;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 9;
					place_9 = false;
					global.leather_id_4 = noone;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 9;
					place_9 = false;
					global.leather_id_5 = noone;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 10;
					place_10 = false;
					global.leather_id_1 = noone;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 10;
					place_10 = false;
					global.leather_id_2 = noone;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 10;
					place_10 = false;
					global.leather_id_3 = noone;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 10;
					place_10 = false;
					global.leather_id_4 = noone;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 10;
					place_10 = false;
					global.leather_id_5 = noone;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 11;
					place_11 = false;
					global.leather_id_1 = noone;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 11;
					place_11 = false;
					global.leather_id_2 = noone;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 11;
					place_11 = false;
					global.leather_id_3 = noone;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 11;
					place_11 = false;
					global.leather_id_4 = noone;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 11;
					place_11 = false;
					global.leather_id_5 = noone;
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 12;
					place_12 = false;
					global.leather_id_1 = noone;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 12;
					global.leather_id_2 = noone;
					place_12 = false;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 12;
					place_12 = false;
					global.leather_id_3 = noone;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 12;
					place_12 = false;
					global.leather_id_4 = noone;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 12;
					place_12 = false;
					global.leather_id_5 = noone;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 13;
					place_13 = false;
					global.leather_id_1 = noone;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 13;
					place_13 = false;
					global.leather_id_2 = noone;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 13;
					place_13 = false;
					global.leather_id_3 = noone;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 13;
					place_13 = false;
					global.leather_id_4 = noone;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 13;
					place_13 = false;
					global.leather_id_5 = noone;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 14;
					place_14 = false;
					global.leather_id_1 = noone;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 14;
					place_14 = false;
					global.leather_id_2 = noone;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 14;
					place_14 = false;
					global.leather_id_3 = noone;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 14;
					place_14 = false;
					global.leather_id_4 = noone;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 14;
					place_14 = false;
					global.leather_id_5 = noone;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 15;
					place_15 = false;
					global.leather_id_1 = noone;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 15;
					place_15 = false;
					global.leather_id_2 = noone;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 15;
					place_15 = false;
					global.leather_id_3 = noone;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 15;
					place_15 = false;
					global.leather_id_4 = noone;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 15;
					place_15 = false;
					global.leather_id_5 = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.leather_id_1 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_helmet_inv);
					o_rogue_leather_helmet_inv.position = 16;
					place_16 = false;
					global.leather_id_1 = noone;
				} else if global.leather_id_2 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_helmet_inv2);
					o_rogue_leather_helmet_inv2.position = 16;
					place_16 = false;
					global.leather_id_2 = noone;
				} else if global.leather_id_3 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_helmet_inv3);
					o_rogue_leather_helmet_inv3.position = 16;
					place_16 = false;
					global.leather_id_3 = noone;
				} else if global.leather_id_4 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_helmet_inv4);
					o_rogue_leather_helmet_inv4.position = 16;
					place_16 = false;
					global.leather_id_4 = noone;
				} else if global.leather_id_5 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_helmet_inv5);
					o_rogue_leather_helmet_inv5.position = 16;
					place_16 = false;
					global.leather_id_5 = noone;
				}
		} 
	} 






	if o_rogue.pacavra_torso = 1 {
		if place_1 == true {
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 1;
					place_1 = false;
					global.pacavra_id_1_chest = noone;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 1;
					place_1 = false;
					global.pacavra_id_2_chest = noone;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 1;
					place_1 = false;
					global.pacavra_id_3_chest = noone;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 1;
					place_1 = false;
					global.pacavra_id_4_chest = noone;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 1;
					place_1 = false;
					global.pacavra_id_5_chest = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 2;
					global.pacavra_id_1_chest = noone;
					place_2 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 2;
					place_2 = false;
					global.pacavra_id_2_chest = noone;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 2;
					place_2 = false;
					global.pacavra_id_3_chest = noone;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 2;
					global.pacavra_id_4_chest = noone;
					place_2 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 2;
					global.pacavra_id_5_chest = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 3;
					global.pacavra_id_1_chest = noone;
					place_3 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 3;
					global.pacavra_id_2_chest = noone;
					place_3 = false;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 3;
					global.pacavra_id_3_chest = noone;
					place_3 = false;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 3;
					global.pacavra_id_4_chest = noone;
					place_3 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 3;
					global.pacavra_id_5_chest = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 4;
					global.pacavra_id_1_chest = noone;
					place_4 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 4;
					place_4 = false;
					global.pacavra_id_2_chest = noone;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 4;
					place_4 = false;
					global.pacavra_id_3_chest = noone;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 4;
					global.pacavra_id_4_chest = noone;
					place_4 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 4;
					global.pacavra_id_5_chest = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 5;
					place_5 = false;
					global.pacavra_id_1_chest = noone;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 5;
					place_5 = false;
					global.pacavra_id_2_chest = noone;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 5;
					place_5 = false;
					global.pacavra_id_3_chest = noone;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 5;
					place_5 = false;
					global.pacavra_id_4_chest = noone;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 5;
					global.pacavra_id_5_chest = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 6;
					global.pacavra_id_1_chest = noone;
					place_6 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 6;
					global.pacavra_id_2_chest = noone;
					place_6 = false;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 6;
					global.pacavra_id_3_chest = noone;
					place_6 = false;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 6;
					global.pacavra_id_4_chest = noone;
					place_6 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 6;
					global.pacavra_id_5_chest = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 7;
					place_7 = false;
					global.pacavra_id_1_chest = noone;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 7;
					place_7 = false;
					global.pacavra_id_2_chest = noone;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 7;
					place_7 = false;
					global.pacavra_id_3_chest = noone;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 7;
					place_7 = false;
					global.pacavra_id_4_chest = noone;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 7;
					place_7 = false;
					global.pacavra_id_5_chest = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 8;
					global.pacavra_id_1_chest = noone;
					place_8 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 8;
					global.pacavra_id_2_chest = noone;
					place_8 = false;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 8;
					global.pacavra_id_3_chest = noone;
					place_8 = false;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 8;
					global.pacavra_id_4_chest = noone;
					place_8 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 8;
					global.pacavra_id_5_chest = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 9;
					global.pacavra_id_1_chest = noone;
					place_9 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 9;
					global.pacavra_id_2_chest = noone;
					place_9 = false;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 9;
					global.pacavra_id_3_chest = noone;
					place_9 = false;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 9;
					global.pacavra_id_4_chest = noone;
					place_9 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 9;
					global.pacavra_id_5_chest = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 10;
					global.pacavra_id_1_chest = noone;
					place_10 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 10;
					global.pacavra_id_2_chest = noone;
					place_10 = false;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 10;
					global.pacavra_id_3_chest = noone;
					place_10 = false;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 10;
					global.pacavra_id_4_chest = noone;
					place_10 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 10;
					global.pacavra_id_5_chest = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 11;
					global.pacavra_id_1_chest = noone;
					place_11 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 11;
					global.pacavra_id_2_chest = noone;
					place_11 = false;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 11;
					global.pacavra_id_3_chest = noone;
					place_11 = false;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 11;
					global.pacavra_id_4_chest = noone;
					place_11 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 11;
					global.pacavra_id_5_chest = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 12;
					global.pacavra_id_1_chest = noone;
					place_12 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 12;
					global.pacavra_id_2_chest = noone;
					place_12 = false;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 12;
					global.pacavra_id_3_chest = noone;
					place_12 = false;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 12;
					global.pacavra_id_4_chest = noone;
					place_12 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 12;
					global.pacavra_id_5_chest = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 13;
					place_13 = false;
					global.pacavra_id_1_chest = noone;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 13;
					place_13 = false;
					global.pacavra_id_2_chest = noone;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 13;
					place_13 = false;
					global.pacavra_id_3_chest = noone;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 13;
					place_13 = false;
					global.pacavra_id_4_chest = noone;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 13;
					global.pacavra_id_5_chest = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 14;
					global.pacavra_id_1_chest = noone;
					place_14 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 14;
					global.pacavra_id_2_chest = noone;
					place_14 = false;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 14;
					global.pacavra_id_3_chest = noone;
					place_14 = false;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 14;
					global.pacavra_id_4_chest = noone;
					place_14 = false;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 14;
					global.pacavra_id_5_chest = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 15;
					place_15 = false;
					global.pacavra_id_1_chest = noone;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 15;
					place_15 = false;
					global.pacavra_id_2_chest = noone;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 15;
					place_15 = false;
					global.pacavra_id_3_chest = noone;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 15;
					place_15 = false;
					global.pacavra_id_4_chest = noone;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 15;
					place_15 = false;
					global.pacavra_id_5_chest = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.pacavra_id_1_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_chest_inv);
					o_rogue_pacavra_chest_inv.position = 16;
					global.pacavra_id_1_chest = noone;
					place_16 = false;
				} else if global.pacavra_id_2_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_chest_inv2);
					o_rogue_pacavra_chest_inv2.position = 16;
					global.pacavra_id_2_chest = noone;
					place_16 = false;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_chest_inv3);
					o_rogue_pacavra_chest_inv3.position = 16;
					global.pacavra_id_3_chest = noone;
					place_16 = false;
				} else if global.pacavra_id_4_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_chest_inv4);
					o_rogue_pacavra_chest_inv4.position = 16;
					place_16 = false;
					global.pacavra_id_4_chest = noone;
				} else if global.pacavra_id_5_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_chest_inv5);
					o_rogue_pacavra_chest_inv5.position = 16;
					global.pacavra_id_5_chest = noone;
					place_16 = false;
				}
			
			
			
		
		} 
	} 




	if o_rogue.pacavra_pants >= 1 {
		if place_1 == true {
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 1;
					place_1 = false;
					global.pacavra_id_1_pants = noone;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 1;
					place_1 = false;
					global.pacavra_id_2_pants = noone;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 1;
					place_1 = false;
					global.pacavra_id_3_pants = noone;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 1;
					place_1 = false;
					global.pacavra_id_4_pants = noone;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 1;
					place_1 = false;
					global.pacavra_id_5_pants = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 2;
					global.pacavra_id_1_pants = noone;
					place_2 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 2;
					place_2 = false;
					global.pacavra_id_2_pants = noone;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 2;
					place_2 = false;
					global.pacavra_id_3_pants = noone;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 2;
					global.pacavra_id_4_pants = noone;
					place_2 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 2;
					global.pacavra_id_5_pants = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 3;
					global.pacavra_id_1_pants = noone;
					place_3 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 3;
					global.pacavra_id_2_pants = noone;
					place_3 = false;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 3;
					global.pacavra_id_3_pants = noone;
					place_3 = false;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 3;
					global.pacavra_id_4_pants = noone;
					place_3 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 3;
					global.pacavra_id_5_pants = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 4;
					global.pacavra_id_1_pants = noone;
					place_4 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 4;
					place_4 = false;
					global.pacavra_id_2_pants = noone;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 4;
					place_4 = false;
					global.pacavra_id_3_pants = noone;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 4;
					global.pacavra_id_4_pants = noone;
					place_4 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 4;
					global.pacavra_id_5_pants = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 5;
					place_5 = false;
					global.pacavra_id_1_pants = noone;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 5;
					place_5 = false;
					global.pacavra_id_2_pants = noone;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 5;
					place_5 = false;
					global.pacavra_id_3_pants = noone;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 5;
					place_5 = false;
					global.pacavra_id_4_pants = noone;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 5;
					global.pacavra_id_5_pants = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 6;
					global.pacavra_id_1_pants = noone;
					place_6 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 6;
					global.pacavra_id_2_pants = noone;
					place_6 = false;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 6;
					global.pacavra_id_3_pants = noone;
					place_6 = false;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 6;
					global.pacavra_id_4_pants = noone;
					place_6 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 6;
					global.pacavra_id_5_pants = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 7;
					place_7 = false;
					global.pacavra_id_1_pants = noone;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 7;
					place_7 = false;
					global.pacavra_id_2_pants = noone;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 7;
					place_7 = false;
					global.pacavra_id_3_pants = noone;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 7;
					place_7 = false;
					global.pacavra_id_4_pants = noone;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 7;
					place_7 = false;
					global.pacavra_id_5_pants = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 8;
					global.pacavra_id_1_pants = noone;
					place_8 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 8;
					global.pacavra_id_2_pants = noone;
					place_8 = false;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 8;
					global.pacavra_id_3_pants = noone;
					place_8 = false;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 8;
					global.pacavra_id_4_pants = noone;
					place_8 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 8;
					global.pacavra_id_5_pants = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 9;
					global.pacavra_id_1_pants = noone;
					place_9 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 9;
					global.pacavra_id_2_pants = noone;
					place_9 = false;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 9;
					global.pacavra_id_3_pants = noone;
					place_9 = false;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 9;
					global.pacavra_id_4_pants = noone;
					place_9 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 9;
					global.pacavra_id_5_pants = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 10;
					global.pacavra_id_1_pants = noone;
					place_10 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 10;
					global.pacavra_id_2_pants = noone;
					place_10 = false;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 10;
					global.pacavra_id_3_pants = noone;
					place_10 = false;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 10;
					global.pacavra_id_4_pants = noone;
					place_10 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 10;
					global.pacavra_id_5_pants = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 11;
					global.pacavra_id_1_pants = noone;
					place_11 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 11;
					global.pacavra_id_2_pants = noone;
					place_11 = false;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 11;
					global.pacavra_id_3_pants = noone;
					place_11 = false;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 11;
					global.pacavra_id_4_pants = noone;
					place_11 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 11;
					global.pacavra_id_5_pants = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 12;
					global.pacavra_id_1_pants = noone;
					place_12 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 12;
					global.pacavra_id_2_pants = noone;
					place_12 = false;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 12;
					global.pacavra_id_3_pants = noone;
					place_12 = false;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 12;
					global.pacavra_id_4_pants = noone;
					place_12 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 12;
					global.pacavra_id_5_pants = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 13;
					place_13 = false;
					global.pacavra_id_1_pants = noone;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 13;
					place_13 = false;
					global.pacavra_id_2_pants = noone;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 13;
					place_13 = false;
					global.pacavra_id_3_pants = noone;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 13;
					place_13 = false;
					global.pacavra_id_4_pants = noone;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 13;
					global.pacavra_id_5_pants = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 14;
					global.pacavra_id_1_pants = noone;
					place_14 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 14;
					global.pacavra_id_2_pants = noone;
					place_14 = false;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 14;
					global.pacavra_id_3_pants = noone;
					place_14 = false;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 14;
					global.pacavra_id_4_pants = noone;
					place_14 = false;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 14;
					global.pacavra_id_5_pants = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 15;
					place_15 = false;
					global.pacavra_id_1_pants = noone;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 15;
					place_15 = false;
					global.pacavra_id_2_pants = noone;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 15;
					place_15 = false;
					global.pacavra_id_3_pants = noone;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 15;
					place_15 = false;
					global.pacavra_id_4_pants = noone;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 15;
					place_15 = false;
					global.pacavra_id_5_pants = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.pacavra_id_1_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_pants_inv);
					o_rogue_pacavra_pants_inv.position = 16;
					global.pacavra_id_1_pants = noone;
					place_16 = false;
				} else if global.pacavra_id_2_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_pants_inv2);
					o_rogue_pacavra_pants_inv2.position = 16;
					global.pacavra_id_2_pants = noone;
					place_16 = false;
				} else if global.pacavra_id_3_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_pants_inv3);
					o_rogue_pacavra_pants_inv3.position = 16;
					global.pacavra_id_3_pants = noone;
					place_16 = false;
				} else if global.pacavra_id_4_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_pants_inv4);
					o_rogue_pacavra_pants_inv4.position = 16;
					place_16 = false;
					global.pacavra_id_4_pants = noone;
				} else if global.pacavra_id_5_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_pants_inv5);
					o_rogue_pacavra_pants_inv5.position = 16;
					global.pacavra_id_5_pants = noone;
					place_16 = false;
				}
			
			
			
		
		} 
	} 






	if o_rogue.pacavra_boots >= 1 {
		if place_1 == true {
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 1;
					place_1 = false;
					global.pacavra_id_1_boots = noone;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 1;
					place_1 = false;
					global.pacavra_id_2_boots = noone;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 1;
					place_1 = false;
					global.pacavra_id_3_boots = noone;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 1;
					place_1 = false;
					global.pacavra_id_4_boots = noone;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 1;
					place_1 = false;
					global.pacavra_id_5_boots = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 2;
					global.pacavra_id_1_boots = noone;
					place_2 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 2;
					place_2 = false;
					global.pacavra_id_2_boots = noone;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 2;
					place_2 = false;
					global.pacavra_id_3_boots = noone;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 2;
					global.pacavra_id_4_boots = noone;
					place_2 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 2;
					global.pacavra_id_5_boots = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 3;
					global.pacavra_id_1_boots = noone;
					place_3 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 3;
					global.pacavra_id_2_boots = noone;
					place_3 = false;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 3;
					global.pacavra_id_3_boots = noone;
					place_3 = false;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 3;
					global.pacavra_id_4_boots = noone;
					place_3 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 3;
					global.pacavra_id_5_boots = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 4;
					global.pacavra_id_1_boots = noone;
					place_4 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 4;
					place_4 = false;
					global.pacavra_id_2_boots = noone;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 4;
					place_4 = false;
					global.pacavra_id_3_boots = noone;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 4;
					global.pacavra_id_4_boots = noone;
					place_4 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 4;
					global.pacavra_id_5_boots = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 5;
					place_5 = false;
					global.pacavra_id_1_boots = noone;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 5;
					place_5 = false;
					global.pacavra_id_2_boots = noone;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 5;
					place_5 = false;
					global.pacavra_id_3_boots = noone;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 5;
					place_5 = false;
					global.pacavra_id_4_boots = noone;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 5;
					global.pacavra_id_5_boots = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 6;
					global.pacavra_id_1_boots = noone;
					place_6 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 6;
					global.pacavra_id_2_boots = noone;
					place_6 = false;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 6;
					global.pacavra_id_3_boots = noone;
					place_6 = false;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 6;
					global.pacavra_id_4_boots = noone;
					place_6 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 6;
					global.pacavra_id_5_boots = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 7;
					place_7 = false;
					global.pacavra_id_1_boots = noone;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 7;
					place_7 = false;
					global.pacavra_id_2_boots = noone;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 7;
					place_7 = false;
					global.pacavra_id_3_boots = noone;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 7;
					place_7 = false;
					global.pacavra_id_4_boots = noone;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 7;
					place_7 = false;
					global.pacavra_id_5_boots = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 8;
					global.pacavra_id_1_boots = noone;
					place_8 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 8;
					global.pacavra_id_2_boots = noone;
					place_8 = false;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 8;
					global.pacavra_id_3_boots = noone;
					place_8 = false;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 8;
					global.pacavra_id_4_boots = noone;
					place_8 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 8;
					global.pacavra_id_5_boots = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 9;
					global.pacavra_id_1_boots = noone;
					place_9 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 9;
					global.pacavra_id_2_boots = noone;
					place_9 = false;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 9;
					global.pacavra_id_3_boots = noone;
					place_9 = false;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 9;
					global.pacavra_id_4_boots = noone;
					place_9 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 9;
					global.pacavra_id_5_boots = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 10;
					global.pacavra_id_1_boots = noone;
					place_10 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 10;
					global.pacavra_id_2_boots = noone;
					place_10 = false;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 10;
					global.pacavra_id_3_boots = noone;
					place_10 = false;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 10;
					global.pacavra_id_4_boots = noone;
					place_10 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 10;
					global.pacavra_id_5_boots = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 11;
					global.pacavra_id_1_boots = noone;
					place_11 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 11;
					global.pacavra_id_2_boots = noone;
					place_11 = false;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 11;
					global.pacavra_id_3_boots = noone;
					place_11 = false;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 11;
					global.pacavra_id_4_boots = noone;
					place_11 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 11;
					global.pacavra_id_5_boots = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 12;
					global.pacavra_id_1_boots = noone;
					place_12 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 12;
					global.pacavra_id_2_boots = noone;
					place_12 = false;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 12;
					global.pacavra_id_3_boots = noone;
					place_12 = false;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 12;
					global.pacavra_id_4_boots = noone;
					place_12 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 12;
					global.pacavra_id_5_boots = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 13;
					place_13 = false;
					global.pacavra_id_1_boots = noone;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 13;
					place_13 = false;
					global.pacavra_id_2_boots = noone;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 13;
					place_13 = false;
					global.pacavra_id_3_boots = noone;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 13;
					place_13 = false;
					global.pacavra_id_4_boots = noone;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 13;
					global.pacavra_id_5_boots = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 14;
					global.pacavra_id_1_boots = noone;
					place_14 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 14;
					global.pacavra_id_2_boots = noone;
					place_14 = false;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 14;
					global.pacavra_id_3_boots = noone;
					place_14 = false;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 14;
					global.pacavra_id_4_boots = noone;
					place_14 = false;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 14;
					global.pacavra_id_5_boots = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 15;
					place_15 = false;
					global.pacavra_id_1_boots = noone;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 15;
					place_15 = false;
					global.pacavra_id_2_boots = noone;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 15;
					place_15 = false;
					global.pacavra_id_3_boots = noone;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 15;
					place_15 = false;
					global.pacavra_id_4_boots = noone;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 15;
					place_15 = false;
					global.pacavra_id_5_boots = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.pacavra_id_1_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_boots_inv);
					o_rogue_pacavra_boots_inv.position = 16;
					global.pacavra_id_1_boots = noone;
					place_16 = false;
				} else if global.pacavra_id_2_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_boots_inv2);
					o_rogue_pacavra_boots_inv2.position = 16;
					global.pacavra_id_2_boots = noone;
					place_16 = false;
				} else if global.pacavra_id_3_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_boots_inv3);
					o_rogue_pacavra_boots_inv3.position = 16;
					global.pacavra_id_3_boots = noone;
					place_16 = false;
				} else if global.pacavra_id_4_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_boots_inv4);
					o_rogue_pacavra_boots_inv4.position = 16;
					place_16 = false;
					global.pacavra_id_4_boots = noone;
				} else if global.pacavra_id_5_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_boots_inv5);
					o_rogue_pacavra_boots_inv5.position = 16;
					global.pacavra_id_5_boots = noone;
					place_16 = false;
				}
				
		
		} 
	} 




	if o_rogue.pacavra_gloves = 1 {
		if place_1 == true {
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 1;
					place_1 = false;
					global.pacavra_id_1_gloves = noone;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 1;
					place_1 = false;
					global.pacavra_id_2_gloves = noone;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 1;
					place_1 = false;
					global.pacavra_id_3_gloves = noone;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 1;
					place_1 = false;
					global.pacavra_id_4_gloves = noone;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 1;
					place_1 = false;
					global.pacavra_id_5_gloves = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 2;
					global.pacavra_id_1_gloves = noone;
					place_2 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 2;
					place_2 = false;
					global.pacavra_id_2_gloves = noone;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 2;
					place_2 = false;
					global.pacavra_id_3_gloves = noone;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 2;
					global.pacavra_id_4_gloves = noone;
					place_2 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 2;
					global.pacavra_id_5_gloves = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 3;
					global.pacavra_id_1_gloves = noone;
					place_3 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 3;
					global.pacavra_id_2_gloves = noone;
					place_3 = false;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 3;
					global.pacavra_id_3_gloves = noone;
					place_3 = false;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 3;
					global.pacavra_id_4_gloves = noone;
					place_3 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 3;
					global.pacavra_id_5_gloves = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 4;
					global.pacavra_id_1_gloves = noone;
					place_4 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 4;
					place_4 = false;
					global.pacavra_id_2_gloves = noone;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 4;
					place_4 = false;
					global.pacavra_id_3_gloves = noone;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 4;
					global.pacavra_id_4_gloves = noone;
					place_4 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 4;
					global.pacavra_id_5_gloves = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 5;
					place_5 = false;
					global.pacavra_id_1_gloves = noone;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 5;
					place_5 = false;
					global.pacavra_id_2_gloves = noone;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 5;
					place_5 = false;
					global.pacavra_id_3_gloves = noone;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 5;
					place_5 = false;
					global.pacavra_id_4_gloves = noone;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 5;
					global.pacavra_id_5_gloves = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 6;
					global.pacavra_id_1_gloves = noone;
					place_6 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 6;
					global.pacavra_id_2_gloves = noone;
					place_6 = false;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 6;
					global.pacavra_id_3_gloves = noone;
					place_6 = false;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 6;
					global.pacavra_id_4_gloves = noone;
					place_6 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 6;
					global.pacavra_id_5_gloves = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 7;
					place_7 = false;
					global.pacavra_id_1_gloves = noone;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 7;
					place_7 = false;
					global.pacavra_id_2_gloves = noone;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 7;
					place_7 = false;
					global.pacavra_id_3_gloves = noone;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 7;
					place_7 = false;
					global.pacavra_id_4_gloves = noone;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 7;
					place_7 = false;
					global.pacavra_id_5_gloves = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 8;
					global.pacavra_id_1_gloves = noone;
					place_8 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 8;
					global.pacavra_id_2_gloves = noone;
					place_8 = false;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 8;
					global.pacavra_id_3_gloves = noone;
					place_8 = false;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 8;
					global.pacavra_id_4_gloves = noone;
					place_8 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 8;
					global.pacavra_id_5_gloves = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 9;
					global.pacavra_id_1_gloves = noone;
					place_9 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 9;
					global.pacavra_id_2_gloves = noone;
					place_9 = false;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 9;
					global.pacavra_id_3_gloves = noone;
					place_9 = false;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 9;
					global.pacavra_id_4_gloves = noone;
					place_9 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 9;
					global.pacavra_id_5_gloves = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 10;
					global.pacavra_id_1_gloves = noone;
					place_10 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 10;
					global.pacavra_id_2_gloves = noone;
					place_10 = false;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 10;
					global.pacavra_id_3_gloves = noone;
					place_10 = false;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 10;
					global.pacavra_id_4_gloves = noone;
					place_10 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 10;
					global.pacavra_id_5_gloves = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 11;
					global.pacavra_id_1_gloves = noone;
					place_11 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 11;
					global.pacavra_id_2_gloves = noone;
					place_11 = false;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 11;
					global.pacavra_id_3_gloves = noone;
					place_11 = false;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 11;
					global.pacavra_id_4_gloves = noone;
					place_11 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 11;
					global.pacavra_id_5_gloves = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 12;
					global.pacavra_id_1_gloves = noone;
					place_12 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 12;
					global.pacavra_id_2_gloves = noone;
					place_12 = false;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 12;
					global.pacavra_id_3_gloves = noone;
					place_12 = false;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 12;
					global.pacavra_id_4_gloves = noone;
					place_12 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 12;
					global.pacavra_id_5_gloves = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 13;
					place_13 = false;
					global.pacavra_id_1_gloves = noone;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 13;
					place_13 = false;
					global.pacavra_id_2_gloves = noone;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 13;
					place_13 = false;
					global.pacavra_id_3_gloves = noone;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 13;
					place_13 = false;
					global.pacavra_id_4_gloves = noone;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 13;
					global.pacavra_id_5_gloves = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 14;
					global.pacavra_id_1_gloves = noone;
					place_14 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 14;
					global.pacavra_id_2_gloves = noone;
					place_14 = false;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 14;
					global.pacavra_id_3_gloves = noone;
					place_14 = false;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 14;
					global.pacavra_id_4_gloves = noone;
					place_14 = false;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 14;
					global.pacavra_id_5_gloves = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 15;
					place_15 = false;
					global.pacavra_id_1_gloves = noone;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 15;
					place_15 = false;
					global.pacavra_id_2_gloves = noone;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 15;
					place_15 = false;
					global.pacavra_id_3_gloves = noone;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 15;
					place_15 = false;
					global.pacavra_id_4_gloves = noone;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 15;
					place_15 = false;
					global.pacavra_id_5_gloves = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.pacavra_id_1_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_gloves_inv);
					o_rogue_pacavra_gloves_inv.position = 16;
					global.pacavra_id_1_gloves = noone;
					place_16 = false;
				} else if global.pacavra_id_2_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_gloves_inv2);
					o_rogue_pacavra_gloves_inv2.position = 16;
					global.pacavra_id_2_gloves = noone;
					place_16 = false;
				} else if global.pacavra_id_3_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_gloves_inv3);
					o_rogue_pacavra_gloves_inv3.position = 16;
					global.pacavra_id_3_gloves = noone;
					place_16 = false;
				} else if global.pacavra_id_4_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_gloves_inv4);
					o_rogue_pacavra_gloves_inv4.position = 16;
					place_16 = false;
					global.pacavra_id_4_gloves = noone;
				} else if global.pacavra_id_5_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_pacavra_gloves_inv5);
					o_rogue_pacavra_gloves_inv5.position = 16;
					global.pacavra_id_5_gloves = noone;
					place_16 = false;
				}
			
			
			
		
		} 
	} 








	if o_rogue.ring_serpent >= 1 {
		if place_1 == true {
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 1;
					global.ring_serpent_id_1 = noone;
					place_1 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 1;
					place_1 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 1;
					global.ring_serpent_id_3 = noone;
					place_1 = false;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 2;
					global.ring_serpent_id_1 = noone;
					place_2 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 2;
					place_2 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 2;
					global.ring_serpent_id_3 = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 3;
					global.ring_serpent_id_1 = noone;
					place_3 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 3;
					place_3 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 3;
					global.ring_serpent_id_3 = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 4;
					global.ring_serpent_id_1 = noone;
					place_4 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 4;
					place_4 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 4;
					global.ring_serpent_id_3 = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 5;
					global.ring_serpent_id_1 = noone;
					place_5 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 5;
					place_5 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 5;
					global.ring_serpent_id_3 = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 6;
					global.ring_serpent_id_1 = noone;
					place_6 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 6;
					place_6 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 6;
					global.ring_serpent_id_3 = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 7;
					global.ring_serpent_id_1 = noone;
					place_7 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 7;
					place_7 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 7;
					global.ring_serpent_id_3 = noone;
					place_7 = false;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 8;
					global.ring_serpent_id_1 = noone;
					place_8 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 8;
					place_8 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 8;
					global.ring_serpent_id_3 = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 9;
					global.ring_serpent_id_1 = noone;
					place_9 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 9;
					place_9 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 9;
					global.ring_serpent_id_3 = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 10;
					global.ring_serpent_id_1 = noone;
					place_10 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 10;
					place_10 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 10;
					global.ring_serpent_id_3 = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 11;
					global.ring_serpent_id_1 = noone;
					place_11 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 11;
					place_11 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 11;
					global.ring_serpent_id_3 = noone;
					place_11 = false;
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 12;
					global.ring_serpent_id_1 = noone;
					place_12 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 12;
					place_12 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 12;
					global.ring_serpent_id_3 = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 13;
					global.ring_serpent_id_1 = noone;
					place_13 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 13;
					place_13 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 13;
					global.ring_serpent_id_3 = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 14;
					global.ring_serpent_id_1 = noone;
					place_14 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 14;
					place_14 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 14;
					global.ring_serpent_id_3 = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 15;
					global.ring_serpent_id_1 = noone;
					place_15 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 15;
					place_15 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 15;
					global.ring_serpent_id_3 = noone;
					place_15 = false;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.ring_serpent_id_1 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_ring_serpent_inv);
					o_rogue_ring_serpent_inv.position = 16;
					global.ring_serpent_id_1 = noone;
					place_16 = false;
				} else if global.ring_serpent_id_2 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_ring_serpent_inv2);
					o_rogue_ring_serpent_inv2.position = 16;
					place_16 = false;
					global.ring_serpent_id_2 = noone;
				} else if global.ring_serpent_id_3 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_ring_serpent_inv3);
					o_rogue_ring_serpent_inv3.position = 16;
					global.ring_serpent_id_3 = noone;
					place_16 = false;
				}
			
			
			
		
		} 
	} 








	if o_rogue.ring_lousy >= 1 {
		if place_1 == true {
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 1;
					global.ring_lousy_id_1 = noone;
					place_1 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 1;
					place_1 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 1;
					global.ring_lousy_id_3 = noone;
					place_1 = false;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 2;
					global.ring_lousy_id_1 = noone;
					place_2 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 2;
					place_2 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 2;
					global.ring_lousy_id_3 = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 3;
					global.ring_lousy_id_1 = noone;
					place_3 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 3;
					place_3 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 3;
					global.ring_lousy_id_3 = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 4;
					global.ring_lousy_id_1 = noone;
					place_4 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 4;
					place_4 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 4;
					global.ring_lousy_id_3 = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 5;
					global.ring_lousy_id_1 = noone;
					place_5 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 5;
					place_5 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 5;
					global.ring_lousy_id_3 = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 6;
					global.ring_lousy_id_1 = noone;
					place_6 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 6;
					place_6 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 6;
					global.ring_lousy_id_3 = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 7;
					global.ring_lousy_id_1 = noone;
					place_7 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 7;
					place_7 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 7;
					global.ring_lousy_id_3 = noone;
					place_7 = false;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 8;
					global.ring_lousy_id_1 = noone;
					place_8 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 8;
					place_8 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 8;
					global.ring_lousy_id_3 = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 9;
					global.ring_lousy_id_1 = noone;
					place_9 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 9;
					place_9 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 9;
					global.ring_lousy_id_3 = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 10;
					global.ring_lousy_id_1 = noone;
					place_10 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 10;
					place_10 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 10;
					global.ring_lousy_id_3 = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 11;
					global.ring_lousy_id_1 = noone;
					place_11 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 11;
					place_11 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 11;
					global.ring_lousy_id_3 = noone;
					place_11 = false;
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 12;
					global.ring_lousy_id_1 = noone;
					place_12 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 12;
					place_12 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 12;
					global.ring_lousy_id_3 = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 13;
					global.ring_lousy_id_1 = noone;
					place_13 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 13;
					place_13 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 13;
					global.ring_lousy_id_3 = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 14;
					global.ring_lousy_id_1 = noone;
					place_14 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 14;
					place_14 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 14;
					global.ring_lousy_id_3 = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 15;
					global.ring_lousy_id_1 = noone;
					place_15 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 15;
					place_15 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 15;
					global.ring_lousy_id_3 = noone;
					place_15 = false;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.ring_lousy_id_1 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_ring_lousy_inv);
					o_rogue_ring_lousy_inv.position = 16;
					global.ring_lousy_id_1 = noone;
					place_16 = false;
				} else if global.ring_lousy_id_2 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_ring_lousy_inv2);
					o_rogue_ring_lousy_inv2.position = 16;
					place_16 = false;
					global.ring_lousy_id_2 = noone;
				} else if global.ring_lousy_id_3 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_ring_lousy_inv3);
					o_rogue_ring_lousy_inv3.position = 16;
					global.ring_lousy_id_3 = noone;
					place_16 = false;
				}
			
			
			
		
		} 
	} 




	if o_rogue.belt_lichking >= 1 {
		if place_1 == true {
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 1;
					place_1 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 1;
					place_1 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 1;
					place_1 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
		
		} else if place_2 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 2;
					place_2 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 2;
					place_2 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 2;
					place_2 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
		
		} else if place_3 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 3;
					place_3 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 3;
					place_3 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 3;
					place_3 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_4 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 4;
					place_4 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 4;
					place_4 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 4;
					place_4 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_5 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 5;
					place_5 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 5;
					place_5 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 5;
					place_5 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_6 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 6;
					place_6 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 6;
					place_6 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 6;
					place_6 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_7 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 7;
					place_7 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 7;
					place_7 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 7;
					place_7 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_8 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 8;
					place_8 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 8;
					place_8 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 8;
					place_8 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_9 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 9;
					place_9 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 9;
					place_9 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 9;
					place_9 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_10 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 10;
					place_10 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 10;
					place_10 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 10;
					place_10 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_11 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 11;
					place_11 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 11;
					place_11 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 11;
					place_11 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_12 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 12;
					place_12 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 12;
					place_12 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 12;
					place_12 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_13 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 13;
					place_13 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 13;
					place_13 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 13;
					place_13 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_14 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 14;
					place_14 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 14;
					place_14 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 14;
					place_14 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_15 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 15;
					place_15 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 15;
					place_15 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 15;
					place_15 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} else if place_16 == true {
		
				if global.belt_lichking_id_1 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_belt_lichking_inv);
					o_rogue_belt_lichking_inv.position = 16;
					place_16 = false;
					global.belt_lichking_id_1 = noone;
				} else if global.belt_lichking_id_2 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_belt_lichking_inv2);
					o_rogue_belt_lichking_inv2.position = 16;
					place_16 = false;
					global.belt_lichking_id_2 = noone;
				} else if global.belt_lichking_id_3 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_belt_lichking_inv3);
					o_rogue_belt_lichking_inv3.position = 16;
					place_16 = false;
					global.belt_lichking_id_3 = noone;
				} 
			
			
			
		
		} 
	} 






	if o_rogue.neck_flashily >= 1 {
		if place_1 == true {
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 1;
					place_1 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 1;
					place_1 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 1;
					place_1 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
		
		} else if place_2 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 2;
					place_2 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 2;
					place_2 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 2;
					place_2 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
		
		} else if place_3 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 3;
					place_3 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 3;
					place_3 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 3;
					place_3 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_4 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 4;
					place_4 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 4;
					place_4 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 4;
					place_4 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_5 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 5;
					place_5 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 5;
					place_5 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 5;
					place_5 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_6 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 6;
					place_6 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 6;
					place_6 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 6;
					place_6 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_7 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 7;
					place_7 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 7;
					place_7 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 7;
					place_7 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_8 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 8;
					place_8 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 8;
					place_8 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 8;
					place_8 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_9 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 9;
					place_9 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 9;
					place_9 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 9;
					place_9 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_10 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 10;
					place_10 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 10;
					place_10 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 10;
					place_10 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_11 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 11;
					place_11 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 11;
					place_11 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 11;
					place_11 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_12 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 12;
					place_12 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 12;
					place_12 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 12;
					place_12 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_13 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 13;
					place_13 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 13;
					place_13 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 13;
					place_13 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_14 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 14;
					place_14 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 14;
					place_14 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 14;
					place_14 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_15 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_belt_lichking_inv.position = 15;
					place_15 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 15;
					place_15 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 15;
					place_15 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} else if place_16 == true {
		
				if global.neck_flashily_id_1 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_neck_flashily_inv);
					o_rogue_neck_flashily_inv.position = 16;
					place_16 = false;
					global.neck_flashily_id_1 = noone;
				} else if global.neck_flashily_id_2 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_neck_flashily_inv2);
					o_rogue_neck_flashily_inv2.position = 16;
					place_16 = false;
					global.neck_flashily_id_2 = noone;
				} else if global.neck_flashily_id_3 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_neck_flashily_inv3);
					o_rogue_neck_flashily_inv3.position = 16;
					place_16 = false;
					global.neck_flashily_id_3 = noone;
				} 
			
			
			
		
		} 
	} 






	if o_rogue.earring_emerald >= 1 {
		if place_1 == true {
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 1;
					global.earring_emerald_id_1 = noone;
					place_1 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 1;
					place_1 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 1;
					global.earring_emerald_id_3 = noone;
					place_1 = false;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 2;
					global.earring_emerald_id_1 = noone;
					place_2 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 2;
					place_2 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 2;
					global.earring_emerald_id_3 = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 3;
					global.earring_emerald_id_1 = noone;
					place_3 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 3;
					place_3 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 3;
					global.earring_emerald_id_3 = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 4;
					global.earring_emerald_id_1 = noone;
					place_4 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 4;
					place_4 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 4;
					global.earring_emerald_id_3 = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 5;
					global.earring_emerald_id_1 = noone;
					place_5 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 5;
					place_5 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 5;
					global.earring_emerald_id_3 = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 6;
					global.earring_emerald_id_1 = noone;
					place_6 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 6;
					place_6 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 6;
					global.earring_emerald_id_3 = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 7;
					global.earring_emerald_id_1 = noone;
					place_7 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 7;
					place_7 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 7;
					global.earring_emerald_id_3 = noone;
					place_7 = false;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 8;
					global.earring_emerald_id_1 = noone;
					place_8 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 8;
					place_8 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 8;
					global.earring_emerald_id_3 = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 9;
					global.earring_emerald_id_1 = noone;
					place_9 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 9;
					place_9 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 9;
					global.earring_emerald_id_3 = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 10;
					global.earring_emerald_id_1 = noone;
					place_10 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 10;
					place_10 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 10;
					global.earring_emerald_id_3 = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 11;
					global.earring_emerald_id_1 = noone;
					place_11 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 11;
					place_11 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 11;
					global.earring_emerald_id_3 = noone;
					place_11 = false;
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 12;
					global.earring_emerald_id_1 = noone;
					place_12 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 12;
					place_12 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 12;
					global.earring_emerald_id_3 = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 13;
					global.earring_emerald_id_1 = noone;
					place_13 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 13;
					place_13 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 13;
					global.earring_emerald_id_3 = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 14;
					global.earring_emerald_id_1 = noone;
					place_14 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 14;
					place_14 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 14;
					global.earring_emerald_id_3 = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 15;
					global.earring_emerald_id_1 = noone;
					place_15 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 15;
					place_15 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 15;
					global.earring_emerald_id_3 = noone;
					place_15 = false;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.earring_emerald_id_1 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_earring_emerald_inv);
					o_rogue_earring_emerald_inv.position = 16;
					global.earring_emerald_id_1 = noone;
					place_16 = false;
				} else if global.earring_emerald_id_2 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_earring_emerald_inv2);
					o_rogue_earring_emerald_inv2.position = 16;
					place_16 = false;
					global.earring_emerald_id_2 = noone;
				} else if global.earring_emerald_id_3 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_earring_emerald_inv3);
					o_rogue_earring_emerald_inv3.position = 16;
					global.earring_emerald_id_3 = noone;
					place_16 = false;
				}
			
			
			
		
		} 
	} 
	
	
	
	
	if o_rogue.pacavra_torso = 2 {
		if place_1 == true {
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 1;
					place_1 = false;
					global.leather_id_1_chest = noone;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 1;
					place_1 = false;
					global.leather_id_2_chest = noone;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 1;
					place_1 = false;
					global.leather_id_3_chest = noone;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 1;
					place_1 = false;
					global.leather_id_4_chest = noone;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 1;
					place_1 = false;
					global.leather_id_5_chest = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 2;
					global.leather_id_1_chest = noone;
					place_2 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 2;
					place_2 = false;
					global.leather_id_2_chest = noone;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 2;
					place_2 = false;
					global.leather_id_3_chest = noone;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 2;
					global.leather_id_4_chest = noone;
					place_2 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 2;
					global.leather_id_5_chest = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 3;
					global.leather_id_1_chest = noone;
					place_3 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 3;
					global.leather_id_2_chest = noone;
					place_3 = false;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 3;
					global.leather_id_3_chest = noone;
					place_3 = false;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 3;
					global.leather_id_4_chest = noone;
					place_3 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 3;
					global.leather_id_5_chest = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 4;
					global.leather_id_1_chest = noone;
					place_4 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 4;
					place_4 = false;
					global.leather_id_2_chest = noone;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 4;
					place_4 = false;
					global.leather_id_3_chest = noone;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 4;
					global.leather_id_4_chest = noone;
					place_4 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 4;
					global.leather_id_5_chest = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 5;
					place_5 = false;
					global.leather_id_1_chest = noone;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 5;
					place_5 = false;
					global.leather_id_2_chest = noone;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 5;
					place_5 = false;
					global.leather_id_3_chest = noone;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 5;
					place_5 = false;
					global.leather_id_4_chest = noone;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 5;
					global.leather_id_5_chest = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 6;
					global.leather_id_1_chest = noone;
					place_6 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 6;
					global.leather_id_2_chest = noone;
					place_6 = false;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 6;
					global.leather_id_3_chest = noone;
					place_6 = false;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 6;
					global.leather_id_4_chest = noone;
					place_6 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 6;
					global.leather_id_5_chest = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 7;
					place_7 = false;
					global.leather_id_1_chest = noone;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 7;
					place_7 = false;
					global.leather_id_2_chest = noone;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 7;
					place_7 = false;
					global.leather_id_3_chest = noone;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 7;
					place_7 = false;
					global.leather_id_4_chest = noone;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 7;
					place_7 = false;
					global.leather_id_5_chest = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 8;
					global.leather_id_1_chest = noone;
					place_8 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 8;
					global.leather_id_2_chest = noone;
					place_8 = false;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 8;
					global.leather_id_3_chest = noone;
					place_8 = false;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 8;
					global.leather_id_4_chest = noone;
					place_8 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 8;
					global.leather_id_5_chest = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 9;
					global.leather_id_1_chest = noone;
					place_9 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 9;
					global.leather_id_2_chest = noone;
					place_9 = false;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 9;
					global.leather_id_3_chest = noone;
					place_9 = false;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 9;
					global.leather_id_4_chest = noone;
					place_9 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 9;
					global.leather_id_5_chest = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 10;
					global.leather_id_1_chest = noone;
					place_10 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 10;
					global.leather_id_2_chest = noone;
					place_10 = false;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 10;
					global.leather_id_3_chest = noone;
					place_10 = false;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 10;
					global.leather_id_4_chest = noone;
					place_10 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 10;
					global.leather_id_5_chest = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 11;
					global.leather_id_1_chest = noone;
					place_11 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 11;
					global.leather_id_2_chest = noone;
					place_11 = false;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 11;
					global.leather_id_3_chest = noone;
					place_11 = false;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 11;
					global.leather_id_4_chest = noone;
					place_11 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 11;
					global.leather_id_5_chest = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 12;
					global.leather_id_1_chest = noone;
					place_12 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 12;
					global.leather_id_2_chest = noone;
					place_12 = false;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 12;
					global.leather_id_3_chest = noone;
					place_12 = false;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 12;
					global.leather_id_4_chest = noone;
					place_12 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 12;
					global.leather_id_5_chest = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 13;
					place_13 = false;
					global.leather_id_1_chest = noone;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 13;
					place_13 = false;
					global.leather_id_2_chest = noone;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 13;
					place_13 = false;
					global.leather_id_3_chest = noone;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 13;
					place_13 = false;
					global.leather_id_4_chest = noone;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 13;
					global.leather_id_5_chest = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 14;
					global.leather_id_1_chest = noone;
					place_14 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 14;
					global.leather_id_2_chest = noone;
					place_14 = false;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 14;
					global.leather_id_3_chest = noone;
					place_14 = false;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 14;
					global.leather_id_4_chest = noone;
					place_14 = false;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 14;
					global.leather_id_5_chest = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 15;
					place_15 = false;
					global.leather_id_1_chest = noone;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 15;
					place_15 = false;
					global.leather_id_2_chest = noone;
				} else if global.pacavra_id_3_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 15;
					place_15 = false;
					global.leather_id_3_chest = noone;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 15;
					place_15 = false;
					global.leather_id_4_chest = noone;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 15;
					place_15 = false;
					global.leather_id_5_chest = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.leather_id_1_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_chest_inv);
					o_rogue_leather_chest_inv.position = 16;
					global.leather_id_1_chest = noone;
					place_16 = false;
				} else if global.leather_id_2_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_chest_inv2);
					o_rogue_leather_chest_inv2.position = 16;
					global.leather_id_2_chest = noone;
					place_16 = false;
				} else if global.leather_id_3_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_chest_inv3);
					o_rogue_leather_chest_inv3.position = 16;
					global.leather_id_3_chest = noone;
					place_16 = false;
				} else if global.leather_id_4_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_chest_inv4);
					o_rogue_leather_chest_inv4.position = 16;
					place_16 = false;
					global.leather_id_4_chest = noone;
				} else if global.leather_id_5_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_chest_inv5);
					o_rogue_leather_chest_inv5.position = 16;
					global.leather_id_5_chest = noone;
					place_16 = false;
				}
		} 
	} 
	
	
	

	if o_rogue.pacavra_gloves = 2 {
		if place_1 == true {
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 1;
					place_1 = false;
					global.leather_id_1_gloves = noone;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 1;
					place_1 = false;
					global.leather_id_2_gloves = noone;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 1;
					place_1 = false;
					global.leather_id_3_gloves = noone;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 1;
					place_1 = false;
					global.leather_id_4_gloves = noone;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 1;
					place_1 = false;
					global.leather_id_5_gloves = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 2;
					global.leather_id_1_gloves = noone;
					place_2 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 2;
					place_2 = false;
					global.leather_id_2_gloves = noone;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 2;
					place_2 = false;
					global.leather_id_3_gloves = noone;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 2;
					global.leather_id_4_gloves = noone;
					place_2 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 2;
					global.leather_id_5_gloves = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 3;
					global.leather_id_1_gloves = noone;
					place_3 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 3;
					global.leather_id_2_gloves = noone;
					place_3 = false;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 3;
					global.leather_id_3_gloves = noone;
					place_3 = false;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 3;
					global.leather_id_4_gloves = noone;
					place_3 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 3;
					global.leather_id_5_gloves = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 4;
					global.leather_id_1_gloves = noone;
					place_4 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 4;
					place_4 = false;
					global.leather_id_2_gloves = noone;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 4;
					place_4 = false;
					global.leather_id_3_gloves = noone;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 4;
					global.leather_id_4_gloves = noone;
					place_4 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 4;
					global.leather_id_5_gloves = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 5;
					place_5 = false;
					global.leather_id_1_gloves = noone;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 5;
					place_5 = false;
					global.leather_id_2_gloves = noone;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 5;
					place_5 = false;
					global.leather_id_3_gloves = noone;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 5;
					place_5 = false;
					global.leather_id_4_gloves = noone;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 5;
					global.leather_id_5_gloves = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 6;
					global.leather_id_1_gloves = noone;
					place_6 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 6;
					global.leather_id_2_gloves = noone;
					place_6 = false;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 6;
					global.leather_id_3_gloves = noone;
					place_6 = false;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 6;
					global.leather_id_4_gloves = noone;
					place_6 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 6;
					global.leather_id_5_gloves = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 7;
					place_7 = false;
					global.leather_id_1_gloves = noone;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 7;
					place_7 = false;
					global.leather_id_2_gloves = noone;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 7;
					place_7 = false;
					global.leather_id_3_gloves = noone;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 7;
					place_7 = false;
					global.leather_id_4_gloves = noone;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 7;
					place_7 = false;
					global.leather_id_5_gloves = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 8;
					global.leather_id_1_gloves = noone;
					place_8 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 8;
					global.leather_id_2_gloves = noone;
					place_8 = false;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 8;
					global.leather_id_3_gloves = noone;
					place_8 = false;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 8;
					global.leather_id_4_gloves = noone;
					place_8 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 8;
					global.leather_id_5_gloves = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 9;
					global.leather_id_1_gloves = noone;
					place_9 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 9;
					global.leather_id_2_gloves = noone;
					place_9 = false;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 9;
					global.leather_id_3_gloves = noone;
					place_9 = false;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 9;
					global.leather_id_4_gloves = noone;
					place_9 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 9;
					global.leather_id_5_gloves = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 10;
					global.leather_id_1_gloves = noone;
					place_10 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 10;
					global.leather_id_2_gloves = noone;
					place_10 = false;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 10;
					global.leather_id_3_gloves = noone;
					place_10 = false;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 10;
					global.leather_id_4_gloves = noone;
					place_10 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 10;
					global.leather_id_5_gloves = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 11;
					global.leather_id_1_gloves = noone;
					place_11 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 11;
					global.leather_id_2_gloves = noone;
					place_11 = false;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 11;
					global.leather_id_3_gloves = noone;
					place_11 = false;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 11;
					global.leather_id_4_gloves = noone;
					place_11 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 11;
					global.leather_id_5_gloves = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 12;
					global.leather_id_1_gloves = noone;
					place_12 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 12;
					global.leather_id_2_gloves = noone;
					place_12 = false;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 12;
					global.leather_id_3_gloves = noone;
					place_12 = false;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 12;
					global.leather_id_4_gloves = noone;
					place_12 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 12;
					global.leather_id_5_gloves = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 13;
					place_13 = false;
					global.leather_id_1_gloves = noone;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 13;
					place_13 = false;
					global.leather_id_2_gloves = noone;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 13;
					place_13 = false;
					global.leather_id_3_gloves = noone;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 13;
					place_13 = false;
					global.leather_id_4_gloves = noone;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 13;
					global.leather_id_5_gloves = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 14;
					global.leather_id_1_gloves = noone;
					place_14 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 14;
					global.leather_id_2_gloves = noone;
					place_14 = false;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 14;
					global.leather_id_3_gloves = noone;
					place_14 = false;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 14;
					global.leather_id_4_gloves = noone;
					place_14 = false;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 14;
					global.leather_id_5_gloves = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 15;
					place_15 = false;
					global.leather_id_1_gloves = noone;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 15;
					place_15 = false;
					global.leather_id_2_gloves = noone;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 15;
					place_15 = false;
					global.leather_id_3_gloves = noone;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 15;
					place_15 = false;
					global.leather_id_4_gloves = noone;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 15;
					place_15 = false;
					global.leather_id_5_gloves = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.leather_id_1_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_gloves_inv);
					o_rogue_leather_gloves_inv.position = 16;
					global.leather_id_1_gloves = noone;
					place_16 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_gloves_inv2);
					o_rogue_leather_gloves_inv2.position = 16;
					global.leather_id_2_gloves = noone;
					place_16 = false;
				} else if global.leather_id_3_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_gloves_inv3);
					o_rogue_leather_gloves_inv3.position = 16;
					global.leather_id_3_gloves = noone;
					place_16 = false;
				} else if global.leather_id_4_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_gloves_inv4);
					o_rogue_leather_gloves_inv4.position = 16;
					place_16 = false;
					global.leather_id_4_gloves = noone;
				} else if global.leather_id_5_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_gloves_inv5);
					o_rogue_leather_gloves_inv5.position = 16;
					global.leather_id_5_gloves = noone;
					place_16 = false;
				}
		} 
	} 
	
	
	
	
	
	if o_rogue.pacavra_boots = 2 {
		if place_1 == true {
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 1;
					place_1 = false;
					global.leather_id_1_boots = noone;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 1;
					place_1 = false;
					global.leather_id_2_boots = noone;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 1;
					place_1 = false;
					global.leather_id_3_boots = noone;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 1;
					place_1 = false;
					global.leather_id_4_boots = noone;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 1;
					place_1 = false;
					global.leather_id_5_boots = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 2;
					global.leather_id_1_boots = noone;
					place_2 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 2;
					place_2 = false;
					global.leather_id_2_boots = noone;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 2;
					place_2 = false;
					global.leather_id_3_boots = noone;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 2;
					global.leather_id_4_boots = noone;
					place_2 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 2;
					global.leather_id_5_boots = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 3;
					global.leather_id_1_boots = noone;
					place_3 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 3;
					global.leather_id_2_boots = noone;
					place_3 = false;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 3;
					global.leather_id_3_boots = noone;
					place_3 = false;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 3;
					global.leather_id_4_boots = noone;
					place_3 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 3;
					global.leather_id_5_boots = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 4;
					global.leather_id_1_boots = noone;
					place_4 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 4;
					place_4 = false;
					global.leather_id_2_boots = noone;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 4;
					place_4 = false;
					global.leather_id_3_boots = noone;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 4;
					global.leather_id_4_boots = noone;
					place_4 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 4;
					global.leather_id_5_boots = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 5;
					place_5 = false;
					global.leather_id_1_boots = noone;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 5;
					place_5 = false;
					global.leather_id_2_boots = noone;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 5;
					place_5 = false;
					global.leather_id_3_boots = noone;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 5;
					place_5 = false;
					global.leather_id_4_boots = noone;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 5;
					global.leather_id_5_boots = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 6;
					global.leather_id_1_boots = noone;
					place_6 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 6;
					global.leather_id_2_boots = noone;
					place_6 = false;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 6;
					global.leather_id_3_boots = noone;
					place_6 = false;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 6;
					global.leather_id_4_boots = noone;
					place_6 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 6;
					global.leather_id_5_boots = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 7;
					place_7 = false;
					global.leather_id_1_boots = noone;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 7;
					place_7 = false;
					global.leather_id_2_boots = noone;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 7;
					place_7 = false;
					global.leather_id_3_boots = noone;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 7;
					place_7 = false;
					global.leather_id_4_boots = noone;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 7;
					place_7 = false;
					global.leather_id_5_boots = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 8;
					global.leather_id_1_boots = noone;
					place_8 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 8;
					global.leather_id_2_boots = noone;
					place_8 = false;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 8;
					global.leather_id_3_boots = noone;
					place_8 = false;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 8;
					global.leather_id_4_boots = noone;
					place_8 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 8;
					global.leather_id_5_boots = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 9;
					global.leather_id_1_boots = noone;
					place_9 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 9;
					global.leather_id_2_boots = noone;
					place_9 = false;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 9;
					global.leather_id_3_boots = noone;
					place_9 = false;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 9;
					global.leather_id_4_boots = noone;
					place_9 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 9;
					global.leather_id_5_boots = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 10;
					global.leather_id_1_boots = noone;
					place_10 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 10;
					global.leather_id_2_boots = noone;
					place_10 = false;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 10;
					global.leather_id_3_boots = noone;
					place_10 = false;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 10;
					global.leather_id_4_boots = noone;
					place_10 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 10;
					global.leather_id_5_boots = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 11;
					global.leather_id_1_boots = noone;
					place_11 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 11;
					global.leather_id_2_boots = noone;
					place_11 = false;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 11;
					global.leather_id_3_boots = noone;
					place_11 = false;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 11;
					global.leather_id_4_boots = noone;
					place_11 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 11;
					global.leather_id_5_boots = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 12;
					global.leather_id_1_boots = noone;
					place_12 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 12;
					global.leather_id_2_boots = noone;
					place_12 = false;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 12;
					global.leather_id_3_boots = noone;
					place_12 = false;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 12;
					global.leather_id_4_boots = noone;
					place_12 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 12;
					global.leather_id_5_boots = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 13;
					place_13 = false;
					global.leather_id_1_boots = noone;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 13;
					place_13 = false;
					global.leather_id_2_boots = noone;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 13;
					place_13 = false;
					global.leather_id_3_boots = noone;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 13;
					place_13 = false;
					global.leather_id_4_boots = noone;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 13;
					global.leather_id_5_boots = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 14;
					global.leather_id_1_boots = noone;
					place_14 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 14;
					global.leather_id_2_boots = noone;
					place_14 = false;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 14;
					global.leather_id_3_boots = noone;
					place_14 = false;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 14;
					global.leather_id_4_boots = noone;
					place_14 = false;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 14;
					global.leather_id_5_boots = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 15;
					place_15 = false;
					global.leather_id_1_boots = noone;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 15;
					place_15 = false;
					global.leather_id_2_boots = noone;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 15;
					place_15 = false;
					global.leather_id_3_boots = noone;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 15;
					place_15 = false;
					global.leather_id_4_boots = noone;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 15;
					place_15 = false;
					global.leather_id_5_boots = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.leather_id_1_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_boots_inv);
					o_rogue_leather_boots_inv.position = 16;
					global.leather_id_1_boots = noone;
					place_16 = false;
				} else if global.leather_id_2_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_boots_inv2);
					o_rogue_leather_boots_inv2.position = 16;
					global.leather_id_2_boots = noone;
					place_16 = false;
				} else if global.leather_id_3_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_boots_inv3);
					o_rogue_leather_boots_inv3.position = 16;
					global.leather_id_3_boots = noone;
					place_16 = false;
				} else if global.leather_id_4_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_boots_inv4);
					o_rogue_leather_boots_inv4.position = 16;
					place_16 = false;
					global.leather_id_4_boots = noone;
				} else if global.leather_id_5_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_boots_inv5);
					o_rogue_leather_boots_inv5.position = 16;
					global.leather_id_5_boots = noone;
					place_16 = false;
				}
			
			
			
		
		} 
	} 
	if o_rogue.pacavra_pants = 2 {
		if place_1 == true {
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 1;
					place_1 = false;
					global.leather_id_1_pants = noone;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 1;
					place_1 = false;
					global.leather_id_2_pants = noone;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 1;
					place_1 = false;
					global.leather_id_3_pants = noone;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 1;
					place_1 = false;
					global.leather_id_4_pants = noone;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 1;
					place_1 = false;
					global.leather_id_5_pants = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 2;
					global.leather_id_1_pants = noone;
					place_2 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 2;
					place_2 = false;
					global.leather_id_2_pants = noone;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 2;
					place_2 = false;
					global.leather_id_3_pants = noone;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 2;
					global.leather_id_4_pants = noone;
					place_2 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 2;
					global.leather_id_5_pants = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 3;
					global.leather_id_1_pants = noone;
					place_3 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 3;
					global.leather_id_2_pants = noone;
					place_3 = false;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 3;
					global.leather_id_3_pants = noone;
					place_3 = false;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 3;
					global.leather_id_4_pants = noone;
					place_3 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 3;
					global.leather_id_5_pants = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 4;
					global.leather_id_1_pants = noone;
					place_4 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 4;
					place_4 = false;
					global.leather_id_2_pants = noone;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 4;
					place_4 = false;
					global.leather_id_3_pants = noone;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 4;
					global.leather_id_4_pants = noone;
					place_4 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 4;
					global.leather_id_5_pants = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 5;
					place_5 = false;
					global.leather_id_1_pants = noone;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 5;
					place_5 = false;
					global.leather_id_2_pants = noone;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 5;
					place_5 = false;
					global.leather_id_3_pants = noone;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 5;
					place_5 = false;
					global.leather_id_4_pants = noone;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 5;
					global.leather_id_5_pants = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 6;
					global.leather_id_1_pants = noone;
					place_6 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 6;
					global.leather_id_2_pants = noone;
					place_6 = false;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 6;
					global.leather_id_3_pants = noone;
					place_6 = false;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 6;
					global.leather_id_4_pants = noone;
					place_6 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 6;
					global.leather_id_5_pants = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 7;
					place_7 = false;
					global.leather_id_1_pants = noone;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 7;
					place_7 = false;
					global.leather_id_2_pants = noone;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 7;
					place_7 = false;
					global.leather_id_3_pants = noone;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 7;
					place_7 = false;
					global.leather_id_4_pants = noone;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 7;
					place_7 = false;
					global.leather_id_5_pants = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 8;
					global.leather_id_1_pants = noone;
					place_8 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 8;
					global.leather_id_2_pants = noone;
					place_8 = false;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 8;
					global.leather_id_3_pants = noone;
					place_8 = false;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 8;
					global.leather_id_4_pants = noone;
					place_8 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 8;
					global.leather_id_5_pants = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 9;
					global.leather_id_1_pants = noone;
					place_9 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 9;
					global.leather_id_2_pants = noone;
					place_9 = false;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 9;
					global.leather_id_3_pants = noone;
					place_9 = false;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 9;
					global.leather_id_4_pants = noone;
					place_9 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 9;
					global.leather_id_5_pants = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 10;
					global.leather_id_1_pants = noone;
					place_10 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 10;
					global.leather_id_2_pants = noone;
					place_10 = false;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 10;
					global.leather_id_3_pants = noone;
					place_10 = false;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 10;
					global.leather_id_4_pants = noone;
					place_10 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 10;
					global.leather_id_5_pants = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 11;
					global.leather_id_1_pants = noone;
					place_11 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 11;
					global.leather_id_2_pants = noone;
					place_11 = false;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 11;
					global.leather_id_3_pants = noone;
					place_11 = false;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 11;
					global.leather_id_4_pants = noone;
					place_11 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 11;
					global.leather_id_5_pants = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 12;
					global.leather_id_1_pants = noone;
					place_12 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 12;
					global.leather_id_2_pants = noone;
					place_12 = false;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 12;
					global.leather_id_3_pants = noone;
					place_12 = false;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 12;
					global.leather_id_4_pants = noone;
					place_12 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 12;
					global.leather_id_5_pants = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 13;
					place_13 = false;
					global.leather_id_1_pants = noone;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 13;
					place_13 = false;
					global.leather_id_2_pants = noone;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 13;
					place_13 = false;
					global.leather_id_3_pants = noone;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 13;
					place_13 = false;
					global.leather_id_4_pants = noone;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 13;
					global.leather_id_5_pants = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 14;
					global.leather_id_1_pants = noone;
					place_14 = false;
				} else if global.leather_id_2_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 14;
					global.leather_id_2_pants = noone;
					place_14 = false;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 14;
					global.leather_id_3_pants = noone;
					place_14 = false;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 14;
					global.leather_id_4_pants = noone;
					place_14 = false;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 14;
					global.leather_id_5_pants = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 15;
					place_15 = false;
					global.leather_id_1_pants = noone;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 15;
					place_15 = false;
					global.leather_id_2_pants = noone;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 15;
					place_15 = false;
					global.leather_id_3_pants = noone;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 15;
					place_15 = false;
					global.leather_id_4_pants = noone;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 15;
					place_15 = false;
					global.leather_id_5_pants = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.leather_id_1_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_pants_inv);
					o_rogue_leather_pants_inv.position = 16;
					global.leather_id_1_pants = noone;
					place_16 = false;
				} else if global.leather_id_2_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_pants_inv2);
					o_rogue_leather_pants_inv2.position = 16;
					global.leather_id_2_pants = noone;
					place_16 = false;
				} else if global.leather_id_3_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_pants_inv3);
					o_rogue_leather_pants_inv3.position = 16;
					global.leather_id_3_pants = noone;
					place_16 = false;
				} else if global.leather_id_4_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_pants_inv4);
					o_rogue_leather_pants_inv4.position = 16;
					place_16 = false;
					global.leather_id_4_pants = noone;
				} else if global.leather_id_5_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_leather_pants_inv5);
					o_rogue_leather_pants_inv5.position = 16;
					global.leather_id_5_pants = noone;
					place_16 = false;
				}
			
			
			
		
		} 
	}

}
if o_rogue.ring_anil = 1 {
		if place_1 == true {
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 1;
					global.ring_anil_id_1 = noone;
					place_1 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 1;
					place_1 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 1;
					global.ring_anil_id_3 = noone;
					place_1 = false;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 2;
					global.ring_anil_id_1 = noone;
					place_2 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 2;
					place_2 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 2;
					global.ring_anil_id_3 = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 3;
					global.ring_anil_id_1 = noone;
					place_3 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 3;
					place_3 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 3;
					global.ring_anil_id_3 = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 4;
					global.ring_anil_id_1 = noone;
					place_4 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 4;
					place_4 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 4;
					global.ring_anil_id_3 = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 5;
					global.ring_anil_id_1 = noone;
					place_5 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 5;
					place_5 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 5;
					global.ring_anil_id_3 = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 6;
					global.ring_anil_id_1 = noone;
					place_6 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 6;
					place_6 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 6;
					global.ring_anil_id_3 = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 7;
					global.ring_anil_id_1 = noone;
					place_7 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 7;
					place_7 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 7;
					global.ring_anil_id_3 = noone;
					place_7 = false;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 8;
					global.ring_anil_id_1 = noone;
					place_8 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 8;
					place_8 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 8;
					global.ring_anil_id_3 = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 9;
					global.ring_anil_id_1 = noone;
					place_9 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 9;
					place_9 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 9;
					global.ring_anil_id_3 = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 10;
					global.ring_anil_id_1 = noone;
					place_10 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 10;
					place_10 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 10;
					global.ring_anil_id_3 = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 11;
					global.ring_anil_id_1 = noone;
					place_11 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 11;
					place_11 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 11;
					global.ring_anil_id_3 = noone;
					place_11 = false;
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 12;
					global.ring_anil_id_1 = noone;
					place_12 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 12;
					place_12 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 12;
					global.ring_anil_id_3 = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 13;
					global.ring_anil_id_1 = noone;
					place_13 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 13;
					place_13 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 13;
					global.ring_anil_id_3 = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 14;
					global.ring_anil_id_1 = noone;
					place_14 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 14;
					place_14 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 14;
					global.ring_anil_id_3 = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 15;
					global.ring_anil_id_1 = noone;
					place_15 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 15;
					place_15 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 15;
					global.ring_anil_id_3 = noone;
					place_15 = false;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.ring_anil_id_1 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_ring_anil_inv);
					o_rogue_ring_anil_inv.position = 16;
					global.ring_anil_id_1 = noone;
					place_16 = false;
				} else if global.ring_anil_id_2 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_ring_anil_inv2);
					o_rogue_ring_anil_inv2.position = 16;
					place_16 = false;
					global.ring_anil_id_2 = noone;
				} else if global.ring_anil_id_3 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_ring_anil_inv3);
					o_rogue_ring_anil_inv3.position = 16;
					global.ring_anil_id_3 = noone;
					place_16 = false;
				}
			
			
			
		
		} 
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	if o_rogue.pacavra_pants >= 3 {
		if place_1 == true {
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 1;
					place_1 = false;
					global.sunknight_id_1_pants = noone;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 1;
					place_1 = false;
					global.sunknight_id_2_pants = noone;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 1;
					place_1 = false;
					global.sunknight_id_3_pants = noone;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 1;
					place_1 = false;
					global.sunknight_id_4_pants = noone;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 1;
					place_1 = false;
					global.sunknight_id_5_pants = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 2;
					global.sunknight_id_1_pants = noone;
					place_2 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 2;
					place_2 = false;
					global.sunknight_id_2_pants = noone;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 2;
					place_2 = false;
					global.sunknight_id_3_pants = noone;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 2;
					global.sunknight_id_4_pants = noone;
					place_2 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 2;
					global.sunknight_id_5_pants = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 3;
					global.sunknight_id_1_pants = noone;
					place_3 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 3;
					global.sunknight_id_2_pants = noone;
					place_3 = false;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 3;
					global.sunknight_id_3_pants = noone;
					place_3 = false;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 3;
					global.sunknight_id_4_pants = noone;
					place_3 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 3;
					global.sunknight_id_5_pants = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 4;
					global.sunknight_id_1_pants = noone;
					place_4 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 4;
					place_4 = false;
					global.sunknight_id_2_pants = noone;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 4;
					place_4 = false;
					global.sunknight_id_3_pants = noone;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 4;
					global.sunknight_id_4_pants = noone;
					place_4 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 4;
					global.sunknight_id_5_pants = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 5;
					place_5 = false;
					global.sunknight_id_1_pants = noone;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 5;
					place_5 = false;
					global.sunknight_id_2_pants = noone;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 5;
					place_5 = false;
					global.sunknight_id_3_pants = noone;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 5;
					place_5 = false;
					global.sunknight_id_4_pants = noone;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 5;
					global.sunknight_id_5_pants = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 6;
					global.sunknight_id_1_pants = noone;
					place_6 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 6;
					global.sunknight_id_2_pants = noone;
					place_6 = false;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 6;
					global.sunknight_id_3_pants = noone;
					place_6 = false;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 6;
					global.sunknight_id_4_pants = noone;
					place_6 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 6;
					global.sunknight_id_5_pants = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 7;
					place_7 = false;
					global.sunknight_id_1_pants = noone;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 7;
					place_7 = false;
					global.sunknight_id_2_pants = noone;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 7;
					place_7 = false;
					global.sunknight_id_3_pants = noone;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 7;
					place_7 = false;
					global.sunknight_id_4_pants = noone;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 7;
					place_7 = false;
					global.sunknight_id_5_pants = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 8;
					global.sunknight_id_1_pants = noone;
					place_8 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 8;
					global.sunknight_id_2_pants = noone;
					place_8 = false;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 8;
					global.sunknight_id_3_pants = noone;
					place_8 = false;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 8;
					global.sunknight_id_4_pants = noone;
					place_8 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 8;
					global.sunknight_id_5_pants = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 9;
					global.sunknight_id_1_pants = noone;
					place_9 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 9;
					global.sunknight_id_2_pants = noone;
					place_9 = false;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 9;
					global.sunknight_id_3_pants = noone;
					place_9 = false;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 9;
					global.sunknight_id_4_pants = noone;
					place_9 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 9;
					global.sunknight_id_5_pants = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 10;
					global.sunknight_id_1_pants = noone;
					place_10 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 10;
					global.sunknight_id_2_pants = noone;
					place_10 = false;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 10;
					global.sunknight_id_3_pants = noone;
					place_10 = false;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 10;
					global.sunknight_id_4_pants = noone;
					place_10 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 10;
					global.sunknight_id_5_pants = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 11;
					global.sunknight_id_1_pants = noone;
					place_11 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 11;
					global.sunknight_id_2_pants = noone;
					place_11 = false;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 11;
					global.sunknight_id_3_pants = noone;
					place_11 = false;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 11;
					global.sunknight_id_4_pants = noone;
					place_11 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 11;
					global.sunknight_id_5_pants = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 12;
					global.sunknight_id_1_pants = noone;
					place_12 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 12;
					global.sunknight_id_2_pants = noone;
					place_12 = false;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 12;
					global.sunknight_id_3_pants = noone;
					place_12 = false;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 12;
					global.sunknight_id_4_pants = noone;
					place_12 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 12;
					global.sunknight_id_5_pants = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 13;
					place_13 = false;
					global.sunknight_id_1_pants = noone;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 13;
					place_13 = false;
					global.sunknight_id_2_pants = noone;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 13;
					place_13 = false;
					global.sunknight_id_3_pants = noone;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 13;
					place_13 = false;
					global.sunknight_id_4_pants = noone;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 13;
					global.sunknight_id_5_pants = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 14;
					global.sunknight_id_1_pants = noone;
					place_14 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 14;
					global.sunknight_id_2_pants = noone;
					place_14 = false;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 14;
					global.sunknight_id_3_pants = noone;
					place_14 = false;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 14;
					global.sunknight_id_4_pants = noone;
					place_14 = false;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 14;
					global.sunknight_id_5_pants = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 15;
					place_15 = false;
					global.sunknight_id_1_pants = noone;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 15;
					place_15 = false;
					global.sunknight_id_2_pants = noone;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 15;
					place_15 = false;
					global.sunknight_id_3_pants = noone;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 15;
					place_15 = false;
					global.sunknight_id_4_pants = noone;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 15;
					place_15 = false;
					global.sunknight_id_5_pants = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.sunknight_id_1_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_pants_inv);
					o_rogue_sunknight_pants_inv.position = 16;
					global.sunknight_id_1_pants = noone;
					place_16 = false;
				} else if global.sunknight_id_2_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_pants_inv2);
					o_rogue_sunknight_pants_inv2.position = 16;
					global.sunknight_id_2_pants = noone;
					place_16 = false;
				} else if global.sunknight_id_3_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_pants_inv3);
					o_rogue_sunknight_pants_inv3.position = 16;
					global.sunknight_id_3_pants = noone;
					place_16 = false;
				} else if global.sunknight_id_4_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_pants_inv4);
					o_rogue_sunknight_pants_inv4.position = 16;
					place_16 = false;
					global.sunknight_id_4_pants = noone;
				} else if global.sunknight_id_5_pants == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_pants_inv5);
					o_rogue_sunknight_pants_inv5.position = 16;
					global.sunknight_id_5_pants = noone;
					place_16 = false;
				}			
		
		} 
	}





if o_rogue.pacavra_helmet = 3 {
		if place_1 == true {
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 1;
					global.sunknight_id_1 = noone;
				
					place_1 = false;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 1;
					global.sunknight_id_2 = noone;
				
					place_1 = false;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 1;
					global.sunknight_id_3 = noone;
				
					place_1 = false;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 1;
					global.sunknight_id_4 = noone;
				
					place_1 = false;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 1;
					global.sunknight_id_5 = noone;
				
					place_1 = false;
				}
			
			
		
		} else if place_2 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 2;
					global.sunknight_id_1 = noone;
				
					place_2 = false;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 2;
					global.sunknight_id_2 = noone;
				
					place_2 = false;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 2;
					global.sunknight_id_3 = noone;
				
					place_2 = false;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 2;
					global.sunknight_id_4 = noone;
				
					place_2 = false;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 2;
					global.sunknight_id_5 = noone;
				
					place_2 = false;
				}
			
			
		
		} else if place_3 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 3;
					global.sunknight_id_1 = noone;
					place_3 = false;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 3;
					global.sunknight_id_2 = noone;
					place_3 = false;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 3;
					global.sunknight_id_3 = noone;
					place_3 = false;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 3;
					global.sunknight_id_4 = noone;
					place_3 = false;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 3;
					global.sunknight_id_5 = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 4;
					global.sunknight_id_1 = noone;
					place_4 = false;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 4;
					global.sunknight_id_2 = noone;
					place_4 = false;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 4;
					global.sunknight_id_3 = noone;
					place_4 = false;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 4;
					global.sunknight_id_4 = noone;
					place_4 = false;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 4;
					global.sunknight_id_5 = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 5;
					global.sunknight_id_1 = noone;
					place_5 = false;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 5;
					global.sunknight_id_2 = noone;
					place_5 = false;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 5;
					global.sunknight_id_3 = noone;
					place_5 = false;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 5;
					global.sunknight_id_4 = noone;
					place_5 = false;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 5;
					global.sunknight_id_5 = noone;
					place_5 = false;
				}
			
			
			
		
		} else if place_6 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 6;
					global.sunknight_id_1 = noone;
					place_6 = false;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 6;
					global.sunknight_id_2 = noone;
					place_6 = false;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 6;
					global.sunknight_id_3 = noone;
					place_6 = false;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 6;
					global.sunknight_id_4 = noone;
					place_6 = false;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 6;
					global.sunknight_id_5 = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 7;
					global.sunknight_id_1 = noone;
					place_7 = false;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 7;
					global.sunknight_id_2 = noone;
					place_7 = false;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 7;
					global.sunknight_id_3 = noone;
					place_7 = false;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 7;
					global.sunknight_id_4 = noone;
					place_7 = false;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 7;
					global.sunknight_id_5 = noone;
					place_7 = false;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 8;
					place_8 = false;
					global.sunknight_id_1 = noone;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 8;
					global.sunknight_id_2 = noone;
					place_8 = false;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 8;
					global.sunknight_id_3 = noone;
					place_8 = false;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 8;
					global.sunknight_id_4 = noone;
					place_8 = false;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 8;
					global.sunknight_id_5 = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 9;
					place_9 = false;
					global.sunknight_id_1 = noone;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 9;
					place_9 = false;
					global.sunknight_id_2 = noone;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 9;
					place_9 = false;
					global.sunknight_id_3 = noone;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 9;
					place_9 = false;
					global.sunknight_id_4 = noone;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 9;
					place_9 = false;
					global.sunknight_id_5 = noone;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 10;
					place_10 = false;
					global.sunknight_id_1 = noone;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 10;
					place_10 = false;
					global.sunknight_id_2 = noone;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 10;
					place_10 = false;
					global.sunknight_id_3 = noone;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 10;
					place_10 = false;
					global.sunknight_id_4 = noone;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 10;
					place_10 = false;
					global.sunknight_id_5 = noone;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 11;
					place_11 = false;
					global.sunknight_id_1 = noone;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 11;
					place_11 = false;
					global.sunknight_id_2 = noone;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 11;
					place_11 = false;
					global.sunknight_id_3 = noone;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 11;
					place_11 = false;
					global.sunknight_id_4 = noone;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 11;
					place_11 = false;
					global.sunknight_id_5 = noone;
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 12;
					place_12 = false;
					global.sunknight_id_1 = noone;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 12;
					global.sunknight_id_2 = noone;
					place_12 = false;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 12;
					place_12 = false;
					global.sunknight_id_3 = noone;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 12;
					place_12 = false;
					global.sunknight_id_4 = noone;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 12;
					place_12 = false;
					global.sunknight_id_5 = noone;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 13;
					place_13 = false;
					global.sunknight_id_1 = noone;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 13;
					place_13 = false;
					global.sunknight_id_2 = noone;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 13;
					place_13 = false;
					global.sunknight_id_3 = noone;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 13;
					place_13 = false;
					global.sunknight_id_4 = noone;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 13;
					place_13 = false;
					global.sunknight_id_5 = noone;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 14;
					place_14 = false;
					global.sunknight_id_1 = noone;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 14;
					place_14 = false;
					global.sunknight_id_2 = noone;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 14;
					place_14 = false;
					global.sunknight_id_3 = noone;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 14;
					place_14 = false;
					global.sunknight_id_4 = noone;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 14;
					place_14 = false;
					global.sunknight_id_5 = noone;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 15;
					place_15 = false;
					global.sunknight_id_1 = noone;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 15;
					place_15 = false;
					global.sunknight_id_2 = noone;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 15;
					place_15 = false;
					global.sunknight_id_3 = noone;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 15;
					place_15 = false;
					global.sunknight_id_4 = noone;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 15;
					place_15 = false;
					global.sunknight_id_5 = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.sunknight_id_1 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_helmet_inv);
					o_rogue_sunknight_helmet_inv.position = 16;
					place_16 = false;
					global.sunknight_id_1 = noone;
				} else if global.sunknight_id_2 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_helmet_inv2);
					o_rogue_sunknight_helmet_inv2.position = 16;
					place_16 = false;
					global.sunknight_id_2 = noone;
				} else if global.sunknight_id_3 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_helmet_inv3);
					o_rogue_sunknight_helmet_inv3.position = 16;
					place_16 = false;
					global.sunknight_id_3 = noone;
				} else if global.sunknight_id_4 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_helmet_inv4);
					o_rogue_sunknight_helmet_inv4.position = 16;
					place_16 = false;
					global.sunknight_id_4 = noone;
				} else if global.sunknight_id_5 == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_helmet_inv5);
					o_rogue_sunknight_helmet_inv5.position = 16;
					place_16 = false;
					global.sunknight_id_5 = noone;
				}
						
		
		} 
	} 






if o_rogue.pacavra_torso = 3 {
		if place_1 == true {
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 1;
					place_1 = false;
					global.sunknight_id_1_chest = noone;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 1;
					place_1 = false;
					global.sunknight_id_2_chest = noone;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 1;
					place_1 = false;
					global.sunknight_id_3_chest = noone;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 1;
					place_1 = false;
					global.sunknight_id_4_chest = noone;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 1;
					place_1 = false;
					global.sunknight_id_5_chest = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 2;
					global.sunknight_id_1_chest = noone;
					place_2 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 2;
					place_2 = false;
					global.sunknight_id_2_chest = noone;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 2;
					place_2 = false;
					global.sunknight_id_3_chest = noone;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 2;
					global.sunknight_id_4_chest = noone;
					place_2 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 2;
					global.sunknight_id_5_chest = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 3;
					global.sunknight_id_1_chest = noone;
					place_3 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 3;
					global.sunknight_id_2_chest = noone;
					place_3 = false;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 3;
					global.sunknight_id_3_chest = noone;
					place_3 = false;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 3;
					global.sunknight_id_4_chest = noone;
					place_3 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 3;
					global.sunknight_id_5_chest = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 4;
					global.sunknight_id_1_chest = noone;
					place_4 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 4;
					place_4 = false;
					global.sunknight_id_2_chest = noone;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 4;
					place_4 = false;
					global.sunknight_id_3_chest = noone;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 4;
					global.sunknight_id_4_chest = noone;
					place_4 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 4;
					global.sunknight_id_5_chest = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 5;
					place_5 = false;
					global.sunknight_id_1_chest = noone;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 5;
					place_5 = false;
					global.sunknight_id_2_chest = noone;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 5;
					place_5 = false;
					global.sunknight_id_3_chest = noone;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 5;
					place_5 = false;
					global.sunknight_id_4_chest = noone;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 5;
					global.sunknight_id_5_chest = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 6;
					global.sunknight_id_1_chest = noone;
					place_6 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 6;
					global.sunknight_id_2_chest = noone;
					place_6 = false;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 6;
					global.sunknight_id_3_chest = noone;
					place_6 = false;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 6;
					global.sunknight_id_4_chest = noone;
					place_6 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 6;
					global.sunknight_id_5_chest = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 7;
					place_7 = false;
					global.sunknight_id_1_chest = noone;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 7;
					place_7 = false;
					global.sunknight_id_2_chest = noone;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 7;
					place_7 = false;
					global.sunknight_id_3_chest = noone;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 7;
					place_7 = false;
					global.sunknight_id_4_chest = noone;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 7;
					place_7 = false;
					global.sunknight_id_5_chest = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 8;
					global.sunknight_id_1_chest = noone;
					place_8 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 8;
					global.sunknight_id_2_chest = noone;
					place_8 = false;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 8;
					global.sunknight_id_3_chest = noone;
					place_8 = false;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 8;
					global.sunknight_id_4_chest = noone;
					place_8 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 8;
					global.sunknight_id_5_chest = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 9;
					global.sunknight_id_1_chest = noone;
					place_9 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 9;
					global.sunknight_id_2_chest = noone;
					place_9 = false;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 9;
					global.sunknight_id_3_chest = noone;
					place_9 = false;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 9;
					global.sunknight_id_4_chest = noone;
					place_9 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 9;
					global.sunknight_id_5_chest = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 10;
					global.sunknight_id_1_chest = noone;
					place_10 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 10;
					global.sunknight_id_2_chest = noone;
					place_10 = false;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 10;
					global.sunknight_id_3_chest = noone;
					place_10 = false;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 10;
					global.sunknight_id_4_chest = noone;
					place_10 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 10;
					global.sunknight_id_5_chest = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 11;
					global.sunknight_id_1_chest = noone;
					place_11 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 11;
					global.sunknight_id_2_chest = noone;
					place_11 = false;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 11;
					global.sunknight_id_3_chest = noone;
					place_11 = false;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 11;
					global.sunknight_id_4_chest = noone;
					place_11 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 11;
					global.sunknight_id_5_chest = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 12;
					global.sunknight_id_1_chest = noone;
					place_12 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 12;
					global.sunknight_id_2_chest = noone;
					place_12 = false;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 12;
					global.sunknight_id_3_chest = noone;
					place_12 = false;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 12;
					global.sunknight_id_4_chest = noone;
					place_12 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 12;
					global.sunknight_id_5_chest = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 13;
					place_13 = false;
					global.sunknight_id_1_chest = noone;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 13;
					place_13 = false;
					global.sunknight_id_2_chest = noone;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 13;
					place_13 = false;
					global.sunknight_id_3_chest = noone;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 13;
					place_13 = false;
					global.sunknight_id_4_chest = noone;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 13;
					global.sunknight_id_5_chest = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 14;
					global.sunknight_id_1_chest = noone;
					place_14 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 14;
					global.sunknight_id_2_chest = noone;
					place_14 = false;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 14;
					global.sunknight_id_3_chest = noone;
					place_14 = false;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 14;
					global.sunknight_id_4_chest = noone;
					place_14 = false;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 14;
					global.sunknight_id_5_chest = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 15;
					place_15 = false;
					global.sunknight_id_1_chest = noone;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 15;
					place_15 = false;
					global.sunknight_id_2_chest = noone;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 15;
					place_15 = false;
					global.sunknight_id_3_chest = noone;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 15;
					place_15 = false;
					global.sunknight_id_4_chest = noone;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 15;
					place_15 = false;
					global.sunknight_id_5_chest = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.sunknight_id_1_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_chest_inv);
					o_rogue_sunknight_chest_inv.position = 16;
					global.sunknight_id_1_chest = noone;
					place_16 = false;
				} else if global.sunknight_id_2_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_chest_inv2);
					o_rogue_sunknight_chest_inv2.position = 16;
					global.sunknight_id_2_chest = noone;
					place_16 = false;
				} else if global.sunknight_id_3_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_chest_inv3);
					o_rogue_sunknight_chest_inv3.position = 16;
					global.sunknight_id_3_chest = noone;
					place_16 = false;
				} else if global.sunknight_id_4_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_chest_inv4);
					o_rogue_sunknight_chest_inv4.position = 16;
					place_16 = false;
					global.sunknight_id_4_chest = noone;
				} else if global.sunknight_id_5_chest == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_chest_inv5);
					o_rogue_sunknight_chest_inv5.position = 16;
					global.sunknight_id_5_chest = noone;
					place_16 = false;
				}			
		} 
	} 




if o_rogue.pacavra_gloves = 3 {
		if place_1 == true {
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 1;
					place_1 = false;
					global.sunknight_id_1_gloves = noone;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 1;
					place_1 = false;
					global.sunknight_id_2_gloves = noone;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 1;
					place_1 = false;
					global.sunknight_id_3_gloves = noone;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 1;
					place_1 = false;
					global.sunknight_id_4_gloves = noone;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 1;
					place_1 = false;
					global.sunknight_id_5_gloves = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 2;
					global.sunknight_id_1_gloves = noone;
					place_2 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 2;
					place_2 = false;
					global.sunknight_id_2_gloves = noone;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 2;
					place_2 = false;
					global.sunknight_id_3_gloves = noone;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 2;
					global.sunknight_id_4_gloves = noone;
					place_2 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 2;
					global.sunknight_id_5_gloves = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 3;
					global.sunknight_id_1_gloves = noone;
					place_3 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 3;
					global.sunknight_id_2_gloves = noone;
					place_3 = false;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 3;
					global.sunknight_id_3_gloves = noone;
					place_3 = false;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 3;
					global.sunknight_id_4_gloves = noone;
					place_3 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 3;
					global.sunknight_id_5_gloves = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 4;
					global.sunknight_id_1_gloves = noone;
					place_4 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 4;
					place_4 = false;
					global.sunknight_id_2_gloves = noone;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 4;
					place_4 = false;
					global.sunknight_id_3_gloves = noone;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 4;
					global.sunknight_id_4_gloves = noone;
					place_4 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 4;
					global.sunknight_id_5_gloves = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 5;
					place_5 = false;
					global.sunknight_id_1_gloves = noone;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 5;
					place_5 = false;
					global.sunknight_id_2_gloves = noone;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 5;
					place_5 = false;
					global.sunknight_id_3_gloves = noone;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 5;
					place_5 = false;
					global.sunknight_id_4_gloves = noone;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 5;
					global.sunknight_id_5_gloves = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 6;
					global.sunknight_id_1_gloves = noone;
					place_6 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 6;
					global.sunknight_id_2_gloves = noone;
					place_6 = false;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 6;
					global.sunknight_id_3_gloves = noone;
					place_6 = false;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 6;
					global.sunknight_id_4_gloves = noone;
					place_6 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 6;
					global.sunknight_id_5_gloves = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 7;
					place_7 = false;
					global.sunknight_id_1_gloves = noone;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 7;
					place_7 = false;
					global.sunknight_id_2_gloves = noone;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 7;
					place_7 = false;
					global.sunknight_id_3_gloves = noone;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 7;
					place_7 = false;
					global.sunknight_id_4_gloves = noone;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 7;
					place_7 = false;
					global.sunknight_id_5_gloves = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 8;
					global.sunknight_id_1_gloves = noone;
					place_8 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 8;
					global.sunknight_id_2_gloves = noone;
					place_8 = false;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 8;
					global.sunknight_id_3_gloves = noone;
					place_8 = false;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 8;
					global.sunknight_id_4_gloves = noone;
					place_8 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 8;
					global.sunknight_id_5_gloves = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 9;
					global.sunknight_id_1_gloves = noone;
					place_9 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 9;
					global.sunknight_id_2_gloves = noone;
					place_9 = false;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 9;
					global.sunknight_id_3_gloves = noone;
					place_9 = false;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 9;
					global.sunknight_id_4_gloves = noone;
					place_9 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 9;
					global.sunknight_id_5_gloves = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 10;
					global.sunknight_id_1_gloves = noone;
					place_10 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 10;
					global.sunknight_id_2_gloves = noone;
					place_10 = false;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 10;
					global.sunknight_id_3_gloves = noone;
					place_10 = false;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 10;
					global.sunknight_id_4_gloves = noone;
					place_10 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 10;
					global.sunknight_id_5_gloves = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 11;
					global.sunknight_id_1_gloves = noone;
					place_11 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 11;
					global.sunknight_id_2_gloves = noone;
					place_11 = false;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 11;
					global.sunknight_id_3_gloves = noone;
					place_11 = false;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 11;
					global.sunknight_id_4_gloves = noone;
					place_11 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 11;
					global.sunknight_id_5_gloves = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 12;
					global.sunknight_id_1_gloves = noone;
					place_12 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 12;
					global.sunknight_id_2_gloves = noone;
					place_12 = false;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 12;
					global.sunknight_id_3_gloves = noone;
					place_12 = false;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 12;
					global.sunknight_id_4_gloves = noone;
					place_12 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 12;
					global.sunknight_id_5_gloves = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 13;
					place_13 = false;
					global.sunknight_id_1_gloves = noone;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 13;
					place_13 = false;
					global.sunknight_id_2_gloves = noone;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 13;
					place_13 = false;
					global.sunknight_id_3_gloves = noone;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 13;
					place_13 = false;
					global.sunknight_id_4_gloves = noone;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 13;
					global.sunknight_id_5_gloves = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 14;
					global.sunknight_id_1_gloves = noone;
					place_14 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 14;
					global.sunknight_id_2_gloves = noone;
					place_14 = false;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 14;
					global.sunknight_id_3_gloves = noone;
					place_14 = false;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 14;
					global.sunknight_id_4_gloves = noone;
					place_14 = false;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 14;
					global.sunknight_id_5_gloves = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 15;
					place_15 = false;
					global.sunknight_id_1_gloves = noone;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 15;
					place_15 = false;
					global.sunknight_id_2_gloves = noone;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 15;
					place_15 = false;
					global.sunknight_id_3_gloves = noone;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 15;
					place_15 = false;
					global.sunknight_id_4_gloves = noone;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 15;
					place_15 = false;
					global.sunknight_id_5_gloves = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.sunknight_id_1_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_gloves_inv);
					o_rogue_sunknight_gloves_inv.position = 16;
					global.sunknight_id_1_gloves = noone;
					place_16 = false;
				} else if global.sunknight_id_2_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_gloves_inv2);
					o_rogue_sunknight_gloves_inv2.position = 16;
					global.sunknight_id_2_gloves = noone;
					place_16 = false;
				} else if global.sunknight_id_3_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_gloves_inv3);
					o_rogue_sunknight_gloves_inv3.position = 16;
					global.sunknight_id_3_gloves = noone;
					place_16 = false;
				} else if global.sunknight_id_4_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_gloves_inv4);
					o_rogue_sunknight_gloves_inv4.position = 16;
					place_16 = false;
					global.sunknight_id_4_gloves = noone;
				} else if global.sunknight_id_5_gloves == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_gloves_inv5);
					o_rogue_sunknight_gloves_inv5.position = 16;
					global.sunknight_id_5_gloves = noone;
					place_16 = false;
				}
		} 
	} 




	if o_rogue.pacavra_boots = 3 {
		if place_1 == true {
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 1;
					place_1 = false;
					global.sunknight_id_1_boots = noone;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 1;
					place_1 = false;
					global.sunknight_id_2_boots = noone;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 1;
					place_1 = false;
					global.sunknight_id_3_boots = noone;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 1;
					place_1 = false;
					global.sunknight_id_4_boots = noone;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_1.x,o_inventory_place_1.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 1;
					place_1 = false;
					global.sunknight_id_5_boots = noone;
				}
			
			
			
		
		} else if place_2 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 2;
					global.sunknight_id_1_boots = noone;
					place_2 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 2;
					place_2 = false;
					global.sunknight_id_2_boots = noone;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 2;
					place_2 = false;
					global.sunknight_id_3_boots = noone;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 2;
					global.sunknight_id_4_boots = noone;
					place_2 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_2.x,o_inventory_place_2.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 2;
					global.sunknight_id_5_boots = noone;
					place_2 = false;
				}
			
			
			
		
		} else if place_3 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 3;
					global.sunknight_id_1_boots = noone;
					place_3 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 3;
					global.sunknight_id_2_boots = noone;
					place_3 = false;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 3;
					global.sunknight_id_3_boots = noone;
					place_3 = false;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 3;
					global.sunknight_id_4_boots = noone;
					place_3 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_3.x,o_inventory_place_3.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 3;
					global.sunknight_id_5_boots = noone;
					place_3 = false;
				}
			
			
			
		
		} else if place_4 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 4;
					global.sunknight_id_1_boots = noone;
					place_4 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 4;
					place_4 = false;
					global.sunknight_id_2_boots = noone;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 4;
					place_4 = false;
					global.sunknight_id_3_boots = noone;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 4;
					global.sunknight_id_4_boots = noone;
					place_4 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_4.x,o_inventory_place_4.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 4;
					global.sunknight_id_5_boots = noone;
					place_4 = false;
				}
			
			
			
		
		} else if place_5 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 5;
					place_5 = false;
					global.sunknight_id_1_boots = noone;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 5;
					place_5 = false;
					global.sunknight_id_2_boots = noone;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 5;
					place_5 = false;
					global.sunknight_id_3_boots = noone;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 5;
					place_5 = false;
					global.sunknight_id_4_boots = noone;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_5.x,o_inventory_place_5.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 5;
					global.sunknight_id_5_boots = noone;
					place_5 = false;
				}
		
			
			
		
		} else if place_6 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 6;
					global.sunknight_id_1_boots = noone;
					place_6 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 6;
					global.sunknight_id_2_boots = noone;
					place_6 = false;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 6;
					global.sunknight_id_3_boots = noone;
					place_6 = false;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 6;
					global.sunknight_id_4_boots = noone;
					place_6 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_6.x,o_inventory_place_6.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 6;
					global.sunknight_id_5_boots = noone;
					place_6 = false;
				}
			
			
			
		
		} else if place_7 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 7;
					place_7 = false;
					global.sunknight_id_1_boots = noone;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 7;
					place_7 = false;
					global.sunknight_id_2_boots = noone;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 7;
					place_7 = false;
					global.sunknight_id_3_boots = noone;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 7;
					place_7 = false;
					global.sunknight_id_4_boots = noone;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_7.x,o_inventory_place_7.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 7;
					place_7 = false;
					global.sunknight_id_5_boots = noone;
				}
			
			
			
		
		} else if place_8 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 8;
					global.sunknight_id_1_boots = noone;
					place_8 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 8;
					global.sunknight_id_2_boots = noone;
					place_8 = false;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 8;
					global.sunknight_id_3_boots = noone;
					place_8 = false;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 8;
					global.sunknight_id_4_boots = noone;
					place_8 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_8.x,o_inventory_place_8.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 8;
					global.sunknight_id_5_boots = noone;
					place_8 = false;
				}
			
			
			
		
		} else if place_9 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 9;
					global.sunknight_id_1_boots = noone;
					place_9 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 9;
					global.sunknight_id_2_boots = noone;
					place_9 = false;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 9;
					global.sunknight_id_3_boots = noone;
					place_9 = false;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 9;
					global.sunknight_id_4_boots = noone;
					place_9 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_9.x,o_inventory_place_9.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 9;
					global.sunknight_id_5_boots = noone;
					place_9 = false;
				}
			
			
			
		
		} else if place_10 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 10;
					global.sunknight_id_1_boots = noone;
					place_10 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 10;
					global.sunknight_id_2_boots = noone;
					place_10 = false;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 10;
					global.sunknight_id_3_boots = noone;
					place_10 = false;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 10;
					global.sunknight_id_4_boots = noone;
					place_10 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_10.x,o_inventory_place_10.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 10;
					global.sunknight_id_5_boots = noone;
					place_10 = false;
				}
			
			
			
		
		} else if place_11 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 11;
					global.sunknight_id_1_boots = noone;
					place_11 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 11;
					global.sunknight_id_2_boots = noone;
					place_11 = false;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 11;
					global.sunknight_id_3_boots = noone;
					place_11 = false;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 11;
					global.sunknight_id_4_boots = noone;
					place_11 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_11.x,o_inventory_place_11.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 11;
					global.sunknight_id_5_boots = noone;
					place_11 = false;
				
				}
			
			
			
		
		} else if place_12 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 12;
					global.sunknight_id_1_boots = noone;
					place_12 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 12;
					global.sunknight_id_2_boots = noone;
					place_12 = false;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 12;
					global.sunknight_id_3_boots = noone;
					place_12 = false;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 12;
					global.sunknight_id_4_boots = noone;
					place_12 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_12.x,o_inventory_place_12.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 12;
					global.sunknight_id_5_boots = noone;
					place_12 = false;
				}
			
			
			
		
		} else if place_13 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 13;
					place_13 = false;
					global.sunknight_id_1_boots = noone;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 13;
					place_13 = false;
					global.sunknight_id_2_boots = noone;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 13;
					place_13 = false;
					global.sunknight_id_3_boots = noone;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 13;
					place_13 = false;
					global.sunknight_id_4_boots = noone;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_13.x,o_inventory_place_13.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 13;
					global.sunknight_id_5_boots = noone;
					place_13 = false;
				}
			
			
			
		
		} else if place_14 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 14;
					global.sunknight_id_1_boots = noone;
					place_14 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 14;
					global.sunknight_id_2_boots = noone;
					place_14 = false;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 14;
					global.sunknight_id_3_boots = noone;
					place_14 = false;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 14;
					global.sunknight_id_4_boots = noone;
					place_14 = false;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_14.x,o_inventory_place_14.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 14;
					global.sunknight_id_5_boots = noone;
					place_14 = false;
				}
			
			
			
		
		} else if place_15 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 15;
					place_15 = false;
					global.sunknight_id_1_boots = noone;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 15;
					place_15 = false;
					global.sunknight_id_2_boots = noone;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 15;
					place_15 = false;
					global.sunknight_id_3_boots = noone;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 15;
					place_15 = false;
					global.sunknight_id_4_boots = noone;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_15.x,o_inventory_place_15.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 15;
					place_15 = false;
					global.sunknight_id_5_boots = noone;
				}
			
			
			
		
		} else if place_16 == true {
		
				if global.sunknight_id_1_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_boots_inv);
					o_rogue_sunknight_boots_inv.position = 16;
					global.sunknight_id_1_boots = noone;
					place_16 = false;
				} else if global.sunknight_id_2_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_boots_inv2);
					o_rogue_sunknight_boots_inv2.position = 16;
					global.sunknight_id_2_boots = noone;
					place_16 = false;
				} else if global.sunknight_id_3_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_boots_inv3);
					o_rogue_sunknight_boots_inv3.position = 16;
					global.sunknight_id_3_boots = noone;
					place_16 = false;
				} else if global.sunknight_id_4_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_boots_inv4);
					o_rogue_sunknight_boots_inv4.position = 16;
					place_16 = false;
					global.sunknight_id_4_boots = noone;
				} else if global.sunknight_id_5_boots == false {
					instance_create_layer(o_inventory_place_16.x,o_inventory_place_16.y,"buttons",o_rogue_sunknight_boots_inv5);
					o_rogue_sunknight_boots_inv5.position = 16;
					global.sunknight_id_5_boots = noone;
					place_16 = false;
				}
		} 
	}




else {
	sprite_index = noone;		
}