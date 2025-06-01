/// @description Insert description here
// You can write your code in this editor

if global.skillbar_once == 0 {
	global.text_info = true;
	global.skillbar_once = 1;
}

if !instance_exists(o_skill_1){
	instance_create_layer(x+48,y+38,"effects",o_skill_1);
	
}

if !instance_exists(o_skill_2){
	instance_create_layer(x+112,y+38,"effects",o_skill_2);
	
}

if !instance_exists(o_skill_3){
	instance_create_layer(x+176,y+38,"effects",o_skill_3);
	
}

if !instance_exists(o_skill_4){
	instance_create_layer(x+240,y+38,"effects",o_skill_4);
	
}

if !instance_exists(o_skill_5){
	instance_create_layer(x+304,y+38,"effects",o_skill_5);
	
}

if !instance_exists(o_skill_6){
	instance_create_layer(x+368,y+38,"effects",o_skill_6);
	
}

if !instance_exists(o_skill_7){
	instance_create_layer(x+432,y+38,"effects",o_skill_7);
	
}

if !instance_exists(o_skill_8){
	instance_create_layer(x+496,y+38,"effects",o_skill_8);
	
}

if room == Room_info {
	x = 550;	
}

//skill panosu kodu
if room == Room_character_skills{
	if keyboard_check_pressed(ord("K")){
		if o_skill_bars.skill_tutucu == 1 {
				if global.skill == 0 {
					room_goto(Room_info);	
				}
			}
	}
}