/// @description Insert description here
// You can write your code in this editor



draw_self();
draw_set_font(fnt_small);
if global.character == 4 {

		draw_text_transformed(x+50,y+7," your total flame damage and flame resistance.",1,1,0);
		draw_text_transformed(x+35,y+23," If you have taken flame damage equal to 10 times ",1,1,0);
		draw_text_transformed(x+55,y+23+15," of your flame resistance. you begin to burn, ",1,1,0);
		draw_text_transformed(x+15,y+23+30," when you are burning your total armor and resistance",1,1,0);
		draw_text_transformed(x+22,y+23+45," are reduced by 50% if you have dealt flame damage ",1,1,0);
		draw_text_transformed(x+15,y+23+60," equal to 10 times of your opponent's flame resistance,",1,1,0);
		draw_text_transformed(x+60,y+23+75," they begin to burn. when they are burning",1,1,0);
		draw_text_transformed(x+42,y+23+90," they armor and resistance are reduced by 50% ",1,1,0);

}


//if you've dealt bleed damage equal to 10 times of your opponent's bleed resistance, they start bleeding and it works the same as yours

