/// @description Insert description here
// You can write your code in this editor



draw_self();
draw_set_font(fnt_small);
if global.character == 4 {

		draw_text_transformed(x+40,y+7," Your total glacier damage and glacier resistance.",1,1,0);
		draw_text_transformed(x+30,y+23," If you have taken glacier damage equal to 10 times ",1,1,0);
		draw_text_transformed(x+20,y+23+15," of your glacier resistance. You begin to freeze, when ",1,1,0);
		draw_text_transformed(x+20,y+23+30," you are freeze your skill and basic attack cooldowns",1,1,0);
		draw_text_transformed(x+5,y+23+45," are increases by 100% if you have dealt glacier damage ",1,1,0);
		draw_text_transformed(x+15,y+23+60," equal to 10 times of your opponent's glacier resistance,",1,1,0);
		draw_text_transformed(x+25,y+23+75," they begin to freeze. when they are freeze they skill",1,1,0);
		draw_text_transformed(x+25,y+23+90," and basic attack cooldowns are increases by 100% ",1,1,0);

}


//if you've dealt bleed damage equal to 10 times of your opponent's bleed resistance, they start bleeding and it works the same as yours
