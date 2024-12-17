
if global.pause = false
{

if life<=0
{
	spd=0
	speed=0
	
	instance_create_layer(x,y,"object0",Blood)

	//Randomizador de itens
	spawncase = int64(random_range(1,6))
	{
		if spawncase >= 5
		{
			instance_create_layer(x,y,"object2",Case)
		}
	}
	
	switch(zombienumber)
	{
		case 0:
		{
			instance_create_layer(x,y,"object1",ZombieDead)
			break
		}
		
		case 1:
		{
			audio_play_sound(explosaosom, 10, false)
			instance_create_layer(x,y,"Object5", Explosion)
			instance_create_layer(x,y,"object1",ZombieDeadAzul)
			break
		}
		
		case 2:
		{
			instance_create_layer(x,y,"object1",ZombieDeadGrande)
			break
		}
		
	}

	
	instance_destroy()
}
else if life > 0
{
	var point = point_direction(x,y,Player.x,Player.y)
	
	if (point > 270 and point<370) or (point <90 and point>0)
	{
		image_xscale=1
	}
	else
	{
		image_xscale=-1
	}
	
	if place_meeting(x,y,BulletPrim) and timer<=0
	{
		life-=Gun.dmgprim
	}
	
	if place_meeting(x,y,BulletSec) and timer<=0
	{
		life-=Gun.dmgsec
	}
	
	if place_meeting(x,y,Explosion) and timer<=0 and Explosion.image_index<3
	{
		life-=global.explosiondmg
	}
	
	if place_meeting(x,y,Melee) and timer<=-10 and Melee.attacking = true
	{
		life-=Melee.meleedmg
	}
	
	if (place_meeting(x,y,BulletPrim) or place_meeting(x,y,BulletSec)
	or place_meeting(x,y,Melee) or (place_meeting(x,y,Explosion) and Explosion.image_index<3)     ) and timer<=0
	{
		timer=timervar
		instance_create_layer(x,y,"object2",BloodShoot)
		
		bleed = int64(random_range(0,bleedchance))
		
		if bleed = 0
		{
			bleedtrigger=true
		}
	}
	
	if bleedtrigger = true
	{
		bleedtimer--
		
		if bleedtimer<=0
		{
			bleedtimes--
			life-=global.bleedingdmg
			
			bleedtimer=bleedtimervar
		}
		
		if bleedtimes<=0
		{
			bleedtrigger=false
			bleedtimes=int64(random_range(5,11))
		}
	}
	
	
	timer--
	
	//Tomar Dano
	if timer>0
	{
		speed=spd * 0.5
	}
	else
	{
		speed=spd
	}
	
	//Sprite quanto a movimentação
	if speed>0
	{
		walkingtimer--
		
		if timer>0
		{
			if walkingtimer<= walkingtimervar/2
			{
				image_index = 2
			}
		
			if walkingtimer<= 0
			{
				image_index = 3
				walkingtimer = walkingtimervar
			}
		}
		else
		{
			if walkingtimer<= walkingtimervar/2
			{
				image_index = 0
			}
		
			if walkingtimer<= 0
			{
				image_index = 1
				walkingtimer = walkingtimervar
			}
		}
	}
	else
	{
		image_index = 0
	}

	if place_meeting(x,y,Player)
	{
		spd=0

		if zombienumber = 1
		{
			life--
		}

		speedtrigger=true
	}
	
	if speedtrigger=true
	{
		speedtimer--
		
		if speedtimer<=0
		{
			speedtimer=speedtimervar
			spd=spdvar
			speedtrigger=false
		}
	}

	direction = point_direction(x,y,Player.x,Player.y)
}

	image_speed = 1
}
else
{
	speed = 0
}
