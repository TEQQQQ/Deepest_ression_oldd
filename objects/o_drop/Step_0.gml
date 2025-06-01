/// @description Insert description here
// You can write your code in this editor


if hp_potion_100_drop_rate >= hp_potion_100_drop_chance {
	hp_drop = true;	
	hp_potion_100_drop_rate = -1;
}

if mp_potion_100_drop_rate >= mp_potion_100_drop_chance {
	mp_drop = true;	
	mp_potion_100_drop_rate = -1;
}

if pacavra_helmet_drop_rate >= pacavra_helmet_drop_chance {
	pacavra_helmet_drop = true;
	pacavra_helmet_drop_rate = -1;
}

if leather_helmet_drop_rate >= leather_helmet_drop_chance {
	leather_helmet_drop = true;
	leather_helmet_drop_rate = -1;
}

if pacavra_chest_drop_rate >= pacavra_chest_drop_chance {
	pacavra_chest_drop = true;
	pacavra_chest_drop_rate = -1;
}

if pacavra_pants_drop_rate >= pacavra_pants_drop_chance {
	pacavra_pants_drop = true;
	pacavra_pants_drop_rate = -1;
}

if pacavra_boots_drop_rate >= pacavra_boots_drop_chance {
	pacavra_boots_drop = true;
	pacavra_boots_drop_rate = -1;
}

if pacavra_gloves_drop_rate >= pacavra_gloves_drop_chance {
	pacavra_gloves_drop = true;
	pacavra_gloves_drop_rate = -1;
}

if ring_serpent_drop_rate >= ring_serpent_drop_chance {
	ring_serpent_drop = true;
	ring_serpent_drop_rate = -1;
}

if ring_lousy_drop_rate >= ring_lousy_drop_chance {
	ring_lousy_drop = true;
	ring_lousy_drop_rate = -1;
}

if belt_lichking_drop_rate >= belt_lichking_drop_chance {
	belt_lichking_drop = true;
	belt_lichking_drop_rate = -1;
}

if neck_flashily_drop_rate >= neck_flashily_drop_chance {
	neck_flashily_drop = true;
	neck_flashily_drop_rate = -1;
}

if earring_emerald_drop_rate >= earring_emerald_drop_chance {
	earring_emerald_drop = true;
	earring_emerald_drop_rate = -1;
}


if gold_drop  == true {
	if !instance_exists(o_gold_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_gold_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_gold_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_gold_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_gold_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_gold_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_gold_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_gold_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_gold_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_gold_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_gold_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_gold_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_gold_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_gold_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_gold_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_gold_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_gold_drop);
			place_16 = false;
		}
		gold_drop = false;
	}
}

if hp_drop == true {
	if !instance_exists(o_health_potion_100_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_health_potion_100_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_health_potion_100_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_health_potion_100_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_health_potion_100_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_health_potion_100_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_health_potion_100_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_health_potion_100_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_health_potion_100_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_health_potion_100_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_health_potion_100_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_health_potion_100_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_health_potion_100_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_health_potion_100_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_health_potion_100_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_health_potion_100_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_health_potion_100_drop);
			place_16 = false;
		}
		hp_drop = false;
	}
}

if mp_drop == true {
	if !instance_exists(o_mana_potion_50_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_mana_potion_50_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_mana_potion_50_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_mana_potion_50_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_mana_potion_50_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_mana_potion_50_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_mana_potion_50_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_mana_potion_50_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_mana_potion_50_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_mana_potion_50_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_mana_potion_50_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_mana_potion_50_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_mana_potion_50_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_mana_potion_50_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_mana_potion_50_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_mana_potion_50_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_mana_potion_50_drop);
			place_16 = false;
		}
		mp_drop = false;
	}
}


