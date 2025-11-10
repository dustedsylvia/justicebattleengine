damageanim = [0, -4, -3, -2, -2, -2, -1, 0, 0, 0, 0, 1, 2, 2, 2, 3, 4, -4]; // shows how it should move every frame. a value of 4 means it would move down 4 pixels

texts = [];
textsi = [];
textsd = [];
textsp = []; 

clock = 0;

createText = function(tx, ty, textSpd, font, active, text) {
	var texto = [];
	
	texto[0] = tx;
	texto[1] = ty;
	texto[2] = textSpd;
	texto[3] = font;
	texto[4] = active;
	texto[5] = text;
	texto[6] = 1;
	
	texts[array_length(texts)] = texto;
	
	return array_length(texts) - 1;
}

createTextInstant = function(tx, ty, font, active, text, useAsterisk = true) {
	var texto = [];
	
	texto[0] = tx;
	texto[1] = ty;
	texto[2] = NaN;
	texto[3] = font;
	texto[4] = active;
	texto[5] = text;
	texto[6] = 1;
	texto[7] = useAsterisk;
	
	textsi[array_length(textsi)] = texto;
	
	return array_length(textsi) - 1;
}

createDamageText = function(tx, ty, active, text, color, alpha, animate, center) {
	var texto = [];
	
	texto[0] = tx;
	texto[1] = ty;
	texto[2] = NaN;
	texto[3] = damagef;
	texto[4] = active;
	texto[5] = text;
	texto[6] = 1;
	texto[7] = color;
	texto[8] = alpha;
	texto[9] = animate;
	texto[10] = 0;
	texto[11] = center;
	texto[12] = false;
	
	if (texto[5] == "-1") { // do not animate regardless of what user specified
		texto[9] = false;
	}
	
	textsd[array_length(textsd)] = texto;
	
	return array_length(textsd) - 1;
}

createPagedText = function(tx, ty, textSpd, font, active, text, color, asterisk, xsep, ysep, skippable=true, voicebeep=empty) {
	var texto = [];
	
	texto[0] = tx;
	texto[1] = ty;
	texto[2] = textSpd;
	texto[3] = font;
	texto[4] = active;
	texto[5] = text;
	texto[6] = 0;
	texto[7] = color;
	texto[8] = array_length(text) - 1;
	texto[9] = 0;
	texto[10] = asterisk;
	texto[11] = xsep;
	texto[12] = ysep;
	texto[13] = skippable;
	texto[14] = voicebeep;
	
	textsp[array_length(textsp)] = texto;
	
	return array_length(textsp) - 1;
}

get_texts = function() {
	return texts;
}

get_textsi = function() {
	return textsi;
}

get_textsd = function() {
	return textsd;
}

get_textsp = function() {
	return textsp;
}

getPageIndex = function(text_index) {
	return textsp[text_index][9];
}

clear_all_text = function() {
	texts = [];
	textsi = [];
	textsd = [];
	textsp = [];
}