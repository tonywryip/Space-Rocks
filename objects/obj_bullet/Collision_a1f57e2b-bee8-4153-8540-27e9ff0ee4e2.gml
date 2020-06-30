/// @description Insert description here
// You can write your code in this editor
score += 10;
audio_play_sound(snd_die, 1, false);
instance_destroy();

with(other){
	instance_destroy();	
	
	if(sprite_index == spr_astroid_huge){
		repeat(2){
			var new_astroid = instance_create_layer(x,y, "Instances", obj_astroid);
			new_astroid.sprite_index = spr_astroid_mid;
		}	
	} else if(sprite_index == spr_astroid_mid){
		repeat(2){
			var new_astroid = instance_create_layer(x,y, "Instances", obj_astroid);
			new_astroid.sprite_index = spr_astroid_sml;
		}
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances", obj_debris);
	}
	
}