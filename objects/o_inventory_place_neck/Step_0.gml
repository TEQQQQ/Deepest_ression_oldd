/// @description Insert description here
// You can write your code in this editor
if room == Room_character_items_info or room == Room_character_select or room == Room_character_skills or room == Room_menu or room == Room_character_stats {
	instance_destroy();	
}


if room == Room1 {
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



x = o_inventory.x+3;
y = o_inventory.y-112;
//o_rogue.equipment_chest = 0;
}



if room == Room_info {
if o_drop_menu.time == 0 {
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



x = o_inventory.x+3;
y = o_inventory.y-112;
//o_rogue.equipment_chest = 0;

}




/*
if place_1 == true {
	if o_rogue.health_potion_100 >= 1 {
		if !instance_exists(o_health_potion_100_inv){
			instance_create_layer(x,y,"buttons",o_health_potion_100_inv);
			
			o_health_potion_100_inv.position = 1;
		}
	}
	
	if o_rogue.mana_potion_50 >= 1 {
		if !instance_exists(o_mana_potion_50_inv){
			instance_create_layer(x,y,"buttons",o_mana_potion_50_inv);
			
			o_mana_potion_50_inv.position = d1;
			
		}
	}
}


if !position_meeting(x,y,o_health_potion_100_inv) or !position_meeting(x,y,o_mana_potion_50_inv) {
	place_1 = true;	
}


*/

