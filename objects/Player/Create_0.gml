global.pause = false
global.speedbullet = 14

lifemax=3
life=lifemax


dmgtrigger=false

//Tempo de invencibilidade
global.dmgtimervar=100
dmgtimer=global.dmgtimervar

bloodtrigger=0
zombiespawntimer=0

//Velocidade do player / distancia da parede
spd=1
hb=2

//Tela preta
alphablackscreenvar = 0.005
alphablackscreen = 1

//Som de passo
foottimervar=20
foottimer=foottimervar

walkingtimervar = 30
walkingtimer = walkingtimervar



//Inventario de armas

global.guncont = 1

global.gun1 = 2
global.gun2 = 1
global.gun100 = 1



//Recoil da arma, vai ser randomizado entre o valor abaixo negativo ao positivo
//se for global.recoilrng = 10
//global.recoil = random_range(-10 , 10)
global.recoilrng = 15
global.recoil = 0


//1 mata só 1 zombie
global.penetration = 1


//SANGRAMENTO
//Quanto de dado dá por tick
global.bleedingdmg = 0.1

//Tempo entre os ticks menor mais rapido
global.bleedtimer=60

//Chance de causar sangramento, menor maior a chance
global.bleedchance=11

//Quantas vezes vai dar dano de sangramento, maior melhor
global.bleedtimes=8


//Dano da explosão
global.explosiondmg = 3.5


//Cooldown quando troca de arma ou da melee
global.shoottimerprimvar=30
global.shoottimersecvar=20