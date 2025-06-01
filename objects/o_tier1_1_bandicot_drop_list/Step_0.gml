/// @description Insert description here
// You can write your code in this editor

if gold_curse == 2 {
	dusecek_altin = ceil(random_range(14,28));	
} else if gold_curse == 1 {
	dusecek_altin = ceil(random_range(12,24));
} else {
	dusecek_altin = ceil(random_range(10,20));
}


if drop_list == true {

	if instance_exists(o_drop){
		o_drop.gold_drop = true;
		o_drop.drop_gold_count = dusecek_altin;
		drop_list = false;
	}

}




