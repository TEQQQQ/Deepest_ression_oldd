/// @description Insert description here
// You can write your code in this editor




if global.text_info == true {
	sprite_index = s_skill_bar2;	
	if !instance_exists(o_skill_tutucu){
		instance_create_layer(x,y,"menu",o_skill_tutucu);	
	}
	if !instance_exists(o_skill_yokedici){
		instance_create_layer(x+5,y+2,"menu",o_skill_yokedici);	
	}

} else {
	sprite_index = noone;	
}

