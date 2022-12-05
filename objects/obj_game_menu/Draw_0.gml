// Define fonte
draw_set_font(global.font_main);

// Dinamicamente define largura e altura do menu com base no tamanho da fonte
var new_width = 0;
for(var i = 0; i < op_length; i++) {
	var op_width = string_width(option[menu_level, i]);
	new_width = max(new_width, op_width);
}
width = new_width + op_border*2;
height = op_border*2 + string_height(option[0,0]) + (op_length-1)*op_space;

// Centraliza menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

// Alinha texto no canto superior esquerdo
draw_set_valign(fa_top);
draw_set_valign(fa_left);

for(var i = 0; i < op_length; i++) {
	var cor = c_white;
	if pos == i {cor = c_yellow};
	draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], cor, cor, cor, cor, 1);
}