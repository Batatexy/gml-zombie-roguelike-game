draw_self()

draw_set_color(c_black)

if global.arma = 1
{
	draw_text(x-152, y+65, "" + string(Gun.balasprim) + "/" + string(Gun.balastotalprim))
	draw_text(Cam.x-152, Cam.y+52, "Dano:" + string(Gun.dmgprim))
}
else if global.arma = 2
{
	draw_text(x-152, y+65, "" + string(Gun.balassec) + "/" + string(Gun.balastotalsec))
	draw_text(Cam.x-152, Cam.y+52, "Dano:" + string(Gun.dmgsec))
}



draw_set_color(c_red)
draw_text(x-152, y-90, "" + string(Player.life) + "/" + string(Player.lifemax))