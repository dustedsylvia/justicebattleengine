global.bsx = x;
global.bsy = y;
gravity = global.bsg;
gravity_direction = global.bsd;

if (active) {
	if (keyboard_check(vk_up) == false && vspeed <= -1) {
		vspeed = -1;
	}

	if (vspeed > 0.5 && vspeed < 8)
		vspeed += 0.6;
	if (vspeed > -1 && vspeed <= 0.5)
		vspeed += 0.2;
	if (vspeed > -4 && vspeed <= -1)
		vspeed += 0.5;
	if (vspeed <= -4)
		vspeed += 0.2;
}