if pacavra_helmet_drop == true {
	if !instance_exists(o_rogue_pacavra_helmet_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_pacavra_helmet_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_pacavra_helmet_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_pacavra_helmet_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_pacavra_helmet_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_pacavra_helmet_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_pacavra_helmet_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_pacavra_helmet_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_pacavra_helmet_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_pacavra_helmet_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_pacavra_helmet_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_pacavra_helmet_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_pacavra_helmet_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_pacavra_helmet_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_pacavra_helmet_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_pacavra_helmet_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_pacavra_helmet_drop);
			place_16 = false;
		}
		pacavra_helmet_drop = false;
	}
}



if leather_helmet_drop == true {
	if !instance_exists(o_rogue_leather_helmet_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_leather_helmet_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_leather_helmet_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_leather_helmet_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_leather_helmet_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_leather_helmet_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_leather_helmet_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_leather_helmet_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_leather_helmet_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_leather_helmet_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_leather_helmet_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_leather_helmet_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_leather_helmet_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_leather_helmet_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_leather_helmet_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_leather_helmet_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_leather_helmet_drop);
			place_16 = false;
		}
		leather_helmet_drop = false;
	}
}




if pacavra_chest_drop == true {
	if !instance_exists(o_rogue_pacavra_chest_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_pacavra_chest_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_pacavra_chest_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_pacavra_chest_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_pacavra_chest_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_pacavra_chest_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_pacavra_chest_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_pacavra_chest_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_pacavra_chest_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_pacavra_chest_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_pacavra_chest_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_pacavra_chest_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_pacavra_chest_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_pacavra_chest_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_pacavra_chest_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_pacavra_chest_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_pacavra_chest_drop);
			place_16 = false;
		}
		pacavra_chest_drop = false;
	}
}



if pacavra_pants_drop == true {
	if !instance_exists(o_rogue_pacavra_pants_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_pacavra_pants_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_pacavra_pants_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_pacavra_pants_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_pacavra_pants_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_pacavra_pants_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_pacavra_pants_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_pacavra_pants_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_pacavra_pants_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_pacavra_pants_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_pacavra_pants_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_pacavra_pants_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_pacavra_pants_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_pacavra_pants_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_pacavra_pants_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_pacavra_pants_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_pacavra_pants_drop);
			place_16 = false;
		}
		pacavra_pants_drop = false;
	}
}





if pacavra_boots_drop == true {
	if !instance_exists(o_rogue_pacavra_boots_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_pacavra_boots_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_pacavra_boots_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_pacavra_boots_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_pacavra_boots_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_pacavra_boots_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_pacavra_boots_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_pacavra_boots_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_pacavra_boots_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_pacavra_boots_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_pacavra_boots_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_pacavra_boots_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_pacavra_boots_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_pacavra_boots_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_pacavra_boots_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_pacavra_boots_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_pacavra_boots_drop);
			place_16 = false;
		}
		
		pacavra_boots_drop = false;
	}
}




if pacavra_gloves_drop == true {
	if !instance_exists(o_rogue_pacavra_gloves_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_pacavra_gloves_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_pacavra_gloves_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_pacavra_gloves_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_pacavra_gloves_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_pacavra_gloves_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_pacavra_gloves_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_pacavra_gloves_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_pacavra_gloves_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_pacavra_gloves_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_pacavra_gloves_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_pacavra_gloves_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_pacavra_gloves_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_pacavra_gloves_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_pacavra_gloves_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_pacavra_gloves_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_pacavra_gloves_drop);
			place_16 = false;
		}
		pacavra_gloves_drop = false;
	}
}



if ring_serpent_drop == true {
	if !instance_exists(o_rogue_ring_serpent_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_ring_serpent_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_ring_serpent_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_ring_serpent_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_ring_serpent_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_ring_serpent_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_ring_serpent_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_ring_serpent_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_ring_serpent_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_ring_serpent_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_ring_serpent_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_ring_serpent_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_ring_serpent_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_ring_serpent_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_ring_serpent_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_ring_serpent_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_ring_serpent_drop);
			place_16 = false;
		}
		ring_serpent_drop = false;
	}
}




