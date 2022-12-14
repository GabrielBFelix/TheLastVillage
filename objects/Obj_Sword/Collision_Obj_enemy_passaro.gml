/// @description Insert description here
// You can write your code in this editor

// TODO diminuir vida quando inimigos tiverem vida (variavel damage já setada)
if (visible) {
	instance_destroy(other);
	audio_play_sound(snd_EnemyHit,8,false);
}