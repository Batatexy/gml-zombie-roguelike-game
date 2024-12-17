//Criação de espadas com swing básico
function MeleeComSwing()
{
	angle=-180
	
	if Melee.atktimer>=0
	{
		image_angle = point_direction(x, y, mouse_x, mouse_y)+angle
		direction=point_direction(x, y, mouse_x, mouse_y)+angle
		originalangle=image_angle
		
		//meleesom=0
		meleevar=int64(random_range(1,6))
		if meleevar = 1{meleesom = Melee.meleesom1}
		if meleevar = 2{meleesom = Melee.meleesom2}
		if meleevar = 3{meleesom = Melee.meleesom3}
		if meleevar = 4{meleesom = Melee.meleesom4}
		if meleevar = 5{meleesom = Melee.meleesom5}
		audio_play_sound(meleesom, 1, false, 0.5);
	}
	else
	{
		visible=true
		sprite_index=Melee.meleesprite
		
		if Melee.sides=0 and image_angle<=originalangle+190
		{
			image_yscale = 1
			image_angle+=meleespd
		}
		
		else if Melee.sides=1 and image_angle>=originalangle-190
		{
			image_yscale = -1
			image_angle-=meleespd
		}
		
		else
		{
			Melee.sides+=1
			Melee.attacking=0
			angle *= -1
		}
	}
}
