/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_mana_hint));
if global.character == 4 {
	draw_text(x+40,y,string_format(o_rogue.max_mana,3,0));
}

if global.character == 3 {
	draw_text(x+40,y,string_format(o_mage.max_mana,3,0));
}

if global.character == 1 {
	draw_text(x+40,y,string_format(o_knight.max_mana,3,0));
}

if global.character == 2 {
	draw_text(x+40,y,string_format(o_priest.max_mana,3,0));
}