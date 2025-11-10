// See "Lossless Recording" under Notes for details on what this does.

if (!variable_global_exists("recording"))
{
    global.recording = false;
    global.frame_count = 0;
}

global.recording = !global.recording;