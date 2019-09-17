/// @description Textos na tela

draw_set_color(c_black);
draw_set_font(text8bit);

draw_text(50, 72,oPlayerTemp.Tname);
//draw_text(150, 72,oPlayerTemp.Tstatus);

if(oPlayerTemp.Tstatus == "Fine")
{
	draw_text_color(150, 72, oPlayerTemp.Tstatus, c_black, c_black, c_black, c_green, true);
}

if(oPlayerTemp.Tstatus == "Infected")
{
	draw_text_color(150, 72, oPlayerTemp.Tstatus, c_black, c_black, c_black, c_orange, true);
}
if(oPlayerTemp.Tstatus == "Caution")
{
	draw_text_color(150, 72, oPlayerTemp.Tstatus, c_black, c_black, c_orange, c_orange, true);
}
if(oPlayerTemp.Tstatus == "Danger")
{
	draw_text_color(150, 72, oPlayerTemp.Tstatus, c_black, c_red, c_orange, c_orange, true);
}
if(oPlayerTemp.Tstatus == "Hurry")
{
	draw_text_color(150, 72, oPlayerTemp.Tstatus, c_red, c_red, c_red, c_red, true);
}