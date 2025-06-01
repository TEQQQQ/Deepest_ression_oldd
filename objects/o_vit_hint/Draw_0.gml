/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_vit_hint));



if global.character == 4 {
	draw_text(x-125,y,string(o_rogue.vit));
	if o_rogue.eklenecek_vit >=1 {
		if o_rogue.eklenecek_vit >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_rogue.eklenecek_vit));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_rogue.eklenecek_vit));
			draw_text(x-80,y,"(+");
		}
	}
}

if global.character == 3 {
	draw_text(x-125,y,string(o_mage.vit));
	if o_mage.eklenecek_vit >=1 {
		if o_mage.eklenecek_vit >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_mage.eklenecek_vit));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_mage.eklenecek_vit));
			draw_text(x-80,y,"(+");
		}
	}
}

if global.character == 1 {
	draw_text(x-125,y,string(o_knight.vit));
	if o_knight.eklenecek_vit >=1 {
		if o_knight.eklenecek_vit >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_knight.eklenecek_vit));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_knight.eklenecek_vit));
			draw_text(x-80,y,"(+");
		}
	}
}

if global.character == 2 {
	draw_text(x-125,y,string(o_priest.vit));
	if o_priest.eklenecek_vit >=1 {
		if o_priest.eklenecek_vit >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_priest.eklenecek_vit));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_priest.eklenecek_vit));
			draw_text(x-80,y,"(+");
		}
	}
}


