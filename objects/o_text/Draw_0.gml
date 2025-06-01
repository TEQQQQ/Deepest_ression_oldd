/// @description Insert description here
// You can write your code in this editor


draw_self();
draw_text(x,y,saydamlik);

if room == Room_info {
	
	if global.text_main == true {
		if instance_exists(o_choice) {
			instance_destroy(o_choice);	
		}
		if instance_exists(o_choice2) {
			instance_destroy(o_choice2);	
		}
		if instance_exists(o_choice3) {
			instance_destroy(o_choice3);	
		}
		
		image_index = 0;
		if artis == true {
			saydamlik+= 0.01;	
		} else {
			saydamlik-= 0.01;	
		}
		if saydamlik <= 0.2 {
			artis = true;	
		}
		if saydamlik >= 0.9 {
			artis = false;	
		}
		draw_set_alpha(saydamlik)
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_self();
		draw_set_font(fnt_damage);
		
		
		// MAKSİMUM 300 KARAKTER UZUNLUĞUNDA BİR YAZI OLSUN BURADA
		draw_text_ext_transformed(320,y+35,"I've been asking myself for a long time, what do I want to do? ",12,600,1,1,0);
	}
	draw_set_alpha(1);
	
	
	if global.text_obj1 == true {
		image_index = 1;
		if !instance_exists(o_choice) and o_obj1.number_text == 0 {
			instance_create_layer(452,304,"Instances",o_choice);
		}
		if !instance_exists(o_choice2) and o_obj1.number_text == 0 {
			instance_create_layer(452,324,"Instances",o_choice2);
		}
		if !instance_exists(o_choice3) and o_obj1.number_text == 0 {
			instance_create_layer(452,344,"Instances",o_choice3);
		}
		if artis == true {
			saydamlik+= 0.01;	
		} else {
			saydamlik-= 0.01;	
		}
		if saydamlik <= 0.2 {
			artis = true;	
		}
		if saydamlik >= 0.9 {
			artis = false;	
		}
		draw_set_alpha(saydamlik)
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_self();
		draw_set_font(fnt_damage);
		
		if o_obj1.number_ == 1 {
			if o_obj1.number_text == 0 {
				// MAKSİMUM 240-250 KARAKTER UZUNLUĞUNDA BİR YAZI OLSUN BURADA
			
				draw_text_ext_transformed(230,y+35,"You see a skull with horns. You know you've seen it before, but you try to remember where. A sense of curiosity flares inside you. ",12,400,1,1,0);
		
				//option 1
				draw_set_halign(fa_left);
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+20,"Try to remember it ",12,170,1,1,0);
				//option 2
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+40,"Make a careful touch",12,170,1,1,0);
				//option 3
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+60,"Leave it ",12,170,1,1,0);
			}
			
			if o_obj1.number_text == 1 {
				
				if !instance_exists(o_continue) {
					instance_create_layer(327,350,"Instances",o_continue);	
				}
				draw_text_ext_transformed(320,y+35,"A book you have read before appears before your eyes. It is about the Tapan race. As you turn the pages, you reach the section about the horns on their skulls. You read the curse of these horns, which are trying to be hidden with great care -When they give up the ghost, they will finally be free and upright. Then, using them will no longer be profitable.- (You have gained 10 mana).  ",12,600,1,1,0);
			}
			
			if o_obj1.number_text == 2 {
				
				if !instance_exists(o_continue) {
					instance_create_layer(327,350,"Instances",o_continue);	
				}
				draw_text_ext_transformed(320,y+35,"You carefully approach the skull. Every step you take towards the skull makes you shiver more and more. When your finger touches it, you see women being worshipped in a sacred ritual. You slowly move away, pulling your finger away in anxiety. (You have lost 10 mana).  ",12,600,1,1,0);
			}
			
		}
		
	}
	
	
	
	if global.text_obj2 == true {
		image_index = 1;
		if !instance_exists(o_choice) and o_obj2.number_text == 0 {
			instance_create_layer(452,304,"Instances",o_choice);
		}
		if !instance_exists(o_choice2) and o_obj2.number_text == 0 {
			instance_create_layer(452,324,"Instances",o_choice2);
		}
		if !instance_exists(o_choice3) and o_obj2.number_text == 0 {
			instance_create_layer(452,344,"Instances",o_choice3);
		}
		if artis == true {
			saydamlik+= 0.01;	
		} else {
			saydamlik-= 0.01;	
		}
		if saydamlik <= 0.2 {
			artis = true;	
		}
		if saydamlik >= 0.9 {
			artis = false;	
		}
		draw_set_alpha(saydamlik)
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_self();
		draw_set_font(fnt_damage);
		
		
		if o_obj2.number_ == 1 {
			if o_obj2.number_text == 0 {
				// MAKSİMUM 240-250 KARAKTER UZUNLUĞUNDA BİR YAZI OLSUN BURADA
			
				draw_text_ext_transformed(230,y+35,"You see a broken and rusty sword on the ground. This sword, which has no crest or pattern on it, does not seem important to you, but you wonder how it got here. ",12,400,1,1,0);
		
				//option 1
				draw_set_halign(fa_left);
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+20,"Think about it ",12,170,1,1,0);
				//option 2
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+40,"Try to merge it",12,170,1,1,0);
				//option 3
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+60,"Don't care it ",12,170,1,1,0);
			}
			
			if o_obj2.number_text == 1 {
				
				if !instance_exists(o_continue) {
					instance_create_layer(327,350,"Instances",o_continue);	
				}
				draw_text_ext_transformed(320,y+35,"The more you think about it, the more you realise you share the same feelings as that sword. You're both broken and in pieces. Neither of you has a place to belong. You think to yourself that at least I know why I ended up here, but you can't give a logical answer. Maybe you're just fooling yourself.- (You have lost 10 attack).  ",12,600,1,1,0);
			}
			
			if o_obj2.number_text == 2 {
				
				if !instance_exists(o_continue) {
					instance_create_layer(327,350,"Instances",o_continue);	
				}
				draw_text_ext_transformed(320,y+35,"You pick up the pieces of the sword one by one. When you put the pieces together to assemble it, you see the sword melting like sand and slipping out of your hand. You realise that the sword cannot be put together without its will. (You have gained nothing).  ",12,600,1,1,0);
			}
			
		}
	}
	
	
	
	if global.text_obj3 == true {
		image_index = 1;
		if !instance_exists(o_choice) and o_obj3.number_text == 0 {
			instance_create_layer(452,304,"Instances",o_choice);
		}
		if !instance_exists(o_choice2) and o_obj3.number_text == 0 {
			instance_create_layer(452,324,"Instances",o_choice2);
		}
		if !instance_exists(o_choice3) and o_obj3.number_text == 0 {
			instance_create_layer(452,344,"Instances",o_choice3);
		}
		if artis == true {
			saydamlik+= 0.01;	
		} else {
			saydamlik-= 0.01;	
		}
		if saydamlik <= 0.2 {
			artis = true;	
		}
		if saydamlik >= 0.9 {
			artis = false;	
		}
		draw_set_alpha(saydamlik)
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_self();
		draw_set_font(fnt_damage);
		
		
		if o_obj3.number_ == 1 {
			if o_obj3.number_text == 0 {
				// MAKSİMUM 240-250 KARAKTER UZUNLUĞUNDA BİR YAZI OLSUN BURADA
			
				draw_text_ext_transformed(230,y+35,"The sound of the dripping liquid is increasingly giving you a headache. As you look more carefully, you realise it's blood. You are confused. Whose blood could this blood belong to? ",12,400,1,1,0);
		
				//option 1
				draw_set_halign(fa_left);
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+20,"Taste it ",12,170,1,1,0);
				//option 2
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+40,"Use it like a mirror",12,170,1,1,0);
				//option 3
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+60,"Don't look at it ",12,170,1,1,0);
			}
			
			if o_obj3.number_text == 1 {
				
				if !instance_exists(o_continue) {
					instance_create_layer(327,350,"Instances",o_continue);	
				}
				draw_text_ext_transformed(320,y+35,"You approach the puddle of blood on the floor and dip two fingers into it. Then you bring your hand to your mouth and taste it. An inexplicable smile appears on your face. You are questioning what you have done, but you seem satisfied (You have gained 20 health).  ",12,600,1,1,0);
			}
			
			if o_obj3.number_text == 2 {
				
				if !instance_exists(o_continue) {
					instance_create_layer(327,350,"Instances",o_continue);	
				}
				draw_text_ext_transformed(320,y+35,"You're moving slowly towards the puddle. You bend down on your knees. The image you see in the reflection of the puddle of blood excites you. You remember again that you are still alive, that you have skin and a unique appearance. You talk to yourself - Did I need a puddle of blood to remember this? (You have gained 10 health).  ",12,600,1,1,0);
			}
			
		}
	}
	
	
	if global.text_obj4 == true {
		image_index = 1;
		if !instance_exists(o_choice) and o_obj4.number_text == 0 {
			instance_create_layer(452,304,"Instances",o_choice);
		}
		if !instance_exists(o_choice2) and o_obj4.number_text == 0 {
			instance_create_layer(452,324,"Instances",o_choice2);
		}
		if !instance_exists(o_choice3) and o_obj4.number_text == 0 {
			instance_create_layer(452,344,"Instances",o_choice3);
		}
		if artis == true {
			saydamlik+= 0.01;	
		} else {
			saydamlik-= 0.01;	
		}
		if saydamlik <= 0.2 {
			artis = true;	
		}
		if saydamlik >= 0.9 {
			artis = false;	
		}
		draw_set_alpha(saydamlik)
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_self();
		draw_set_font(fnt_damage);
		
		
		if o_obj4.number_ == 1 {
			if o_obj4.number_text == 0 {
				// MAKSİMUM 240-250 KARAKTER UZUNLUĞUNDA BİR YAZI OLSUN BURADA
			
				draw_text_ext_transformed(230,y+35,"You see a strange necklace hanging in the corner. It could've been worn there. You see a crimson object on the end of the necklace. ",12,400,1,1,0);
		
				//option 1
				draw_set_halign(fa_left);
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+20,"Approach it ",12,170,1,1,0);
				//option 2
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+40,"Try to wear it",12,170,1,1,0);
				//option 3
				// max 20-25 birim olsun uzunluk seçeneklerin
				draw_text_ext_transformed(470,y+60,"Ignore it ",12,170,1,1,0);
			}
			
			if o_obj4.number_text == 1 {
				
				if !instance_exists(o_continue) {
					instance_create_layer(327,350,"Instances",o_continue);	
				}
				draw_text_ext_transformed(320,y+35,"As you get closer, you see strange designs on the object at the end of the necklace. This necklace with patterns of eyes, mouth, nose and ears attracts your curiosity. You think that it might curse you to use it because it has fallen here and you walk away from it full of curiosity. (You have gained 20 mana).  ",12,600,1,1,0);
			}
			
			if o_obj4.number_text == 2 {
				
				if !instance_exists(o_continue) {
					instance_create_layer(327,350,"Instances",o_continue);	
				}
				draw_text_ext_transformed(320,y+35,"As you get closer, you can see the pattern of the necklace more clearly, it resembles a face. You succumb to your curiosity and wear the necklace. Suddenly a voice from the depths says - what is your wish ? - . You think about what to wish ? Nothing comes to your mind and the necklace, as if rejecting you, breaks off from your neck and floats into the depths (You have lost 20 health).  ",12,600,1,1,0);
			}
			
		}
	}
}
