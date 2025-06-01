/// @description Insert description here
// You can write your code in this editor




if room == Room_info {
	image_speed = 0;
}


if shaking == true {
	x_value = random_range(-3,3);
	y_value = random_range(-3,3);
	x += x_value;
	y += y_value;
	time ++;
	if time == 10 {
		shaking = false;
		time = 0;
	}
} else {
	if dodge == true {
		x_value = 4;
		time ++;
		x_value--;
		x -= x_value;
		
		if time >= 20 {
			x_value++;
			x += x_value;
			
			
		}
		if time >= 76 {//76,4
			dodge = false;
			time = 0;
		}

	}
}



if shaking == false and dodge == false and time == 0 {
	x = 96;
	y = 112;
}

