/// @description Insert description here
// You can write your code in this editor






draw_self();
//draw_text(x,y,instance_number(o_mp_hint));
if global.character == 4 {
	draw_text(x-125,y,string(o_rogue.mp));

	if o_rogue.eklenecek_mp >=1 {
		if o_rogue.eklenecek_mp >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_rogue.eklenecek_mp));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_rogue.eklenecek_mp));
			draw_text(x-80,y,"(+");
		}
	}
}

if global.character == 3 {
	draw_text(x-125,y,string(o_mage.mp));

	if o_mage.eklenecek_mp >=1 {
		if o_mage.eklenecek_mp >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_mage.eklenecek_mp));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_mage.eklenecek_mp));
			draw_text(x-80,y,"(+");
		}
	}
}

if global.character == 1 {
	draw_text(x-125,y,string(o_knight.mp));

	if o_knight.eklenecek_mp >=1 {
		if o_knight.eklenecek_mp >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_knight.eklenecek_mp));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_knight.eklenecek_mp));
			draw_text(x-80,y,"(+");
		}
	}
}

if global.character == 2 {
	draw_text(x-125,y,string(o_priest.mp));

	if o_priest.eklenecek_mp >=1 {
		if o_priest.eklenecek_mp >=10 {
			draw_text(x-55,y,")");
			draw_text(x-73,y,string(o_priest.eklenecek_mp));
			draw_text(x-88,y,"(+");
		} else {
			draw_text(x-55,y,")");
			draw_text(x-65,y,string(o_priest.eklenecek_mp));
			draw_text(x-80,y,"(+");
		}
	}
}
