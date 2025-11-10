for (var i = 0; i < array_length(texts); i++) {
	var text = texts[i];
	
	if (text[4]) {
		draw_sprite_ext(asterisk, 1, text[0], text[1] + 7, 1, 1, 0, c_white, 1);
		
		var drawText = string_copy(text[5], 1, text[6]);
		draw_set_font(text[3]);
		
		var lines = string_split(drawText, "\n");

		for (var j = 0; j < array_length(lines); j++) {
			var line = lines[j];
			var line_length = string_length(line);

			for (var k = 0; k < line_length; k++) {
			    var ch = string_char_at(line, k + 1);
			    draw_text(text[0] + 32 + (k * 16), text[1] + j * 32, ch);
			}
		}
	}
}

for (var i = 0; i < array_length(textsi); i++) {
	var text = textsi[i];
	
	if (text[4]) {
		if (text[7]) {
			draw_sprite_ext(asterisk, 1, text[0], text[1] + 7, 1, 1, 0, c_white, 1);
		}
		
		var drawText = text[5];
		draw_set_font(text[3]);
		
		var lines = string_split(drawText, "\n");

		for (var j = 0; j < array_length(lines); j++) {
			var line = lines[j];
			var line_length = string_length(line);

			for (var k = 0; k < line_length; k++) {
			    var ch = string_char_at(line, k + 1);
				if (text[7]) {
					draw_text(text[0] + 32 + (k * 16), text[1] + j * 32, ch);
				} else {
					draw_text(text[0] + (k * 16), text[1] + j * 32, ch);
				}
			}
		}
	}
}

for (var i = 0; i < array_length(textsd); i++) {
	var text = textsd[i];
	
	if (text[9]) {
		if (text[10] != 18) {
			text[1] += damageanim[text[10]];
			text[10] += 1;
		}
	}
	
	if (text[11] and !text[12]) { // need to setup
		var drawText = text[5];
		if (text[5] == "0" or text[5] == "-1") {
			text[0] -= sprite_get_width(miss) / 2;
		} else {
			var lines = string_split(drawText, "\n");
			var line_lengths = [];
			for (var k = 0; k < array_length(lines); k++) {
				var line = lines[k];
				var line_length = string_length(line);
				var line_width = (line_length * 32) - 4; // 32 px/character and -4px for the last char (no spacing)
				line_lengths[k] = line_width;
			}
		
			average = 0;
		
			for (var l = 0; l < array_length(line_lengths); l++) {
				average += line_lengths[l];
			}
		
			average = average / array_length(line_lengths);
		
			text[0] -= average / 2;
		}
		text[12] = true; //setup complete
	}
	
	if (text[4]) {
		if (text[5] != "0" and text[5] != "-1") {
			var drawText = text[5];
			draw_set_font(text[3]);
		
			var lines = string_split(drawText, "\n");

			for (var j = 0; j < array_length(lines); j++) {
				var line = lines[j];
				var line_length = string_length(line);

				for (var k = 0; k < line_length; k++) {
					var ch = string_char_at(line, k + 1);
					var char_xcor = text[0] + (k * 32); // on my SOUL i'm not using ai i just suck at consistent naming okay
					draw_rectangle_colour(char_xcor - 1, text[1] - 1, char_xcor + 28, text[1] + 28, c_black, c_black, c_black, c_black, false);
					draw_text_ext_colour(text[0] + (k * 32), text[1] + j * 32, ch, 32, 32, text[7], text[7], text[7], text[7], text[8]);
				}
			}
		} else if (text[5] == "0" or text[5] == "-1") { // draw miss
			draw_sprite_ext(miss, 0, text[0], text[1], 1, 1, 0, c_silver, 1);
		}
	}
}


for (var i = 0; i < array_length(textsp); i++) {
	var text = textsp[i];
	
	var z_pressed = (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter));
	var x_pressed = (keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift));
	
	if (x_pressed and text[13] == true) {
		text[6] = string_length(text[5][text[9]]);
	}
	
	if (string_length(text[5][text[9]]) == text[6] and text[9] < text[8] and z_pressed) {
		text[9] += 1;
		text[6] = 0;
	}
	
	if (text[4]) {
		if (text[10] == true) {
			draw_sprite_ext(asterisk, 1, text[0], text[1] + 7, 1, 1, 0, c_white, 1);
		}
		
		var drawText = string_copy(text[5][text[9]], 1, text[6]);
		
		draw_set_font(text[3]);
		draw_set_color(text[7]);
		
		var lines = string_split(drawText, "\n");

		for (var j = 0; j < array_length(lines); j++) {
			var line = lines[j];
			var line_length = string_length(line);

			for (var k = 0; k < line_length; k++) {
			    var ch = string_char_at(line, k + 1);
			    draw_text(text[0] + (k * text[11]), text[1] + j * text[12], ch);
			}
		}
	}
}