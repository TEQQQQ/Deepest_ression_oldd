/// @description Insert description here
// You can write your code in this editor






if position_meeting(mouse_x,mouse_y,o_select_mage){
	time ++;
	if time >= 1 {
		image_index =1;	
	}
	if time >= 2 {
		image_index =2;	
	}
	if time >= 3 {
		image_index =3;	
		time = 3;
	}
	
} else {
	time --;
	if time < 0 {
		image_index = 0;	
		time = -1;
	}
	if time >= 1 {
		image_index =1;	
	}
	if time >= 2 {
		image_index =2;	
	}
	if time >= 3 {
		image_index =3;	
	}
}