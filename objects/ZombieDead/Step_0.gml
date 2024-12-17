if global.pause = false
{
	timer--

	if (x>Player.x+200 or x<Player.x-200
	or y>Player.y+130 or y<Player.y-130)
	and timer<=0
	{
		instance_destroy()
	}
}