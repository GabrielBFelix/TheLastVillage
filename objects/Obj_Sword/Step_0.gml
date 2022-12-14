/// @description Insert description here
// You can write your code in this editor

if (global.pause) exit; // Se o jogo tiver pausado, pare o jogador


if (cooldown){
	if (++cooldownAtaque >= tempo_cooldown)
		cooldown = false;
}

if (visible){
	x = inst_284A56D3.x;
	y = inst_284A56D3.y;
	image_angle = angulo_espada;
	angulo_espada+=10;
	frames_ataque+=10;
	if (frames_ataque == 90){
		frames_ataque = 0;
		visible = false;
		cooldown = true;
		cooldownAtaque = 0;
	}
}