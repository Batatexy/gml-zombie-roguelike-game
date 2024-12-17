// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Despawn(xpos,ypos)
{
	if global.pause = false
	{
		timer=int64(random_range(10,20))
	
		while timer > 0
		{
			timer--
		}

		if (xpos > Player.x+200 or xpos < Player.x-200
		or ypos > Player.y+130 or ypos < Player.y-130)
		and timer<=0
		{
			return true
		}
		else
		{
			return false
		}
	}
}