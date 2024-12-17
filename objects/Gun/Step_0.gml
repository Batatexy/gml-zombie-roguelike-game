if global.pause = false
{
	
if Player.life > 0
{
	point = point_direction(x,y,mouse_x,mouse_y)
	
	image_angle = point
	Hand.image_angle = point
	Gun.image_angle = point
	if instance_exists(BlackScreenFlashlight)
	{
		BlackScreenFlashlight.image_angle = point+45
	}
	
	EscolherArmas()

	if Melee.attacking = false
	{
		if Player.dmgtrigger = false
		{
			if global.arma = 1
			{
				PrimariaTiroNormal()
			}
			else if global.arma = 2
			{
				SecundariaTiroNormal()
			}

			if keyboard_check_pressed(ord("1")) and global.arma != 1
			{
				audio_play_sound(Pickup_Gun, 10, false)
	
				ArmaSecundariaCooldown()
				global.arma = 1
			}

			if keyboard_check_pressed(ord("2")) and global.arma != 2
			{
				audio_play_sound(Pickup_Gun, 10, false) 
	
				ArmaPrincipalCooldown()
				global.arma = 2
			}
		}

		
		visible = true
		Hand.visible = true
		Laser.visible = true
	}
	else
	{
		ArmaPrincipalCooldown()
		ArmaSecundariaCooldown()
			
		visible = false
		Hand.visible = false
		Laser.visible = false
	}
	
	if (point >= 270 and point<370) or (point <90 and point>=0)
	{
		image_yscale=1
		
		Hand.image_yscale=1
		Player.image_xscale=1
		Laser.image_xscale=1
		
		GunBack.image_yscale=-1
		GunBack.image_angle=225
		GunBack.backvarX = 10
		GunBack.backvarY = -13
	}
	else
	{
		image_yscale=-1

		Hand.image_yscale=-1
		Player.image_xscale=-1
		Laser.image_xscale=-1
		
		GunBack.image_yscale=1
		GunBack.image_angle=315
		GunBack.backvarX = -10
		GunBack.backvarY = -13
		
	}
	
}

x=Player.x
y=Player.y
}