if ring_lousy_drop == true {
	if !instance_exists(o_rogue_ring_lousy_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_ring_lousy_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_ring_lousy_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_ring_lousy_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_ring_lousy_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_ring_lousy_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_ring_lousy_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_ring_lousy_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_ring_lousy_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_ring_lousy_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_ring_lousy_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_ring_lousy_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_ring_lousy_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_ring_lousy_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_ring_lousy_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_ring_lousy_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_ring_lousy_drop);
			place_16 = false;
		}
		ring_lousy_drop = false;
	}
}



if belt_lichking_drop == true {
	if !instance_exists(o_rogue_belt_lichking_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_belt_lichking_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_belt_lichking_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_belt_lichking_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_belt_lichking_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_belt_lichking_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_belt_lichking_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_belt_lichking_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_belt_lichking_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_belt_lichking_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_belt_lichking_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_belt_lichking_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_belt_lichking_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_belt_lichking_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_belt_lichking_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_belt_lichking_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_belt_lichking_drop);
			place_16 = false;
		}
		belt_lichking_drop = false;
	}
}



if neck_flashily_drop == true {
	if !instance_exists(o_rogue_neck_flashily_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_neck_flashily_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_neck_flashily_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_neck_flashily_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_neck_flashily_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_neck_flashily_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_neck_flashily_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_neck_flashily_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_neck_flashily_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_neck_flashily_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_neck_flashily_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_neck_flashily_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_neck_flashily_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_neck_flashily_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_neck_flashily_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_neck_flashily_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_neck_flashily_drop);
			place_16 = false;
		}
		neck_flashily_drop = false;
	}
}




if earring_emerald_drop == true {
	if !instance_exists(o_rogue_earring_emerald_drop){
		if place_1 == true {
			instance_create_layer(x+4,y+4,"effects",o_rogue_earring_emerald_drop);
			place_1 = false;
		} else if place_2 == true {
			instance_create_layer(x+41,y+4,"effects",o_rogue_earring_emerald_drop);
			place_2 = false;
		} else if place_3 == true {
			instance_create_layer(x+78,y+4,"effects",o_rogue_earring_emerald_drop);
			place_3 = false;
		} else if place_4 == true {
			instance_create_layer(x+115,y+4,"effects",o_rogue_earring_emerald_drop);
			place_4 = false;
		} else if place_5 == true {
			instance_create_layer(x+4,y+41,"effects",o_rogue_earring_emerald_drop);
			place_5 = false;
		} else if place_6 == true {
			instance_create_layer(x+41,y+41,"effects",o_rogue_earring_emerald_drop);
			place_6 = false;
		} else if place_7 == true {
			instance_create_layer(x+78,y+41,"effects",o_rogue_earring_emerald_drop);
			place_7 = false;
		} else if place_8 == true {
			instance_create_layer(x+115,y+41,"effects",o_rogue_earring_emerald_drop);
			place_8 = false;
		} else if place_9 == true {
			instance_create_layer(x+4,y+78,"effects",o_rogue_earring_emerald_drop);
			place_9 = false;
		} else if place_10 == true {
			instance_create_layer(x+41,y+78,"effects",o_rogue_earring_emerald_drop);
			place_10 = false;
		} else if place_11 == true {
			instance_create_layer(x+78,y+78,"effects",o_rogue_earring_emerald_drop);
			place_11 = false;
		} else if place_12 == true {
			instance_create_layer(x+115,y+78,"effects",o_rogue_earring_emerald_drop);
			place_12 = false;
		} else if place_13 == true {
			instance_create_layer(x+4,y+115,"effects",o_rogue_earring_emerald_drop);
			place_13 = false;
		} else if place_14 == true {
			instance_create_layer(x+41,y+115,"effects",o_rogue_earring_emerald_drop);
			place_14 = false;
		} else if place_15 == true {
			instance_create_layer(x+78,y+115,"effects",o_rogue_earring_emerald_drop);
			place_15 = false;
		} else if place_16 == true {
			instance_create_layer(x+115,y+115,"effects",o_rogue_earring_emerald_drop);
			place_16 = false;
		}
		earring_emerald_drop = false;
	}
}