/// @description Insert description here
// You can write your code in this editor



draw_self();
draw_set_font(fnt_small);
if global.character == 4 {

		draw_text_transformed(x+25,y+7," Your total electric damage and electric resistance.",1,1,0);
		draw_text_transformed(x+15,y+23," If you have taken electric damage equal to 10 times of ",1,1,0);
		draw_text_transformed(x+27,y+23+15," your electric resistance. You begin to experience  ",1,1,0);
		draw_text_transformed(x+5,y+23+30," electric shocks, when you are in that moment, you cannot ",1,1,0);
		draw_text_transformed(x+20,y+23+45," use any kind of skills for 3 seconds if you have dealt  ",1,1,0);
		draw_text_transformed(x+18,y+23+60," electric damage equal to 10 times of your opponent's ",1,1,0);
		draw_text_transformed(x+19,y+23+75," electric, resistance they begin to experience electric. ",1,1,0);
		draw_text_transformed(x+20,y+23+90," and they cannot use any kind of skills for 3 seconds ",1,1,0);

}


//if you've dealt bleed damage equal to 10 times of your opponent's bleed resistance, they start bleeding and it works the same as yours
