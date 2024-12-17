
if keyboard_check_pressed(vk_escape)
{
	global.pause = !global.pause
}

if global.pause = false
{

	if speed > 0
	{
		global.recoil = int64(random_range(-global.recoilrng , global.recoilrng))
	}
	else
	{
		global.recoil = 0
	}

	zombiespawntimer--

	if zombiespawntimer <= 0
	{
		rvoh = int64(random_range(1,5))

		if rvoh = 1
		{
			xpos = random_range(-200,200)
			ypos = 130
		}
	
		if rvoh = 2
		{
			xpos = 200
			ypos = random_range(-130,130)
		}
	
		if rvoh = 3
		{
			xpos = random_range(-200,200)
			ypos = -130
		}
	
		if rvoh = 4
		{
			xpos = -200
			ypos = random_range(-130,130)
		}
	
		if life>0
		{
			instance_create_layer(x + xpos,y + ypos,"object2",Zombie)
		
			//Variações dependendo da fase:
			if room = FaseDia
			{
				zombiespawntimer = random_range(80,150)
			}
			else if room = FaseNoite
			{
				zombiespawntimer = random_range(10,50)
			}
		}
	
	
	
	
	}


	if life>0
	{
		alphablackscreen-=alphablackscreenvar
		if alphablackscreen<=0
		{
			alphablackscreen=0
		}
	
	
	
		if place_meeting(x,y,Zombie) or (place_meeting(x,y,Explosion) and Explosion.image_index < 3)
		{
			dmgtrigger = true
			
			ArmaPrincipalCooldown()
			ArmaSecundariaCooldown()
		}



		if dmgtrigger = true
		{
			dmgtimer--
			image_alpha = 0.5
			Hand.image_alpha = 0.5
	
			if dmgtimer = global.dmgtimervar-1
			{
				life--
			
				if life>0
				{
					dano=0
					danovar=int64(random_range(1,7))
		
					if danovar=1{dano=Aaaiiihhhhh}
					if danovar=2{dano=Ai_ai}
					if danovar=3{dano=Ai_que_dor}
					if danovar=4{dano=Aiii_puberdade}
					if danovar=5{dano=Aiiiii}
					if danovar=6{dano=Ai}
		
					audio_play_sound(dano, 1, false, 1)
				}
				else
				{
					morte=0
					mortevar=int64(random_range(1,3))
		
					if mortevar=1{audio_play_sound(Ohh, 1, false, 1)}
					if mortevar=2{audio_play_sound(ooohh, 1, false, 1)}

				
				
				
				}
			}
	
			if dmgtimer <= 0
			{
				image_alpha = 1
				Hand.image_alpha = 1
				dmgtimer = global.dmgtimervar
				dmgtrigger = false
			}
		}
	
		if foottimer<=0
		{
			passovar=int64(random_range(1,6))
			if passovar=1{passo=grass0}
			if passovar=2{passo=grass1}
			if passovar=3{passo=grass2}
			if passovar=4{passo=grass3}
			if passovar=5{passo=grass4}
			audio_play_sound(passo, 1, false, 0.4);
			
			foottimer=foottimervar
		}
	
		if speed > 0
		{
			foottimer--
			walkingtimer--
			
			if walkingtimer <= walkingtimervar/2
			{
				image_index = 1
			}
			if walkingtimer <= 0
			{
				image_index = 2
				walkingtimer = walkingtimervar
			}
		}
		else
		{
			image_index = 0
		}


		///Movimentação
		var up=keyboard_check(ord("W"))
		var left=keyboard_check(ord("A"))
		var down=keyboard_check(ord("S"))
		var right=keyboard_check(ord("D"))

		////DIREITA//E//CIMA////////////////////////////////////////////////////
		if (right) and (up) and !place_meeting(x+hb,y-hb , wall)
		{
			direction=45;
			speed=spd;
		}
		////DIREITA//E//BAIXO///////////////////////////////////////////////////
		else if (right) and (down) and !place_meeting(x+hb,y+hb , wall) 
		{
			direction=315;
			speed=spd;
		}
		////ESQUERDA//E//CIMA///////////////////////////////////////////////////
		else if (left and up) and !place_meeting(x-hb,y-hb , wall)
		{
			direction=135;
			speed=spd;
		}
		////ESQUERDA//E//BAIXO/////////////////////////////////////////////////
		else if (left and down) and !place_meeting(x-hb,y+hb , wall)
		{
			direction=225;
			speed=spd;
		}
		////DIREITA////////////////////////////////////////////////////////////
		else if right and !place_meeting(x+hb,y , wall)
			{
			direction=0;
			speed=spd;
		}
		////CIMA//////////////////////////////////////////////////////////////
		else if up and !place_meeting(x,y-hb , wall)
		{
			direction=90;
			speed=spd;
		}
		////ESQUERDA//////////////////////////////////////////////////////////
		else if left and !place_meeting(x-hb,y , wall)
		{
			direction=180;
			speed=spd;
		}
		////BAIXO/////////////////////////////////////////////////////////////
		else if down and !place_meeting(x,y+hb , wall)
		{
			direction=270
			speed=spd
		}
		else{speed=0} 
	
	
	
	
	}
	//if life>0
	else
	{
		image_index = 0
		image_angle = 270
		image_alpha = 1

		Hand.image_alpha = 1
		speed=0
	
		//Quando morre, cria poça de sangue
		if bloodtrigger=0
		{
			bloodtrigger=1
		}

		if bloodtrigger=1
		{
			instance_create_layer(x,y,"object0",Blood)
			bloodtrigger=2
		}
	
		alphablackscreen+=0.005
	
		if alphablackscreen>=1
		{	
			game_restart()
		}
	}
	
	
	
	
	
	
	
}
//if global.pause = false
else
{
	image_index = 0
	speed=0
}

