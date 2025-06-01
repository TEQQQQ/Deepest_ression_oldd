/// @description Insert description here
// You can write your code in this editor



draw_self();
draw_set_font(fnt_small);
if global.character == 4 {

		draw_text_transformed(x+130,y+7,"your total armor ",1,1,0);
		draw_text_transformed(x+42,y+23,"elemental attacks are not effected by armor ",1,1,0);
		draw_text_transformed(x+22,y+23+15,"your taken damage = enemy attack - your armor",1,1,0);

}




