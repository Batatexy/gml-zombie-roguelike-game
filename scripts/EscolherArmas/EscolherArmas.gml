function EscolherArmas()
{
///////////////////////////////Arma Primaria////////////////////////////////////
switch (Gun.nomeprim)
{
	//Sub 1
    case 1 //Sub1
	:{
		//Automatico ou não
		Gun.autovarprim=true

		//Sprites
		Gun.spriteprim=sub1
		
		//Quantidade do pente
		Gun.balaspenteprim=25
		
		//Velocidade de Disparo
		Gun.shoottimervarprim=7
		//Velocidade de Reload
		Gun.reloadtimervarprim=50
		
		//Sons
		Gun.somprim1 = Tiro1
		Gun.somprim2 = Tiro2
		Gun.somprim3 = Tiro3
		Gun.somprim4 = Tiro4
		Gun.somprim5 = Tiro5
		
		//Dano
		Gun.dmgprim=1
		break
	}
	 
	//Sniper 1
	case 2 //Sniper 1
	:{
		//Automatico ou não
		Gun.autovarprim=false

		//Sprites
		Gun.spriteprim=sniper1

		//Quantidade do pente
		Gun.balaspenteprim=5

		//Velocidade de Disparo
		Gun.shoottimervarprim=110
		
		//Velocidade de Reload
		Gun.reloadtimervarprim=140

		//Sons
		Gun.somprim1 = Tiro1
		Gun.somprim2 = Tiro2
		Gun.somprim3 = Tiro3
		Gun.somprim4 = Tiro4
		Gun.somprim5 = Tiro5

		//Dano
		Gun.dmgprim=10
	}
    default
	:{
		
	}
}
	
///////////////////////////////Arma Secundaria/////////////////////////////////

switch (Gun.nomesec)
{
	//Pistol 1
    case 100 //Revolver 1
	:{
		//Automatico ou não
		Gun.autovarsec=false

		//Sprites
		Gun.spritesec=pistol1

		//Quantidade do pente
		Gun.balaspentesec=6

		//Velocidade de Disparo
		Gun.shoottimervarsec=30
		
		//Velocidade de Reload
		Gun.reloadtimervarsec=50

		//Sons
		Gun.somsec1 = Tiro1
		Gun.somsec2 = Tiro2
		Gun.somsec3 = Tiro3
		Gun.somsec4 = Tiro4
		Gun.somsec5 = Tiro5

		//Dano
		Gun.dmgsec=2
	}
	
	default
	:{
		
	}
	

}


}