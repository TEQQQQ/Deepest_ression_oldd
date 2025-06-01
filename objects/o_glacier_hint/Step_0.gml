/// @description Insert description here
// You can write your code in this editor


if position_meeting(mouse_x,mouse_y,o_glacier_hint){
	image_index = 1;
	if !instance_exists(o_hint_info_box_glacier){
		instance_create_layer(x,y,"hints",o_hint_info_box_glacier);
	}
} else {
	image_index = 0;
	instance_destroy(o_hint_info_box_glacier);
}


x = o_stats.x-3;
y = o_stats.y+123;
