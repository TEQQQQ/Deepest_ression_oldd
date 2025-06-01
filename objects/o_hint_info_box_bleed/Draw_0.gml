/// @description Insert description here
// You can write your code in this editor



draw_self();
draw_set_font(fnt_small);
if global.character == 4 {

		draw_text_transformed(x+50,y+7,"your total bleed damage and bleed resistance",1,1,0);
		draw_text_transformed(x+20,y+23,"If you have taken bleed damage equal to 10 times ",1,1,0);
		draw_text_transformed(x+45,y+23+15,"of your bleed resistance. you begin to bleed, ",1,1,0);
		draw_text_transformed(x+35,y+23+30,"and each of your next skills or basic attacks deals ",1,1,0);
		draw_text_transformed(x+50,y+23+45,"damage equal to 2% of your maximum health ",1,1,0);
		draw_text_transformed(x+35,y+23+60,"if you have dealt bleed damage equal to 10 times ",1,1,0);
		draw_text_transformed(x+10,y+23+75,"of your opponent's bleed resistance, they begin to bleed ",1,1,0);
		draw_text_transformed(x+42,y+23+90,"and they recieve bleed damage same as yours ",1,1,0);

}


//if you've dealt bleed damage equal to 10 times of your opponent's bleed resistance, they start bleeding and it works the same as yours

