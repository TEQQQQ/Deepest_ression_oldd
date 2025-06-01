/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_dex_hint));
if global.character == 4 {
	draw_text(x-125,y,string(o_rogue.dex));

	if o_rogue.eklenecek_dex >=1 {
		if o_rogue.eklenecek_dex >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_rogue.eklenecek_dex));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_rogue.eklenecek_dex));
			draw_text(x-80,y,"(+");
		}
	}
}

if global.character == 3 {
	draw_text(x-125,y,string(o_mage.dex));

	if o_mage.eklenecek_dex >=1 {
		if o_mage.eklenecek_dex >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_mage.eklenecek_dex));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_mage.eklenecek_dex));
			draw_text(x-80,y,"(+");
		}
	}
}

if global.character == 1 {
	draw_text(x-125,y,string(o_knight.dex));

	if o_knight.eklenecek_dex >=1 {
		if o_knight.eklenecek_dex >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_knight.eklenecek_dex));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_knight.eklenecek_dex));
			draw_text(x-80,y,"(+");
		}
	}
}

if global.character == 2 {
	draw_text(x-125,y,string(o_priest.dex));

	if o_priest.eklenecek_dex >=1 {
		if o_priest.eklenecek_dex >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_priest.eklenecek_dex));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_priest.eklenecek_dex));
			draw_text(x-80,y,"(+");
		}
	}
}

