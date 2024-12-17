x=Player.x
y=Player.y

if keyboard_check_pressed(ord("F")) and attacking = false and Player.dmgtrigger = false
{
	attacking = true
	atktimer = 1
}

if attacking = true
{
	visible=true
	atktimer--
	MeleeComSwing()
}
else
{
	visible=false
}

if sides>=2
{
	sides=0
}