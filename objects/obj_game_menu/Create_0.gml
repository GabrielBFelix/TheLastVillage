visible = false;
global.pause = false;

width = 76;
height = 104;

op_border = 8; // Distância das opções do menu para o canto da tela
op_space = 16; // Distância entre as opções do menu

pos = 0;

// Menu Principal
option[0, 0] = "Resume";
option[0, 1] = "Restart";
option[0, 2] = "Options";
option[0, 3] = "Exit to Main Menu";
option[0, 4] = "Exit to desktop";

// Menu de Configurações
option[1, 0] = "Window Size";
option[1, 1] = "Brightness";
option[1, 2] = "Controls";
option[1, 3] = "Back";

op_length = 0; // Salva o quão longa é a lista de opções
menu_level = 0;