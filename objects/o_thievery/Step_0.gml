/// @description Insert description here
// You can write your code in this editor



if global.character == 4{
	if skill_page == 0 {
		if o_rogue.thievery == 0 {
			if instance_exists(o_lock_thievery_1_1){
				instance_destroy(o_lock_thievery_1_1);
			}
			if instance_exists(o_lock_thievery_1_2){
				instance_destroy(o_lock_thievery_1_2);
			}
			if instance_exists(o_lock_thievery_1_3){
				instance_destroy(o_lock_thievery_1_3);
			}
			
			if !instance_exists(o_skill_rogue_thievery_1_1){
				instance_create_layer(x,y,"effects",o_skill_rogue_thievery_1_1);
			}
			if !instance_exists(o_skill_rogue_thievery_1_2){
				instance_create_layer(x+48,y,"effects",o_skill_rogue_thievery_1_2);
			}
			if !instance_exists(o_skill_rogue_thievery_1_3){
				instance_create_layer(x+96,y,"effects",o_skill_rogue_thievery_1_3);
			}
		
			if !instance_exists(o_lock_thievery_2_1){
				instance_create_layer(x+48,y+48,"effects",o_lock_thievery_2_1);
			}
			if !instance_exists(o_lock_thievery_2_2){
			instance_create_layer(x+96,y+48,"effects",o_lock_thievery_2_2);
			}
			if !instance_exists(o_lock_thievery_2_3){
			instance_create_layer(x,y+48,"effects",o_lock_thievery_2_3);
			}
		
			if !instance_exists(o_lock_thievery_3_1){
				instance_create_layer(x+48,y+96,"effects",o_lock_thievery_3_1);
			}
			if !instance_exists(o_lock_thievery_3_2){
				instance_create_layer(x+96,y+96,"effects",o_lock_thievery_3_2);
			}
			if !instance_exists(o_lock_thievery_3_3){
				instance_create_layer(x,y+96,"effects",o_lock_thievery_3_3);
			}
		
			if !instance_exists(o_lock_thievery_4_1){
				instance_create_layer(x+48,y+144,"effects",o_lock_thievery_4_1);
			}
			if !instance_exists(o_lock_thievery_4_2){
				instance_create_layer(x+96,y+144,"effects",o_lock_thievery_4_2);
			}
			if !instance_exists(o_lock_thievery_4_3){
				instance_create_layer(x,y+144,"effects",o_lock_thievery_4_3);
			}
		
			if !instance_exists(o_lock_thievery_5_1){
				instance_create_layer(x+48,y+192,"effects",o_lock_thievery_5_1);
			}
			if !instance_exists(o_lock_thievery_5_2){
				instance_create_layer(x+96,y+192,"effects",o_lock_thievery_5_2);
			}
			if !instance_exists(o_lock_thievery_5_3){
				instance_create_layer(x,y+192,"effects",o_lock_thievery_5_3);
			}
		}
		if o_rogue.thievery == 1 {
			//yokedilen
			if instance_exists(o_lock_thievery_1_1){
				instance_destroy(o_lock_thievery_1_1);
			}
			if instance_exists(o_lock_thievery_1_2){
				instance_destroy(o_lock_thievery_1_2);
			}
			if instance_exists(o_lock_thievery_1_3){
				instance_destroy(o_lock_thievery_1_3);
			}
			
			if instance_exists(o_lock_thievery_2_1){
				instance_destroy(o_lock_thievery_2_1);
			}
			if instance_exists(o_lock_thievery_2_2){
				instance_destroy(o_lock_thievery_2_2);
			}
			if instance_exists(o_lock_thievery_2_3){
				instance_destroy(o_lock_thievery_2_3);
			}
			//yaratılan
		
			if !instance_exists(o_lock_thievery_3_1){
				instance_create_layer(x+48,y+96,"effects",o_lock_thievery_3_1);
			}
			if !instance_exists(o_lock_thievery_3_2){
				instance_create_layer(x+96,y+96,"effects",o_lock_thievery_3_2);
			}
			if !instance_exists(o_lock_thievery_3_3){
				instance_create_layer(x,y+96,"effects",o_lock_thievery_3_3);
			}
		
			if !instance_exists(o_lock_thievery_4_1){
				instance_create_layer(x+48,y+144,"effects",o_lock_thievery_4_1);
			}
			if !instance_exists(o_lock_thievery_4_2){
				instance_create_layer(x+96,y+144,"effects",o_lock_thievery_4_2);
			}
			if !instance_exists(o_lock_thievery_4_3){
				instance_create_layer(x,y+144,"effects",o_lock_thievery_4_3);
			}
		
			if !instance_exists(o_lock_thievery_5_1){
				instance_create_layer(x+48,y+192,"effects",o_lock_thievery_5_1);
			}
			if !instance_exists(o_lock_thievery_5_2){
				instance_create_layer(x+96,y+192,"effects",o_lock_thievery_5_2);
			}
			if !instance_exists(o_lock_thievery_5_3){
				instance_create_layer(x,y+192,"effects",o_lock_thievery_5_3);
			}
			
			if !instance_exists(o_skill_rogue_thievery_1_1){
				instance_create_layer(x,y,"effects",o_skill_rogue_thievery_1_1);
			}
			if !instance_exists(o_skill_rogue_thievery_1_2){
				instance_create_layer(x+48,y,"effects",o_skill_rogue_thievery_1_2);
			}
			if !instance_exists(o_skill_rogue_thievery_1_3){
				instance_create_layer(x+96,y,"effects",o_skill_rogue_thievery_1_3);
			}
		
			if !instance_exists(o_skill_rogue_thievery_1_1){
				instance_create_layer(x+48,y+48,"effects",o_skill_rogue_thievery_1_1);
			}
			if !instance_exists(o_skill_rogue_thievery_1_2){
				instance_create_layer(x+96,y+48,"effects",o_skill_rogue_thievery_1_2);
			}
			if !instance_exists(o_skill_rogue_thievery_1_3){
				instance_create_layer(x,y+48,"effects",o_skill_rogue_thievery_1_3);
			}
		

		}
	}
	if skill_page == 1 {
		if o_rogue.thievery < 6 {
			if !instance_exists(o_lock_thievery_1_1){
				instance_create_layer(x,y,"effects",o_lock_thievery_1_1);
			}
			if !instance_exists(o_lock_thievery_1_2){
				instance_create_layer(x+48,y,"effects",o_lock_thievery_1_2);
			}
			if !instance_exists(o_lock_thievery_1_3){
				instance_create_layer(x+96,y,"effects",o_lock_thievery_1_3);
			}
		
			if !instance_exists(o_lock_thievery_2_1){
				instance_create_layer(x+48,y+48,"effects",o_lock_thievery_2_1);
			}
			if !instance_exists(o_lock_thievery_2_2){
			instance_create_layer(x+96,y+48,"effects",o_lock_thievery_2_2);
			}
			if !instance_exists(o_lock_thievery_2_3){
			instance_create_layer(x,y+48,"effects",o_lock_thievery_2_3);
			}
		
			if !instance_exists(o_lock_thievery_3_1){
				instance_create_layer(x+48,y+96,"effects",o_lock_thievery_3_1);
			}
			if !instance_exists(o_lock_thievery_3_2){
				instance_create_layer(x+96,y+96,"effects",o_lock_thievery_3_2);
			}
			if !instance_exists(o_lock_thievery_3_3){
				instance_create_layer(x,y+96,"effects",o_lock_thievery_3_3);
			}
		
			if !instance_exists(o_lock_thievery_4_1){
				instance_create_layer(x+48,y+144,"effects",o_lock_thievery_4_1);
			}
			if !instance_exists(o_lock_thievery_4_2){
				instance_create_layer(x+96,y+144,"effects",o_lock_thievery_4_2);
			}
			if !instance_exists(o_lock_thievery_4_3){
				instance_create_layer(x,y+144,"effects",o_lock_thievery_4_3);
			}
		
			if !instance_exists(o_lock_thievery_5_1){
				instance_create_layer(x+48,y+192,"effects",o_lock_thievery_5_1);
			}
			if !instance_exists(o_lock_thievery_5_2){
				instance_create_layer(x+96,y+192,"effects",o_lock_thievery_5_2);
			}
			if !instance_exists(o_lock_thievery_5_3){
				instance_create_layer(x,y+192,"effects",o_lock_thievery_5_3);
			}	
		}
		if o_rogue.thievery == 6 {
			if !instance_exists(o_lock_thievery_1_1){
				instance_create_layer(x,y,"effects",o_lock_thievery_1_1);
			}
			if !instance_exists(o_lock_thievery_1_2){
				instance_create_layer(x+48,y,"effects",o_lock_thievery_1_2);
			}
			if !instance_exists(o_lock_thievery_1_3){
				instance_create_layer(x+96,y,"effects",o_lock_thievery_1_3);
			}
		
			if !instance_exists(o_lock_thievery_2_1){
				instance_create_layer(x+48,y+48,"effects",o_lock_thievery_2_1);
			}
			if !instance_exists(o_lock_thievery_2_2){
			instance_create_layer(x+96,y+48,"effects",o_lock_thievery_2_2);
			}
			if !instance_exists(o_lock_thievery_2_3){
			instance_create_layer(x,y+48,"effects",o_lock_thievery_2_3);
			}
		
			if !instance_exists(o_lock_thievery_3_1){
				instance_create_layer(x+48,y+96,"effects",o_lock_thievery_3_1);
			}
			if !instance_exists(o_lock_thievery_3_2){
				instance_create_layer(x+96,y+96,"effects",o_lock_thievery_3_2);
			}
			if !instance_exists(o_lock_thievery_3_3){
				instance_create_layer(x,y+96,"effects",o_lock_thievery_3_3);
			}
		
			if !instance_exists(o_lock_thievery_4_1){
				instance_create_layer(x+48,y+144,"effects",o_lock_thievery_4_1);
			}
			if !instance_exists(o_lock_thievery_4_2){
				instance_create_layer(x+96,y+144,"effects",o_lock_thievery_4_2);
			}
			if !instance_exists(o_lock_thievery_4_3){
				instance_create_layer(x,y+144,"effects",o_lock_thievery_4_3);
			}
		
			if !instance_exists(o_lock_thievery_5_1){
				instance_create_layer(x+48,y+192,"effects",o_lock_thievery_5_1);
			}
			if !instance_exists(o_lock_thievery_5_2){
				instance_create_layer(x+96,y+192,"effects",o_lock_thievery_5_2);
			}
			if !instance_exists(o_lock_thievery_5_3){
				instance_create_layer(x,y+192,"effects",o_lock_thievery_5_3);
			}		
		}
	}
}




