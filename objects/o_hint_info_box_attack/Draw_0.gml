/// @description Insert description here
// You can write your code in this editor



draw_self();
draw_set_font(fnt_small);
if global.character == 4 {

		draw_text_transformed(x+40,y+7,"your total attack, Has a 10% deviation rate ",1,1,0);
		draw_text_transformed(x+50,y+23,"the basic damage you deal to enemies ",1,1,0);
		draw_text_transformed(x+30,y+23+15,"e.g. If your attack is 100, using a skill or basic ",1,1,0);
		draw_text_transformed(x+50,y+23+30,"attack sets it randomly between 90-110. ",1,1,0);
		draw_text_transformed(x+10,y+23+45,"enemy taken damage = your attack - enemy armor ",1,1,0);

}




