// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SecundariaTiroNormal()
{
	if Gun.autovarsec = true{var auto = mouse_check_button(mb_left)}
	else{var auto = mouse_check_button_pressed(mb_left)}
	
	sprite_index = Gun.spritesec

	if Player.life > 0
	{
		Gun.shoottimersec--

		if  auto and Gun.reloadtimersec = Gun.reloadtimervarsec and Gun.shoottimersec <= 0
		{
			Gun.shoottimersec = Gun.shoottimervarsec
	
			if Gun.balassec>0
			{
				tirovar=int64(random_range(1,6))
				if tirovar = 1{tiro = Gun.somsec1}
				if tirovar = 2{tiro = Gun.somsec2}
				if tirovar = 3{tiro = Gun.somsec3}
				if tirovar = 4{tiro = Gun.somsec4}
				if tirovar = 5{tiro = Gun.somsec5}
				audio_play_sound(tiro, 1, false, 0.5);
				
				image_index = 1
				
				instance_create_layer(Player.x,Player.y,"object1",BulletSec)
				Gun.balassec--
			}
		}
		else
		{
			image_index = 0
		}

		if mouse_check_button_pressed(mb_left) and Gun.reloadtimersec = Gun.reloadtimervarsec
		{
			if Gun.balassec=0
			{
				audio_play_sound(NoBullet, 10, false);
			}
		}

		if ((keyboard_check_pressed(ord("R")) or Gun.balassec = 0) and Gun.balassec != Gun.balaspentesec)
		{
			Gun.reloadtriggersec = true
		}

		if Gun.reloadtriggersec = true and Gun.balastotalsec > 0
		{
			Gun.reloadtimersec--
	
			if Gun.reloadtimersec = reloadtimervarsec-2
			{
				audio_play_sound(Reload2, 10, false);
			}
	
			if Gun.reloadtimersec = 0
			{
				audio_play_sound(Reload, 10, false);
			}
			if Gun.reloadtimersec <=-25
			{
				Gun.reloadtimersec = Gun.reloadtimervarsec
		
				Gun.balasmidvarsec = Gun.balaspentesec - Gun.balassec
		
				if Gun.balastotalsec >= Gun.balasmidvarsec
				{
					Gun.balassec += Gun.balasmidvarsec
					Gun.balastotalsec -= Gun.balasmidvarsec
				}
				else
				{
					Gun.balassec += Gun.balastotalsec
					Gun.balastotalsec = 0
				}

				Gun.reloadtriggersec = false
			}
		}
	}
}