/// @description Insert description here
// You can write your code in this editor

	if !instance_exists(o_inv_head_rogue){
		instance_create_layer(x,y,"buttons",o_inv_head_rogue);
	}

	if !instance_exists(o_inv_torso_rogue){
		instance_create_layer(x,y,"buttons",o_inv_torso_rogue);
	}

	if !instance_exists(o_inv_leg_right_rogue){
		instance_create_layer(x,y,"buttons",o_inv_leg_right_rogue);
	}

	if !instance_exists(o_inv_leg_left_rogue){
		instance_create_layer(x,y,"buttons",o_inv_leg_left_rogue);
	}

	if !instance_exists(o_inv_arm_right_rogue){
		instance_create_layer(x,y,"buttons",o_inv_arm_right_rogue);
	}

	if !instance_exists(o_inv_arm_left_rogue){
		instance_create_layer(x,y,"buttons",o_inv_arm_left_rogue);
	}

	if !instance_exists(o_inv_pants_rogue){
		instance_create_layer(x,y,"buttons",o_inv_pants_rogue);
	}




x_speed = 24.8;
time = 0;

dash = false;
inventory = false;


once_konum = true;

if room == Room1 {
	x = -160;
	y = 176;	
}

place_1 = true;
place_2 = true;
place_3 = true;
place_4 = true;
place_5 = true;
place_6 = true;
place_7 = true;
place_8 = true;
place_9 = true;
place_10 = true;
place_11 = true;
place_12 = true;
place_13 = true;
place_14 = true;
place_15 = true;
place_16 = true;
place_helmet = true;//17 kodu
place_chest = true;//18 kodu
place_pants = true;//19 kodu position kodları bunlar
place_boots = true;//20 kodu
place_gloves = true;//21 kodu
place_ring_1 = true;//22 kodu
place_ring_2 = true;//23 kodu
place_earring_1 = true;//26 kodu
place_earring_2 = true;//27 kodu
place_belt = true;//24 kodu
place_neck = true;//25 kodu
place_trash = true;//50 kodu

