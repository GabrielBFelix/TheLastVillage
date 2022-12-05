// pega os inputs to teclado
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
esc_key = keyboard_check(vk_escape);

// Guarda o numero de opções do menu atual
op_length = array_length(option[menu_level]);

// move pelo menu
pos += down_key - up_key;
if pos >= op_length {pos=0};
if pos < 0 {pos=op_length-1};

if esc_key { 
	visible = true;
}

// usando as opções
if accept_key {
	
	var sml = menu_level;
	
	switch(menu_level){
	
		// Menu
		case 0:
			switch(pos){
				// Resume
				case 0: visible = false; break;
				// Restart
				case 1: break;
				// Options
				case 2: menu_level = 1; break;
				// Options
				case 3: room_goto_previous(); break;
				// Exit to Desktop
				case 4: game_end(); break;
				}
			break;

		// Options
		case 1:
			switch(pos){
				// window size
				case 0: break;
				// brightness
				case 1: break;
				// controls
				case 2: break;
				// back
				case 3: menu_level = 0; break;
				}
			break;
	
	}
	
	// volta posição para 0
	if sml != menu_level {pos=0};

	// Atualiza op_length
	op_length = array_length(option[menu_level]);

}