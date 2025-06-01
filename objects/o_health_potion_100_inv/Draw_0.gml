/// @description Insert description here
// You can write your code in this editor


draw_self();


if o_rogue.health_potion_100 <= 9 {
	draw_text(x+22,y+17,o_rogue.health_potion_100);
} else if o_rogue.health_potion_100 <= 99 {
	draw_text(x+14,y+17,o_rogue.health_potion_100);
} else if o_rogue.health_potion_100 <= 999 {
	draw_text(x+6,y+17,o_rogue.health_potion_100);	
}


draw_text(x,y,global.skill);




