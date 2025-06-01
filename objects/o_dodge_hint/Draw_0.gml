/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_dodge_hint));
draw_text(x+21,y,"%");
if global.character == 4 {
	draw_text(x+35,y,string(o_rogue.dodge_rate));
}
if global.character == 3 {
	draw_text(x+35,y,string(o_mage.dodge_rate));
}
if global.character == 1 {
	draw_text(x+35,y,string(o_knight.dodge_rate));
}
if global.character == 2 {
	draw_text(x+35,y,string(o_priest.dodge_rate));
}