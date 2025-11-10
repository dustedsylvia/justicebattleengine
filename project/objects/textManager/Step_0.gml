clock += 1;

for (var i = 0; i < array_length(texts); i++) {
	var text = texts[i];
	
	if (text[4] != false and text[6] < string_length(text[5]) and clock % (30 / text[2]) == 0) {
		text[6] += 1;
	}
}

for (var i = 0; i < array_length(textsp); i++) {
	var text = textsp[i];
	
	if (text[4] != false and text[6] < string_length(text[5][text[9]]) and clock % (30 / text[2]) == 0) {
		text[6] += 1;
		audio_play_sound(text[14], 1, 0);
	}
}
