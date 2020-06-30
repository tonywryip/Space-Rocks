/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){
	spawn_off_camera(obj_astroid, 40);
	
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	audio_play_sound(msc_song, 2, true);
	
	alarm[0] = 60;
}