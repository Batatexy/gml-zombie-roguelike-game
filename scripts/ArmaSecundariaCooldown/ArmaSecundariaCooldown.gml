// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ArmaSecundariaCooldown()
{
	Gun.shoottimersec = global.shoottimersecvar
	Gun.reloadtimersec = Gun.reloadtimervarsec
	Gun.reloadtriggersec = false
}