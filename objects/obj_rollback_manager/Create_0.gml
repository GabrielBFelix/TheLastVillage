// @description Join or Create a Game

// Define jogador
rollback_define_player(obj_player);

rollback_define_input({
	left : ord("A"),
	right : ord("D"),
	up : ord("W"),
	down : ord("S"),
	attack : vk_space
});

rollback_define_mock_input(1, {
	left : vk_left,
	right : vk_right,
	up : vk_up,
	down : vk_down,
	attack : vk_enter
});

var joined = rollback_join_game(); // salva se entrou em um jogo em uma variável local

if (joined == false) { // Se não conseguir se juntar a um jogo, criar um jogo
	rollback_create_game(2,	false);
}




