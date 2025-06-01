/// @description Insert description here
// You can write your code in this editor
if global.text_info == true {
	draw_self();
	draw_set_font(fnt_damage);
	draw_text_transformed(x-15,y+8,"Floor",1,1,0);
	draw_text_transformed(x-20,y+20,string(floor(global.stage))+" of 30",1,1,0);
}

/*

draw_self();
draw_set_font(fnt_skill3);
draw_text_transformed(x-15,y+8,"Floor",0.05,0.05,0);
draw_text_transformed(x-20,y+20,"1 of 30",0.05,0.05,0);

*/