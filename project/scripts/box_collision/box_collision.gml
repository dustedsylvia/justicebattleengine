function simple_box_collision(Box1_x1, Box1_x2, Box1_y1, Box1_y2, Box2_x1, Box2_x2, Box2_y1, Box2_y2, debug=false) {
	// will return true or false if the rectangles drawn by those points are in collision
	if (Box1_x1 > Box1_x2) {
		show_error("Argument 1 cannot be greater than argument 2", true);
	}
	
	if (Box1_y1 > Box1_y2) {
		show_error("Argument 3 cannot be greater than argument 4", true);
	}
	
	if (Box2_x1 > Box2_x2) {
		show_error("Argument 5 cannot be greater than argument 6", true);
	}
	
	if (Box2_y1 > Box2_y2) {
		show_error("Argument 7 cannot be greater than argument 8", true);
	}
	
	if (Box1_x1 == 0 or Box1_y1 == 0 or Box2_x1 == 0 or Box2_y1 == 0) {
		show_error("sorry but this function does NOT work with zero.", true);
	}
	
	var Width_Box1 = Box1_x2 - Box1_x1 + 1;
	var Height_Box1 = Box1_y2 - Box1_y1 + 1;
	
	var Width_Box2 = Box2_x2 - Box2_x1 + 1;
	var Height_Box2 = Box2_y2 - Box2_y1 + 1;
	
	if (debug == true) {
		draw_set_alpha(0.75);
		draw_rectangle_colour(Box1_x1, Box1_y1, Box1_x2, Box1_y2, #ff00ff, #ff00ff, #ff00ff, #ff00ff, false);
		draw_rectangle_colour(Box2_x1, Box2_y1, Box2_x2, Box2_y2, #0000ff, #0000ff, #0000ff, #0000ff, false);
		draw_set_alpha(1);
	}
	
	if (Box1_x1 < Box2_x1 + Width_Box2 and Box1_x1 + Width_Box1 > Box2_x1 and Box1_y1 < Box2_y1 + Height_Box2 and Box1_y1 + Height_Box1 > Box2_y1) {
        return true;
	} else {
        return false;
	}
}