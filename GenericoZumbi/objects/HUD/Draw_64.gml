/// @description Cria lifebar e statusbar

draw_sprite(HealthInfectBar,true, 40, 42);

draw_healthbar(50, 50, 350, 60, oPlayerTemp.hp, c_maroon, c_red, c_green, 0 , true, true);

draw_healthbar(50, 65, 350, 70, oPlayerTemp.ifx, c_blue, c_purple, c_red, 0 , true, true);
 