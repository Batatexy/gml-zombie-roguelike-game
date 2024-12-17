if global.pause = false
{
	image_speed = 1
	
	if image_index >= image_number
	{
		instance_destroy()
	}
}
else
{
	image_speed = 0
}