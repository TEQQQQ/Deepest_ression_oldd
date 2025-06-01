/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y+300,y);
//draw_text(x,y+320,time);
draw_set_font(fnt_small);
draw_text_transformed(x+18,y+13,"Your base luck ",1,1,0);
draw_text_transformed(x+128,y+13,"%",1,1,0);

if global.character == 4 {
	draw_text_transformed(x+143,y+13,string(o_rogue.luck),1,1,0);
	
}

draw_text_transformed(x+135,y+123,"%450",0.8,0.8,0);