/// @description Insert description here
// You can write your code in this editor

if (global.pause) exit; // Se o jogo tiver pausado, pare o jogador// Se o jogo tiver pausado, pare o jogador

if (!visible && !cooldown){
	visible = true;
	angulo_espada = point_direction(x, y, mouse_x, mouse_y)-90-45;
}