/// @description Insert description here
// You can write your code in this editor






if position == 0 {
	if image_xscale >= 1 {
		draw_set_color(c_white);
		draw_set_font(fnt_skill)
		draw_text_transformed(x-50,y,"Critical Rate =",0.05,0.05,0);
		draw_text_transformed(x+28,y,"100",0.05,0.05,0);

		draw_text_transformed(x-50,y-10,"Dodge Rate =",0.05,0.05,0);
		draw_text_transformed(x+28,y-10,"100",0.05,0.05,0);

		draw_text_transformed(x-50,y-20,"Mana =",0.05,0.05,0);
		draw_text_transformed(x+28,y-20,"100",0.05,0.05,0);

		draw_text_transformed(x-50,y-30,"Health =",0.05,0.05,0);
		draw_text_transformed(x+28,y-30,"100",0.05,0.05,0);

		draw_text_transformed(x-50,y-40,"Defense =",0.05,0.05,0);
		draw_text_transformed(x+28,y-40,"100",0.05,0.05,0);

		draw_text_transformed(x-50,y-50,"Attack =",0.05,0.05,0);
		draw_text_transformed(x+28,y-50,"100",0.05,0.05,0);

		draw_text_transformed(x-50,y+10,"Bleed Dmg & Res =",0.05,0.05,0);
		draw_text_transformed(x+15,y+10,"1254 / 3245",0.05,0.05,0);

		draw_text_transformed(x-50,y+20,"Poison Dmg & Res =",0.05,0.05,0);
		draw_text_transformed(x+15,y+20,"1254 / 3245",0.05,0.05,0);

		draw_text_transformed(x-50,y+30,"Flame Dmg & Res =",0.05,0.05,0);
		draw_text_transformed(x+15,y+30,"1254 / 3245",0.05,0.05,0);

		draw_text_transformed(x-50,y+40,"Glacier Dmg & Res =",0.05,0.05,0);
		draw_text_transformed(x+15,y+40,"1254 / 3245",0.05,0.05,0);

		draw_text_transformed(x-50,y+50,"Electric Dmg & Res =",0.05,0.05,0);
		draw_text_transformed(x+15,y+50,"1254 / 3245",0.05,0.05,0);
	}
}



if position == 1 {
	if image_xscale >= 1 {
		draw_sprite(s_tier1_1_bandicot , 0, x-64,y-64);
		
	}
}

if position == 2 {
	if image_xscale >= 1 {
		image_index = 1;
		
	}
}