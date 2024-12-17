//Randomizador de vida
zombietype = int64(random_range(0,100))
zombienumber = 0

//Randomizador de velocidade de movimento
spdvar = random_range(0.25,0.75)

//Randomizador vida
lifemax = int64(random_range(2,4))



//Zumbi Boss
if zombietype=0
{
	spdvar = random_range(0.1,0.25)
	lifemax = int64(random_range(30,40))
	
	sprite_index = ZumbiBoss
	
	zombienumber = 2
}

//Zumbi Azul Explosão
else if zombietype > 1 and zombietype < 30
{
	spdvar = random_range(1.5,1.75)
	lifemax = 0.01
	
	sprite_index = ZumbiAzul
	zombienumber = 1
}

//Zumbi Comum
else 
{
	
}

life = lifemax
spd = spdvar

 
//Mudança de sprite
walkingtimervar = 30
walkingtimer = walkingtimervar




timervar=5
timer=0

speedtrigger=false
speedtimervar=50
speedtimer=speedtimervar

//Gemer quando nascer, true tem barulho
gemido = false
if gemido = true
{
ruarsom1= int64(random_range(1,3))
if ruarsom1=1{ruar=Ruar_Longo}
if ruarsom1=2{ruar=Ruar}
if ruarsom1=3{ruar=Ruu}

audio_play_sound(ruar, 10, false)
}
//SANGRAMENTO
bleedtrigger = false

//Randomizador Porcentagem de causar sangramento quanto menor melhor
bleedchance = global.bleedchance

//Randomizador de quantas vezes vai tomar dano de sangramento
bleedmintimes = 5
bleedtimes = int64(random_range(bleedmintimes,global.bleedtimes))

//Tempo entre os ticks de dano de sangramento
bleedtimervar = global.bleedtimer
bleedtimer = bleedtimervar
