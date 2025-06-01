/// @description Insert description here
// You can write your code in this editor



if global.character == 4 {
	if o_thievery.skill_page == 0 {
		if o_rogue.hurting == 0 {
			//yokedilenler
			if instance_exists(o_lock_hurting_1_1){
				instance_destroy(o_lock_hurting_1_1);
			}
			if instance_exists(o_lock_hurting_1_2){
				instance_destroy(o_lock_hurting_1_2);
			}
			if instance_exists(o_lock_hurting_1_3){
				instance_destroy(o_lock_hurting_1_3);
			}
			
			
			//yaratılanlar
			if !instance_exists(o_lock_hurting_2_1){
				instance_create_layer(x+48,y+48,"effects",o_lock_hurting_2_1);
			}
			if !instance_exists(o_lock_hurting_2_2){
				instance_create_layer(x+96,y+48,"effects",o_lock_hurting_2_2);
			}
			if !instance_exists(o_lock_hurting_2_3){
				instance_create_layer(x,y+48,"effects",o_lock_hurting_2_3);
			}
			
			if !instance_exists(o_lock_hurting_3_1){
				instance_create_layer(x+48,y+96,"effects",o_lock_hurting_3_1);
			}
			if !instance_exists(o_lock_hurting_3_2){
				instance_create_layer(x+96,y+96,"effects",o_lock_hurting_3_2);
			}
			if !instance_exists(o_lock_hurting_3_3){
				instance_create_layer(x,y+96,"effects",o_lock_hurting_3_3);
			}
			
			if !instance_exists(o_lock_hurting_4_1){
				instance_create_layer(x+48,y+144,"effects",o_lock_hurting_4_1);
			}
			if !instance_exists(o_lock_hurting_4_2){
				instance_create_layer(x+96,y+144,"effects",o_lock_hurting_4_2);
			}
			if !instance_exists(o_lock_hurting_4_3){
				instance_create_layer(x,y+144,"effects",o_lock_hurting_4_3);
			}
			
			if !instance_exists(o_lock_hurting_5_1){
				instance_create_layer(x+48,y+192,"effects",o_lock_hurting_5_1);
			}
			if !instance_exists(o_lock_hurting_5_2){
				instance_create_layer(x+96,y+192,"effects",o_lock_hurting_5_2);
			}
			if !instance_exists(o_lock_hurting_5_3){
				instance_create_layer(x,y+192,"effects",o_lock_hurting_5_3);
			}
			
			//skiller
			if !instance_exists(o_skill_rogue_hurting_1_1) {
				instance_create_layer(x,y,"effects",o_skill_rogue_hurting_1_1);
			}
			if !instance_exists(o_skill_rogue_hurting_1_2) {
				instance_create_layer(x+48,y,"effects",o_skill_rogue_hurting_1_2);
			}
			if !instance_exists(o_skill_rogue_hurting_1_3) {
				instance_create_layer(x+96,y,"effects",o_skill_rogue_hurting_1_3);
			}
			
			

		}
		if o_rogue.hurting == 1 {
			//yok edilenler
			if instance_exists(o_lock_hurting_1_1){
				instance_destroy(o_lock_hurting_1_1);
			}
			if instance_exists(o_lock_hurting_1_2){
				instance_destroy(o_lock_hurting_1_2);
			}
			if instance_exists(o_lock_hurting_1_3){
				instance_destroy(o_lock_hurting_1_3);
			}
			
			if instance_exists(o_lock_hurting_2_1){
				instance_destroy(o_lock_hurting_2_1);
			}
			if instance_exists(o_lock_hurting_2_2){
				instance_destroy(o_lock_hurting_2_2);
			}
			if instance_exists(o_lock_hurting_2_3){
				instance_destroy(o_lock_hurting_2_3);
			}
			//yaratılanlar
			if !instance_exists(o_lock_hurting_3_1){
				instance_create_layer(x+48,y+96,"effects",o_lock_hurting_3_1);
			}
			if !instance_exists(o_lock_hurting_3_2){
				instance_create_layer(x+96,y+96,"effects",o_lock_hurting_3_2);
			}
			if !instance_exists(o_lock_hurting_3_3){
				instance_create_layer(x,y+96,"effects",o_lock_hurting_3_3);
			}
			
			if !instance_exists(o_lock_hurting_4_1){
				instance_create_layer(x+48,y+144,"effects",o_lock_hurting_4_1);
			}
			if !instance_exists(o_lock_hurting_4_2){
				instance_create_layer(x+96,y+144,"effects",o_lock_hurting_4_2);
			}
			if !instance_exists(o_lock_hurting_4_3){
				instance_create_layer(x,y+144,"effects",o_lock_hurting_4_3);
			}
			
			if !instance_exists(o_lock_hurting_5_1){
				instance_create_layer(x+48,y+192,"effects",o_lock_hurting_5_1);
			}
			if !instance_exists(o_lock_hurting_5_2){
				instance_create_layer(x+96,y+192,"effects",o_lock_hurting_5_2);
			}
			if !instance_exists(o_lock_hurting_5_3){
				instance_create_layer(x,y+192,"effects",o_lock_hurting_5_3);
			}
			
			//skiller
			if !instance_exists(o_skill_rogue_hurting_1_1){
				instance_create_layer(x,y,"effects",o_skill_rogue_hurting_1_1);
			}
			if !instance_exists(o_skill_rogue_hurting_1_2){
			instance_create_layer(x+48,y,"effects",o_skill_rogue_hurting_1_2);
			}
			if !instance_exists(o_skill_rogue_hurting_1_3){
			instance_create_layer(x+96,y,"effects",o_skill_rogue_hurting_1_3);
			}
			
			if !instance_exists(o_skill_rogue_hurting_2_1){
				instance_create_layer(x+48,y+48,"effects",o_skill_rogue_hurting_2_1);
			}
			if !instance_exists(o_skill_rogue_hurting_1_2){
				instance_create_layer(x+96,y+48,"effects",o_skill_rogue_hurting_1_2);
			}
			if !instance_exists(o_skill_rogue_hurting_1_3){
				instance_create_layer(x,y+48,"effects",o_skill_rogue_hurting_1_3);
			}
		
		}
		
		if o_rogue.hurting == 2 {
			//yokedilenler
			if instance_exists(o_lock_hurting_1_1){
				instance_destroy(o_lock_hurting_1_1);
			}
			if instance_exists(o_lock_hurting_1_2){
				instance_destroy(o_lock_hurting_1_2);
			}
			if instance_exists(o_lock_hurting_1_3){
				instance_destroy(o_lock_hurting_1_3);
			}
			
			if instance_exists(o_lock_hurting_2_1){
				instance_destroy(o_lock_hurting_2_1);
			}
			if instance_exists(o_lock_hurting_2_2){
				instance_destroy(o_lock_hurting_2_2);
			}
			if instance_exists(o_lock_hurting_2_3){
				instance_destroy(o_lock_hurting_2_3);
			}
			
			if instance_exists(o_lock_hurting_3_1){
				instance_destroy(o_lock_hurting_3_1);
			}
			if instance_exists(o_lock_hurting_3_2){
				instance_destroy(o_lock_hurting_3_2);
			}
			if instance_exists(o_lock_hurting_3_3){
				instance_destroy(o_lock_hurting_3_3);
			}
			
			//yaratılanlar
			
			if !instance_exists(o_lock_hurting_4_1){
				instance_create_layer(x+48,y+144,"effects",o_lock_hurting_4_1);
			}
			if !instance_exists(o_lock_hurting_4_2){
				instance_create_layer(x+96,y+144,"effects",o_lock_hurting_4_2);
			}
			if !instance_exists(o_lock_hurting_4_3){
				instance_create_layer(x,y+144,"effects",o_lock_hurting_4_3);
			}
			
			if !instance_exists(o_lock_hurting_5_1){
				instance_create_layer(x+48,y+192,"effects",o_lock_hurting_5_1);
			}
			if !instance_exists(o_lock_hurting_5_2){
				instance_create_layer(x+96,y+192,"effects",o_lock_hurting_5_2);
			}
			if !instance_exists(o_lock_hurting_5_3){
				instance_create_layer(x,y+192,"effects",o_lock_hurting_5_3);
			}
			
			//skiller
			if !instance_exists(o_skill_rogue_hurting_1_1){
				instance_create_layer(x,y,"effects",o_skill_rogue_hurting_1_1);
			}
			if !instance_exists(o_skill_rogue_hurting_1_2){
			instance_create_layer(x+48,y,"effects",o_skill_rogue_hurting_1_2);
			}
			if !instance_exists(o_skill_rogue_hurting_1_3){
			instance_create_layer(x+96,y,"effects",o_skill_rogue_hurting_1_3);
			}
			
			if !instance_exists(o_skill_rogue_hurting_2_1){
				instance_create_layer(x+48,y+48,"effects",o_skill_rogue_hurting_2_1);
			}
			if !instance_exists(o_skill_rogue_hurting_1_2){
				instance_create_layer(x+96,y+48,"effects",o_skill_rogue_hurting_1_2);
			}
			if !instance_exists(o_skill_rogue_hurting_1_3){
				instance_create_layer(x,y+48,"effects",o_skill_rogue_hurting_1_3);
			}
		
		}
	}
	if o_thievery.skill_page == 1 {
		
		
		if o_rogue.hurting < 6 {
			
			if !instance_exists(o_lock_hurting_1_1){
				instance_create_layer(x,y,"effects",o_lock_hurting_1_1);
			}
			if !instance_exists(o_lock_hurting_1_2){
				instance_create_layer(x+48,y,"effects",o_lock_hurting_1_2);
			}
			if !instance_exists(o_lock_hurting_1_3){
				instance_create_layer(x+96,y,"effects",o_lock_hurting_1_3);
			}
		
			if !instance_exists(o_lock_hurting_2_1){
				instance_create_layer(x+48,y+48,"effects",o_lock_hurting_2_1);
			}
			if !instance_exists(o_lock_hurting_2_2){
				instance_create_layer(x+96,y+48,"effects",o_lock_hurting_2_2);
			}
			if !instance_exists(o_lock_hurting_2_3){
				instance_create_layer(x,y+48,"effects",o_lock_hurting_2_3);
			}
			
			if !instance_exists(o_lock_hurting_3_1){
				instance_create_layer(x+48,y+96,"effects",o_lock_hurting_3_1);
			}
			if !instance_exists(o_lock_hurting_3_2){
				instance_create_layer(x+96,y+96,"effects",o_lock_hurting_3_2);
			}
			if !instance_exists(o_lock_hurting_3_3){
				instance_create_layer(x,y+96,"effects",o_lock_hurting_3_3);
			}
			
			if !instance_exists(o_lock_hurting_4_1){
				instance_create_layer(x+48,y+144,"effects",o_lock_hurting_4_1);
			}
			if !instance_exists(o_lock_hurting_4_2){
				instance_create_layer(x+96,y+144,"effects",o_lock_hurting_4_2);
			}
			if !instance_exists(o_lock_hurting_4_3){
				instance_create_layer(x,y+144,"effects",o_lock_hurting_4_3);
			}
			
			if !instance_exists(o_lock_hurting_5_1){
				instance_create_layer(x+48,y+192,"effects",o_lock_hurting_5_1);
			}
			if !instance_exists(o_lock_hurting_5_2){
				instance_create_layer(x+96,y+192,"effects",o_lock_hurting_5_2);
			}
			if !instance_exists(o_lock_hurting_5_3){
				instance_create_layer(x,y+192,"effects",o_lock_hurting_5_3);
			}
		}
		if o_rogue.hurting == 6 {
			if !instance_exists(o_lock_hurting_1_1){
				instance_create_layer(x,y,"effects",o_lock_hurting_1_1);
			}
			if !instance_exists(o_lock_hurting_1_2){
				instance_create_layer(x+48,y,"effects",o_lock_hurting_1_2);
			}
			if !instance_exists(o_lock_hurting_1_3){
				instance_create_layer(x+96,y,"effects",o_lock_hurting_1_3);
			}
		
			if !instance_exists(o_lock_hurting_2_1){
				instance_create_layer(x+48,y+48,"effects",o_lock_hurting_2_1);
			}
			if !instance_exists(o_lock_hurting_2_2){
				instance_create_layer(x+96,y+48,"effects",o_lock_hurting_2_2);
			}
			if !instance_exists(o_lock_hurting_2_3){
				instance_create_layer(x,y+48,"effects",o_lock_hurting_2_3);
			}
			
			if !instance_exists(o_lock_hurting_3_1){
				instance_create_layer(x+48,y+96,"effects",o_lock_hurting_3_1);
			}
			if !instance_exists(o_lock_hurting_3_2){
				instance_create_layer(x+96,y+96,"effects",o_lock_hurting_3_2);
			}
			if !instance_exists(o_lock_hurting_3_3){
				instance_create_layer(x,y+96,"effects",o_lock_hurting_3_3);
			}
			
			if !instance_exists(o_lock_hurting_4_1){
				instance_create_layer(x+48,y+144,"effects",o_lock_hurting_4_1);
			}
			if !instance_exists(o_lock_hurting_4_2){
				instance_create_layer(x+96,y+144,"effects",o_lock_hurting_4_2);
			}
			if !instance_exists(o_lock_hurting_4_3){
				instance_create_layer(x,y+144,"effects",o_lock_hurting_4_3);
			}
			
			if !instance_exists(o_lock_hurting_5_1){
				instance_create_layer(x+48,y+192,"effects",o_lock_hurting_5_1);
			}
			if !instance_exists(o_lock_hurting_5_2){
				instance_create_layer(x+96,y+192,"effects",o_lock_hurting_5_2);
			}
			if !instance_exists(o_lock_hurting_5_3){
				instance_create_layer(x,y+192,"effects",o_lock_hurting_5_3);
			}
		}
	}
}


