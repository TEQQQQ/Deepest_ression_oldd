/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_crit_hint));
draw_text(x+21,y,"%");
if global.character == 4 {
	draw_text(x+35,y,string(o_rogue.critical_rate));
}

if global.character == 3 {
	draw_text(x+35,y,string(o_mage.critical_rate));
}
if global.character == 1 {
	draw_text(x+35,y,string(o_knight.critical_rate));
}
if global.character == 2 {
	draw_text(x+35,y,string(o_priest.critical_rate));
}