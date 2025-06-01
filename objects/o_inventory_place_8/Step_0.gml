/// @description Insert description here
// You can write your code in this editor
if room == Room_character_items_info or room == Room_character_select or room == Room_character_skills or room == Room_menu or room == Room_character_stats {
	instance_destroy();	
}

if room == Room1 and !instance_exists(o_tier1_1_bandicot) {
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



x = o_inventory.x+113;
y = o_inventory.y+54;
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



x = o_inventory.x+113;
y = o_inventory.y+54;

}

