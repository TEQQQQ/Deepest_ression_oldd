/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_flame_hint));
if global.character == 4 {
	draw_text(x+52,y,string_format(o_rogue.flame_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_rogue.flame_resistance,3,0));

}

if global.character == 3 {
	draw_text(x+52,y,string_format(o_mage.flame_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_mage.flame_resistance,3,0));

}
if global.character == 1 {
	draw_text(x+52,y,string_format(o_knight.flame_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_knight.flame_resistance,3,0));

}

if global.character == 2 {
	draw_text(x+52,y,string_format(o_priest.flame_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_priest.flame_resistance,3,0));

}
