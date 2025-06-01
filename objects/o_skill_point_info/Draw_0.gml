/// @description Insert description here
// You can write your code in this editor



draw_self();
draw_set_font(fnt_small);

draw_text(x+20,y+13,"Level");

draw_text(x+180,y+13,"Available skill points");

draw_text(x+390,y+13,"Skill Page");
draw_text(x+512,y+13,"/");
draw_text(x+520,y+13,"4");

if global.character == 4 {
	draw_text(x+500,y+13,string(o_thievery.skill_page+1));

}



