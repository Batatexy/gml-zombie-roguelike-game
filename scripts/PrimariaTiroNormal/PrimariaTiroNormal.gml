// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PrimariaTiroNormal()
{	
	if Gun.autovarprim = true{var auto = mouse_check_button(mb_left)}
	else{var auto = mouse_check_button_pressed(mb_left)}
	
	sprite_index = Gun.spriteprim

	if Player.life > 0
	{
		Gun.shoottimerprim--

		if  auto and Gun.reloadtimerprim = Gun.reloadtimervarprim and Gun.shoottimerprim <= 0
		{
			Gun.shoottimerprim = Gun.shoottimervarprim
	
			if Gun.balasprim>0
			{
				tirovar=int64(random_range(1,6))
				if tirovar = 1{tiro = Gun.somprim1}
				if tirovar = 2{tiro = Gun.somprim2}
				if tirovar = 3{tiro = Gun.somprim3}
				if tirovar = 4{tiro = Gun.somprim4}
				if tirovar = 5{tiro = Gun.somprim5}
				audio_play_sound(tiro, 1, false, 0.5);
				
				image_index = 1
				
				instance_create_layer(Player.x,Player.y,"object1",BulletPrim)
				Gun.balasprim--
			}
		}
		else
		{
			image_index = 0
		}

		if mouse_check_button_pressed(mb_left) and Gun.reloadtimerprim = Gun.reloadtimervarprim
		{
			if Gun.balasprim=0
			{
				audio_play_sound(NoBullet, 10, false);
			}
		}

		if ((keyboard_check_pressed(ord("R")) or Gun.balasprim = 0) and Gun.balasprim != Gun.balaspenteprim)
		{
			Gun.reloadtriggerprim = true
		}

		if Gun.reloadtriggerprim = true and Gun.balastotalprim > 0
		{
			Gun.reloadtimerprim--
	
			if Gun.reloadtimerprim = reloadtimervarprim-2
			{
				audio_play_sound(Reload2, 10, false);
			}
	
			if Gun.reloadtimerprim = 0
			{
				audio_play_sound(Reload, 10, false);
			}
			if Gun.reloadtimerprim <=-25
			{
				Gun.reloadtimerprim = Gun.reloadtimervarprim
		
				Gun.balasmidvarprim = Gun.balaspenteprim - Gun.balasprim
		
				if Gun.balastotalprim >= Gun.balasmidvarprim
				{
					Gun.balasprim += Gun.balasmidvarprim
					Gun.balastotalprim -= Gun.balasmidvarprim
				}
				else
				{
					Gun.balasprim += Gun.balastotalprim
					Gun.balastotalprim = 0
				}

				Gun.reloadtriggerprim = false
			}
		}
	}
}