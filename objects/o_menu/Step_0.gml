/// @description Insert description here
// You can write your code in this editor




if !instance_exists(o_mouse_cursor){
	instance_create_layer(x,y,"mouse",o_mouse_cursor);	
}

if instance_exists(o_rotating_arrow){
	instance_destroy(o_mouse_cursor);	
}


if keyboard_check_pressed(vk_escape){
	game_end();	
}

if global.text_info == false and global.text_main == false and global.text_obj1 == false and global.text_obj2 == false and global.text_obj3 == false and global.text_obj4 == false {
	global.text_main = true;	
}

