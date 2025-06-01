/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_stat_points));

if global.character == 4 {
	draw_text(x+18,y,string(o_rogue.stat_points));

}
if global.character == 3 {
	draw_text(x+18,y,string(o_mage.stat_points));

}
if global.character == 1 {
	draw_text(x+18,y,string(o_knight.stat_points));

}
if global.character == 2 {
	draw_text(x+18,y,string(o_priest.stat_points));

}