/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_poison_hint));

if global.character == 4 {
	draw_text(x+52,y,string_format(o_rogue.poison_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_rogue.poison_resistance,3,0));
}

if global.character == 3 {
	draw_text(x+52,y,string_format(o_mage.poison_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_mage.poison_resistance,3,0));
}

if global.character == 1 {
	draw_text(x+52,y,string_format(o_knight.poison_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_knight.poison_resistance,3,0));
}

if global.character == 2 {
	draw_text(x+52,y,string_format(o_priest.poison_damage,3,0));
	draw_text(x+82,y,"/");
	draw_text(x+87,y,string_format(o_priest.poison_resistance,3,0));
}