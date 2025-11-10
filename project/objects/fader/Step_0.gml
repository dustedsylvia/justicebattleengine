clock += 1;

if (needsInit) {
	image_alpha = startingOpacity;
	offset = 1 / fadeOverFrames;
	needsInit = false;
}

if (targetOpacity != image_alpha) {
	image_alpha -= offset;
}

if (clock >= fadeOverFrames) {
	instance_destroy();
}