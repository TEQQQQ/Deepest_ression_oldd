/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_defense_hint));
if global.character == 4 {
	draw_text(x+80,y,string_format(o_rogue.armor,3,0));
}
if global.character == 3 {
	draw_text(x+80,y,string_format(o_mage.armor,3,0));
}
if global.character == 1 {
	draw_text(x+80,y,string_format(o_knight.armor,3,0));
}
if global.character == 2 {
	draw_text(x+80,y,string_format(o_priest.armor,3,0));
}