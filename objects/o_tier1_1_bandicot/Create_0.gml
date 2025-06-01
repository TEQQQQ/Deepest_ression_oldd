/// @description Insert description here
// You can write your code in this editor
hasar_alma = false 



//stats
hp = 1000;
current_hp = hp;
mana = 10;
sapma = 0;
attack = 10;
armor = 2;
critical_rate = 0;
dodge_rate = 0;
bleed_damage = 10;
bleed_resistance = 5;
poison_damage = 15;
poison_resistance = 5;
flame_damage = 10;
flame_resistance = 5;
glacier_damage = 10;
glacier_resistance = 5;
electro_damage = 10;
electro_resistance = 5;

poison_timer = 0;
once = true;
electro_timer = 0;

real_bleed_res = bleed_resistance*10;
real_poison_res = poison_resistance*10;
real_glacier_res = glacier_resistance*10;
real_flame_res = flame_resistance*10;
real_electro_res = electro_resistance*10;

max_bleed_res = real_bleed_res;
max_poison_res = real_poison_res;
max_glacier_res = real_glacier_res;
max_flame_res = real_flame_res;
max_electro_res = real_electro_res;

zeka = choose(1,2,3);
act_time = 0;
critical_chance = 0;
dodge_chance = 0;
x_value = 0;
y_value = 0;


max_mana = mana;
max_hp = hp;



healthbar_width = 245;
healthbar_height = 22;
healthbar_x = 378;
healthbar_y = 2;

manabar_width = 206;
manabar_height = 22;
manabar_x = 417;
manabar_y = 27;

resbar_width = 12;
resbar_height = 60;
resbar_x = 624-15-15-15-15;
resbar_y = 291;

resbar_glacier_x = 624-15-15-15;
resbar_glacier_y = 291;

resbar_electro_x = 624-15-15;
resbar_electro_y = 291;

resbar_bleed_x = 624-15;
resbar_bleed_y = 291;

resbar_poison_x = 624;
resbar_poison_y = 291;

once2 = true;

once3 = true;

once4 = true;
stun = 0;
stun_timer = 0;

health_potion_100 = 0;
mana_potion_50 = 0;
health_potion_500 = 0;
mana_potion_200 = 0;
health_potion_1000 = 0;
mana_potion_500 = 0;
health_potion_2000 = 0;
mana_potion_1000 = 0;

//thiever1_3 için çalısıyor %20 altin bonusu amaçlı
gold_curse = 0;




