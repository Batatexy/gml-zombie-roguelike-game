 lifemax=int64(random_range(2,4))
 life=lifemax
 spdvar=random_range(0.25,0.75)
 spd=spdvar

timervar=5
timer=0

speedtrigger=false
speedtimervar=50
speedtimer=speedtimervar

gemido = false
if gemido = true
{
	ruarsom1= int64(random_range(1,3))
	if ruarsom1=1{audio_play_sound(Ruar_Longo, 10, false)}
	if ruarsom1=2{audio_play_sound(Ruar, 10, false)}
	if ruarsom1=3{audio_play_sound(Ruu, 10, false)}
}
	
bleedchange = 10
bleedtimes=int64(random_range(5,11))

bleedtrigger=false
bleedtimervar=global.bleedtimer
bleedtimer=bleedtimervar