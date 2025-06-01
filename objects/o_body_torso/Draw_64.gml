/// @description Insert description here
// You can write your code in this editor






draw_sprite(s_healthbar_player,0,healthbar_x,healthbar_y);
draw_sprite_stretched(s_health_player,0,healthbar_x-69,healthbar_y-5,min((hp/max_hp)* healthbar_width,healthbar_width),healthbar_height);
//draw_sprite(s_healthbar_enemy,0,healthbar_x,healthbar_y);
draw_set_font(fnt_health);
draw_text_transformed(healthbar_x-17,healthbar_y-4,string(hp)+"/"+string(max_hp),0.2,0.2,0);

//manabar

draw_sprite(s_manabar_player,0,manabar_x,manabar_y);
draw_sprite_stretched(s_mana_player,0,manabar_x-43,manabar_y-5,min((mana/max_mana)* manabar_width,manabar_width),manabar_height);
draw_text_transformed(manabar_x-16,manabar_y-4,string(mana)+"/"+string(max_mana),0.2,0.2,0);