/// @description Insert description here
// You can write your code in this editor



draw_self();
draw_set_font(fnt_small);
if global.character == 4 {

		draw_text_transformed(x+70,y+7,"your total health ",1,1,0);
		draw_text_transformed(x+42,y+23,"decreases with damage ",1,1,0);
		draw_text_transformed(x+50,y+23+15,"if it drops (0) you'll die ",1,1,0);

}




