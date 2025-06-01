/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_luck_hint));
draw_text(x+42,y,"%");
if global.character == 4 {
	draw_text(x+57,y,string(o_rogue.luck));
}
if global.character == 3 {
	draw_text(x+57,y,string(o_mage.luck));
}
if global.character == 1 {
	draw_text(x+57,y,string(o_knight.luck));
}
if global.character == 2 {
	draw_text(x+57,y,string(o_priest.luck));
}