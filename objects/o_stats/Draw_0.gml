/// @description Insert description here
// You can write your code in this editor
if room = Room_character_stats {
	sprite_index = s_stats;	
	draw_self();
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_small);
	draw_text_transformed(x-147,y-158,"Available stat points ",1,1,0);

	draw_text_transformed(x+62,y-158,"Level ",1,1,0);


	draw_text_transformed(x-147,y-138,"Strength ",1,1,0);


	draw_text_transformed(x-147,y-118,"Dexterity ",1,1,0);


	draw_text_transformed(x-147,y-98,"Vitality ",1,1,0);


	draw_text_transformed(x-147,y-78,"Magic Power",1,1,0);


	draw_text_transformed(x-147,y-58,"Intelligence ",1,1,0);




	draw_text_transformed(x-147,y-18,"Health ",1,1,0);


	draw_text_transformed(x+7,y-18,"Mana ",1,1,0);


	draw_text_transformed(x-147,y+2,"Attack ",1,1,0);


	//draw_text_transformed(256,256,x,1,1,0);
	//draw_text_transformed(256,300,time,1,1,0);


	draw_text_transformed(x+7,y+2,"Luck ",1,1,0);


	draw_text_transformed(x-147,y+22,"Armor ",1,1,0);


	draw_text_transformed(x-151,y+42,"Critical Rate ",0.95,0.95,0);


	draw_text_transformed(x+1,y+42,"Dodge Rate ",0.95,0.95,0);


	draw_text_transformed(x-147,y+62,"Bleed Dmg & Res ",1,1,0);


	draw_text_transformed(x-147,y+82,"Poison Dmg & Res ",1,1,0);


	draw_text_transformed(x-147,y+102,"Flame Dmg & Res ",1,1,0);


	draw_text_transformed(x-147,y+122,"Glacier Dmg & Res ",1,1,0);


	draw_text_transformed(x-147,y+142,"Electric Dmg & Res ",1,1,0);
}


if global.text_info == true {
	sprite_index = s_stats;	
	draw_self();
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_small);
	draw_text_transformed(x-147,y-158,"Available stat points ",1,1,0);

	draw_text_transformed(x+62,y-158,"Level ",1,1,0);


	draw_text_transformed(x-147,y-138,"Strength ",1,1,0);


	draw_text_transformed(x-147,y-118,"Dexterity ",1,1,0);


	draw_text_transformed(x-147,y-98,"Vitality ",1,1,0);


	draw_text_transformed(x-147,y-78,"Magic Power",1,1,0);


	draw_text_transformed(x-147,y-58,"Intelligence ",1,1,0);




	draw_text_transformed(x-147,y-18,"Health ",1,1,0);


	draw_text_transformed(x+7,y-18,"Mana ",1,1,0);


	draw_text_transformed(x-147,y+2,"Attack ",1,1,0);


	//draw_text_transformed(256,256,x,1,1,0);
	//draw_text_transformed(256,300,time,1,1,0);


	draw_text_transformed(x+7,y+2,"Luck ",1,1,0);


	draw_text_transformed(x-147,y+22,"Armor ",1,1,0);


	draw_text_transformed(x-151,y+42,"Critical Rate ",0.95,0.95,0);


	draw_text_transformed(x+1,y+42,"Dodge Rate ",0.95,0.95,0);


	draw_text_transformed(x-147,y+62,"Bleed Dmg & Res ",1,1,0);


	draw_text_transformed(x-147,y+82,"Poison Dmg & Res ",1,1,0);


	draw_text_transformed(x-147,y+102,"Flame Dmg & Res ",1,1,0);


	draw_text_transformed(x-147,y+122,"Glacier Dmg & Res ",1,1,0);


	draw_text_transformed(x-147,y+142,"Electric Dmg & Res ",1,1,0);

} 
