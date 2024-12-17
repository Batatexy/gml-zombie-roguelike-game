if place_meeting(x,y,Player)
{
	trigger=true
}

if trigger=true
{
	y-=0.5
	
	if image_alpha=1
	{
		audio_play_sound(Pickup, 1, false, 2);
		
		if caixavar = 1 {Gun.balastotalprim += int64(random_range(15,22))}
		if caixavar = 2 {Gun.balastotalsec  += int64(random_range(5,15))}
		
	}
	image_alpha-=0.05
	
	if image_alpha<=0
	{
		instance_destroy()
	}
}