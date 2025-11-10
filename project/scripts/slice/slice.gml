function draw_slice(x, y, current_frame) {
    var frame_count = 7;

    var frame_speed = 8 / room_speed;
	
    var is_done = current_frame >= frame_count;
    var frame = is_done ? frame_count - 1 : floor(current_frame);

    draw_sprite_ext(slicer, frame, x, y, 1, 1, 0, c_white, 1);

    if (is_done) {
        return frame_count;
    } else {
        return current_frame + frame_speed;
    }
}