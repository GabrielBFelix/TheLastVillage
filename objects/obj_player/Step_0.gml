/// @description Movimento

var input = rollback_get_input();

if (input.left) {
	x -= 3;	
}
if (input.right) {
	x += 3;	
}
if (input.up) {
	y -= 3;	
}
if (input.down) {
	y += 3;	
}

if (input.attack_pressed) {
		
}