/// @description Insert description here
// You can write your code in this editor



draw_self();
draw_set_font(fnt_small);
if global.character == 4 {

		draw_text_transformed(x+50,y+7,"your total poison damage and poison resistance",1,1,0);
		draw_text_transformed(x+20,y+23,"If you have taken poison damage equal to 10 times ",1,1,0);
		draw_text_transformed(x+45,y+23+15,"of your poison resistance. you begin to poisoned, ",1,1,0);
		draw_text_transformed(x+35,y+23+30,"and each seconds you recieve poison damage ",1,1,0);
		draw_text_transformed(x+50,y+23+45,"equal to 0.5% of your maximum health if you ",1,1,0);
		draw_text_transformed(x+35,y+23+60,"have dealt poison damage equal to 10 times of your ",1,1,0);
		draw_text_transformed(x+25,y+23+75,"opponent's poison resistance, they begin to poisoned ",1,1,0);
		draw_text_transformed(x+42,y+23+90,"and they recieve poison damage same as yours ",1,1,0);

}


//if you've dealt bleed damage equal to 10 times of your opponent's bleed resistance, they start bleeding and it works the same as yours

