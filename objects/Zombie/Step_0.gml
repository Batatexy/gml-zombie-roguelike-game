
if global.pause = false
{

if life<=0
{
	spd=0
	speed=0
	image_angle=90
	
	instance_create_layer(x,y,"object1",ZombieDead)
	instance_create_layer(x,y,"object0",Blood)
	
	instance_destroy()
	
	spawncase = int64(random_range(1,6))
	{
		if spawncase >= 5
		{
			instance_create_layer(x,y,"object2",Case)
		}
	}
}
else
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
	
	if place_meeting(x,y,Melee) and timer<=-10 and Melee.attacking = true
	{
		life-=Melee.meleedmg
	}
	
	if (place_meeting(x,y,BulletPrim) or place_meeting(x,y,BulletSec)
	or place_meeting(x,y,Melee)
	
	) and timer<=0
	{
		timer=timervar
		instance_create_layer(x,y,"object2",BloodShoot)
		
		bleed = int64(random_range(0,bleedchange))
		bleed=4
		
		if bleed = 4
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
			life-=global.bleeding
			
			bleedtimer=bleedtimervar
		}
		
		if bleedtimes<=0
		{
			bleedtrigger=false
			bleedtimes=int64(random_range(5,11))
		}
	}
	
	
	timer--

	if timer>0
	{
		speed=spd * 0.5
	}
	else
	{
		speed=spd
	}
	
	if speed>0
	{
		sprite_index=ZumbiCorrendo
	}
	else
	{
		sprite_index=Zumbiparado
	}

	if place_meeting(x,y,Player)
	{
		spd=0
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
	image_speed = 0
	speed = 0
}
