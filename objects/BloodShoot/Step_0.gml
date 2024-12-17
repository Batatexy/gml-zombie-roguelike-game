if global.pause = false
{
	if image_index >= 5
	{
		instance_destroy()
	}

	image_speed = 1
}
else
{
	image_speed = 0
}