/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_bleed_hint));
if global.character == 4 {
	draw_text(x+52,y,string_format(o_rogue.bleed_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_rogue.bleed_resistance,3,0));
}

if global.character == 3 {
	draw_text(x+52,y,string_format(o_mage.bleed_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_mage.bleed_resistance,3,0));
}

if global.character == 1 {
	draw_text(x+52,y,string_format(o_knight.bleed_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_knight.bleed_resistance,3,0));
}
if global.character == 2 {
	draw_text(x+52,y,string_format(o_priest.bleed_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_priest.bleed_resistance,3,0));
}