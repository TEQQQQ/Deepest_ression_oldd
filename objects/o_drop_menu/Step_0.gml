/// @description Insert description here
// You can write your code in this editor
if o_stats.time == 0 and o_inventory.time == 0 and global.skill == 0{
	if time == 23 or time == 0 {
		if keyboard_check_pressed(ord("O")){
			if drop_menu == false {
				drop_menu = true;	
				dash = true
				y_speed = 22.8;
			} else {
				drop_menu = false;	
				dash = true;
				y_speed = -22.8;
			}
		}
	}
}

if !instance_exists(o_drop_close){
	instance_create_layer(x,y,"buttons",o_drop_close);	
}

if time < 0 {
	time = 0;
	y = -272.00;
}

if time > 23 {
	time = 23;
	y = -0.60;
}


if drop_menu == true {
	if dash == true {
		
		if y_speed <= 0 {
			y = y;
			y_speed = 0;
		} else {
			y += y_speed;
			y_speed --;
			time ++;
		}
	}
		
}


if drop_menu == false {
	if dash == true {
		
		if y_speed >= 0 {
			y = y;
			y_speed = 0;
		} else {
			y += y_speed;
			y_speed ++;
			time--;
		}
	}
		
}

