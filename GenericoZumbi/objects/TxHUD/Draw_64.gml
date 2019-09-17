/// @description Textos na tela

draw_set_color(c_black);
draw_set_font(text8bit);

draw_text(50, 72,oPlayerTemp.Tname);
draw_text(100, 72,oPlayerTemp.Tstatus);

if(oPlayerTemp.Tstatus == "Infected")
{
	draw_text_color(100, 72, oPlayerTemp.Tstatus, c_black, c_orange, c_black, c_orange, true);
}