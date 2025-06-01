/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;

gorunum = false;
if global.text_info == true {
	instance_destroy();	
}

number_ = choose(1,1);
number_text = 0;
if number_ == 1 {
	sprite_index = s_background_necklace;
	x = 471;
	y = 194;
}