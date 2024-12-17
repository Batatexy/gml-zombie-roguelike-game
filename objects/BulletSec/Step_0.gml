if global.pause = false
{
	if place_meeting(x,y,Zombie)
	{
		timerdespawntrigger=true
	}
	
	if timerdespawntrigger=true
	{
		timerdespawn--
	
		if timerdespawn<=0
		{
			if penvar>1
			{
				penvar--
				timerdespawn=timerdespawnvar
				timerdespawntrigger=false
			}
			else
			{
				instance_destroy()
			}
		}
	}

	timer--

	if timer<=0
	{
		instance_destroy()
	}

	speed=global.speedbullet
}
else
{
	speed=0
}