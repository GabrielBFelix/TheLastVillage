/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (global.pause) exit; // Se o jogo tiver pausado, pare o jogador

// controles 
var left, right, down, up;

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));


velHor = (right - left) * velocidade;
velVer = (down - up) * velocidade;

// Se ambos maior que 1 multiplica pela raizs

if(place_meeting(x + velHor, y, Obj_casaCostas and Obj_arvore)){
	while(!place_meeting(x + sign(velHor), y , Obj_casaCostas and Obj_arvore)){
		x+= sign(velHor);
		
	}
	velHor = 0;
	
}
x += velHor;
if(place_meeting(x, y + velVer, Obj_casaCostas and Obj_arvore)){
	while(!place_meeting(x, y + sign(velVer) , Obj_casaCostas and Obj_arvore)){
		y+= sign(velVer);
		
	}
	velVer = 0;
	
}
y += velVer;

if keyboard_check(ord("A")){
	
	sprite_index = Spr_pac_left;
	
}

if keyboard_check(ord("D")){
	
	sprite_index = Sprite2;
	
	
}

if keyboard_check(ord("W")){
	
	sprite_index = Sprite2;
	
}

if keyboard_check(ord("S")){
	
	sprite_index = Sprite2;
	
}

if keyboard_check(ord("A")) and keyboard_check(ord("W")){
	sprite_index = Spr_pac_left;
	
}

if keyboard_check(ord("A")) and keyboard_check(ord("S")){
	sprite_index = Spr_pac_left;
	
}

if velHor== 0 and velVer == 0 {
	
	sprite_index = Sprite10;
	
}




