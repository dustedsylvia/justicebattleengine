function draw_target(x, y, current_frame){
	var frame_count = 2;
    var frame_speed = 10 / room_speed;
	
    var is_done = false; // todo: fix this amalgamation
    var frame = is_done ? frame_count - 1 : floor(current_frame);
	// javascript reference?!?!??!

    draw_sprite_ext(atk_slicer, frame, x, y, 1, 1, 0, c_white, 1);
	
	return current_frame + frame_speed;
}