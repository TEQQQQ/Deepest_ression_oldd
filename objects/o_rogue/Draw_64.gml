/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white)
draw_text(200,200,real_bleed_res);
if room == Room_character_stats {

	draw_sprite(s_healthbar_player,0,healthbar_x,healthbar_y);
	draw_sprite_stretched(s_health_player,0,healthbar_x-1,healthbar_y-5,min((hp/max_hp)* healthbar_width,healthbar_width),healthbar_height);
	//draw_sprite(s_healthbar_enemy,0,healthbar_x,healthbar_y);
	draw_set_font(fnt_health);
	draw_text_transformed(healthbar_x-17,healthbar_y-4,string_format(hp,3,0)+"/"+string_format(max_hp,3,0),0.2,0.2,0);

	//manabar

	draw_sprite(s_manabar_player,0,manabar_x,manabar_y);
	draw_sprite_stretched(s_mana_player,0,manabar_x-43,manabar_y-5,min((mana/max_mana)* manabar_width,manabar_width),manabar_height);
	draw_text_transformed(manabar_x-16,manabar_y-4,string_format(mana,3,0)+"/"+string_format(max_mana,3,0),0.2,0.2,0);

}


if room == Room1 {
	
	draw_sprite(s_healthbar_player,0,healthbar_x,healthbar_y);
	draw_sprite_stretched(s_health_player,0,healthbar_x+1,healthbar_y+1,min((hp/max_hp)* healthbar_width,healthbar_width),healthbar_height);
	//draw_sprite(s_healthbar_enemy,0,healthbar_x,healthbar_y);
	draw_set_font(fnt_health);
	draw_text_transformed(healthbar_x+102,healthbar_y+4,string_format(hp,3,0)+"/"+string_format(max_hp,3,0),0.2,0.2,0);

	//manabar

	draw_sprite(s_manabar_player,0,manabar_x,manabar_y);
	draw_sprite_stretched(s_mana_player,0,manabar_x+1,manabar_y+1,min((mana/max_mana)* manabar_width,manabar_width),manabar_height);
	draw_text_transformed(manabar_x+84,manabar_y+4,string_format(mana,3,0)+"/"+string_format(max_mana,3,0),0.2,0.2,0);
	
	//resbars
	//resbar_flame
	if real_flame_res <= 0 {
		draw_sprite(s_res_bar_broken,0,resbar_x,resbar_y);
	} else {
		draw_sprite(s_res_bar,0,resbar_x,resbar_y);
	}
	//draw_sprite_stretched(s_res_flame,0,resbar_x+3,resbar_y+3,min((real_flame_res/max_flame_res)* resbar_height,resbar_height),resbar_width);
	var new_height_flame = min((real_flame_res / max_flame_res) * resbar_height, resbar_height);
	var new_y_flame = resbar_y + 4 + (resbar_height - new_height_flame);
	draw_sprite_stretched(s_res_flame, 0, resbar_x + 1, new_y_flame, resbar_width, new_height_flame);

	//resbar_glacier
	if real_glacier_res <= 0 {
		draw_sprite(s_res_bar_broken,0,resbar_glacier_x,resbar_glacier_y);
	} else {
		draw_sprite(s_res_bar,0,resbar_glacier_x,resbar_glacier_y);
	}
	//draw_sprite_stretched(s_res_glacier,0,resbar_glacier_x+3,resbar_glacier_y+3,min((real_glacier_res/max_glacier_res)* resbar_width,resbar_width),resbar_height);
	var new_height_glacier = min((real_glacier_res / max_glacier_res) * resbar_height, resbar_height);
	var new_y_glacier = resbar_glacier_y + 4 + (resbar_height - new_height_glacier);
	draw_sprite_stretched(s_res_glacier, 0, resbar_glacier_x + 1, new_y_glacier, resbar_width, new_height_glacier);

	//resbar_electro
	if real_electro_res <= 0 {
		draw_sprite(s_res_bar_broken,0,resbar_electro_x,resbar_electro_y);
	} else {
		draw_sprite(s_res_bar,0,resbar_electro_x,resbar_electro_y);
	}
	//draw_sprite_stretched(s_res_electro,0,resbar_electro_x+3,resbar_electro_y+3,min((real_electro_res/max_electro_res)* resbar_width,resbar_width),resbar_height);
	var new_height_electro = min((real_electro_res / max_electro_res) * resbar_height, resbar_height);
	var new_y_electro = resbar_electro_y + 4 + (resbar_height - new_height_electro);
	draw_sprite_stretched(s_res_electro, 0, resbar_electro_x + 1, new_y_electro, resbar_width, new_height_electro);

	//resbar_bleed
	if real_bleed_res <= 0 {
		draw_sprite(s_res_bar_broken,0,resbar_bleed_x,resbar_bleed_y);
	} else {
		draw_sprite(s_res_bar,0,resbar_bleed_x,resbar_bleed_y);
	}
	//draw_sprite_stretched(s_res_bleed,0,resbar_bleed_x+3,resbar_bleed_y+3,min((real_bleed_res/max_bleed_res)* resbar_width,resbar_width),resbar_height);
	var new_height = min((real_bleed_res / max_bleed_res) * resbar_height, resbar_height);
	var new_y = resbar_bleed_y + 4 + (resbar_height - new_height);
	draw_sprite_stretched(s_res_bleed, 0, resbar_bleed_x + 1, new_y, resbar_width, new_height);


	//resbar_poison
	if real_poison_res <= 0 {
		draw_sprite(s_res_bar_broken,0,resbar_poison_x,resbar_poison_y);
	} else {
		draw_sprite(s_res_bar,0,resbar_poison_x,resbar_poison_y);
	}
	//draw_sprite_stretched(s_res_poison,0,resbar_poison_x+3,resbar_poison_y+3,min((real_poison_res/max_poison_res)* resbar_width,resbar_width),resbar_height);
	var new_height_poison = min((real_poison_res / max_poison_res) * resbar_height, resbar_height);
	var new_y_poison = resbar_poison_y + 4 + (resbar_height - new_height_poison);
	draw_sprite_stretched(s_res_poison, 0, resbar_poison_x + 1, new_y_poison, resbar_width, new_height_poison);
}
