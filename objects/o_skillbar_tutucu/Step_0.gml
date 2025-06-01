/// @description Insert description here
// You can write your code in this editor






if !instance_exists(o_skill_tutucu){
	instance_create_layer(x+8,y-16,"buttons",o_skill_tutucu);	
}
if !instance_exists(o_skill_yokedici){
	instance_create_layer(x-40,y-16,"buttons",o_skill_yokedici);	
}


if room == Room_info {
	direction = 90;	
}