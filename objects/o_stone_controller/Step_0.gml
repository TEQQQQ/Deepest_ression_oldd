/// @description Insert description here
// You can write your code in this editor

if global.text_info == true and global.enemy_info == false {
	if stone_count == 0 {
		if once == true {
			var d = instance_create_layer(320,149,"Instances",o_stone);
			d.position = 0;
			once = false;
		}
	}

	if stone_count == 1 {
		if once3 == true {
			var e = instance_create_layer(320,149,"Instances",o_stone);
			e.position = 1;
			once3 = false;
		}
	}

	if stone_count == 2 {
		if once2 == true {
			var f = instance_create_layer(320,149,"Instances",o_stone);
			f.position = 2;
			once2 = false;
		}
	}
}

if global.enemy_info == true {
	if once4 == true {
		var d = instance_create_layer(320,149,"Instances",o_stone);
		d.position = 0;
		var e = instance_create_layer(320,149,"Instances",o_stone);
		e.position = 1;
		var f = instance_create_layer(320,149,"Instances",o_stone);
		f.position = 2;
		once4 = false;
	}
}