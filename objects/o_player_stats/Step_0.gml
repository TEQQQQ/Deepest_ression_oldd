/// @description Insert description here
// You can write your code in this editor


/*

if global.character == 1{
	global.hp = 500
	global.mana = 100
	global.attack = 50;
	global.luck = 0;
	global.armor = 20;
	global.str = global.str;
	global.dex = global.dex;
	global.vit = global.vit;
	global.mp = global.mp;
	global.int = global.int;
	global.critical_rate = 0;
	global.dodge_rate = 0;
	global.bleed_damage = 0;
	global.bleed_resistance = 10;
	global.poison_damage = 0;
	global.poison_resistance = 10;
	global.flame_damage = 0;
	global.flame_resistance = 10;
	global.glacier_damage = 0;
	global.glacier_resistance = 10;
	global.electro_damage = 0;
	global.electro_resistance = 10;
	global.max_mana = global.mana;
	global.max_hp = global.hp;
	
}


if global.character == 2{
	global.hp = 300
	global.mana = 200
	global.attack = 30;
	global.luck = 0;
	global.armor = 10;
	global.str = global.str;
	global.dex = global.dex;
	global.vit = global.vit;
	global.mp = global.mp;
	global.int = global.int;
	global.critical_rate = 0;
	global.dodge_rate = 0;
	global.bleed_damage = 0;
	global.bleed_resistance = 10;
	global.poison_damage = 0;
	global.poison_resistance = 10;
	global.flame_damage = 0;
	global.flame_resistance = 10;
	global.glacier_damage = 0;
	global.glacier_resistance = 10;
	global.electro_damage = 0;
	global.electro_resistance = 10;
	global.max_mana = global.mana;
	global.max_hp = global.hp;
	
}


if global.character == 3{
	global.hp = 150;
	global.mana = 500
	global.attack = 20;
	global.luck = 0;
	global.armor = 5;
	global.str = global.str;
	global.dex = global.dex;
	global.vit = global.vit;
	global.mp = global.mp;
	global.int = global.int;
	global.critical_rate = 0;
	global.dodge_rate = 0;
	global.bleed_damage = 0;
	global.bleed_resistance = 10;
	global.poison_damage = 0;
	global.poison_resistance = 10;
	global.flame_damage = 100;
	global.flame_resistance = 10;
	global.glacier_damage = 100;
	global.glacier_resistance = 10;
	global.electro_damage = 100;
	global.electro_resistance = 10;
	global.max_mana = global.mana;
	global.max_hp = global.hp;
	
}
// ileride globallerle ilgili sorun yaşarsan save de vs kesinlikle bunları o_player_stats.hp şekline çevir dene

//rogue
if global.character == 4{
	
	global.hp = 200;
	global.mana = 200
	global.attack = 20;
	global.luck = 0;
	global.armor = 5;
	global.str = global.str;
	global.dex = global.dex;
	global.vit = global.vit;
	global.mp = global.mp;
	global.int = global.int;
	global.critical_rate = 0;
	global.dodge_rate = 0;
	global.bleed_damage = 0;
	global.bleed_resistance = 10;
	global.poison_damage = 0;
	global.poison_resistance = 10;
	global.flame_damage = 0;
	global.flame_resistance = 10;
	global.glacier_damage = 0;
	global.glacier_resistance = 10;
	global.electro_damage = 0;
	global.electro_resistance = 10;
	global.max_mana = global.mana;
	global.max_hp = global.hp;
}
*/


if global.character == 4 {
	if bir_kere == true {
		instance_create_layer(x,y,"Instances",o_rogue);	
		bir_kere = false;
	}
}

if global.character == 3 {
	if bir_kere == true {
		instance_create_layer(x,y,"Instances",o_mage);	
		bir_kere = false;
	}
}
if global.character == 1 {
	if bir_kere == true {
		instance_create_layer(x,y,"Instances",o_knight);	
		bir_kere = false;
	}
}
if global.character == 2 {
	if bir_kere == true {
		instance_create_layer(x,y,"Instances",o_priest);	
		bir_kere = false;
	}
}