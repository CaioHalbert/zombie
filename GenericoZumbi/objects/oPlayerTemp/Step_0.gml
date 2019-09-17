
// variavel do botão que sai do ataque inimigo
hurt = keyboard_check_pressed(ord("R"));
 
if(enable == true)
{
// configuração de variasveis de movimento
Control();

}

/**************************************/

else
// Condição de agarrar do zumbi
{
up =0;
down =0;
right=0;
left=0;
shoot=0;

timer += 1;
hp -= 0.025;
ifx += 0.05
	
	if(hurt)
	{
		i+=1;
		if(i>=10 && timer>= 20)
		{
			
			enable= true;
			
			
		}
	}
}
	
/***********************************/	
	
// condição para progresso de infecção
if(ifx>0 && ifx<=20)
{
	ifx += 0.01;
	Tstatus = "Infected";
}
else if(ifx>20 && ifx<=50)
{
	ifx += 0.02;
	hp -= 0.002;
	Tstatus = "Caution";
}
else if(ifx>50 && ifx<=80)
{
	ifx += 0.04;
	hp -= 0.004
	wSpeed = 3;
	Tstatus = "Danger";
}
else if(ifx>80)
{
	ifx += 0.08;
	hp -= 0.008;
	wSpeed = 2;
	Tstatus = "Hurry";
}

	
/******************************************/	

// movimentação
// calculo para ver se tem movimento pra direita ou esquerda
var movH = right - left; 
// calculo para ver se tem movimento pra direita ou esquerda
var movV = down - up; 

// mover direta ou esquerda
spdHorizontal = movH * wSpeed;

// mover direta ou esquerda
spdVertical = movV * wSpeed;


// colisao com parede --------------------------------------------

// vertical

if (place_meeting(x,y+spdVertical,oWall))
{
	while(!place_meeting(x,y+sign(spdVertical),oWall))
	{
		y=y+sign(spdVertical);
	}
	spdVertical = 0;	
}

// horizontal

if (place_meeting(x+spdHorizontal,y,oWall))
{
	while(!place_meeting(x+sign(spdHorizontal),y,oWall))
	{
		x=x+sign(spdHorizontal);
	}
	spdHorizontal = 0;	
}
// ------------------------------------------------------------------


// movimento
y = y+spdVertical;
x = x+spdHorizontal;


//animaçoes ---------------------------------------------------------------------

// movimento
if(movH == 0 &&  movV == 0)
{
	sprite_index = sprPlayerIdleTemp;
}
else
{
	sprite_index = sprPlayerRunTemp;
}

// direção

if(up)
{
	image_angle = 90;
}
else if(down)
{
	image_angle = -90;
}
else if(left)
{
	image_angle = 180;
}
else if(right)
{
	image_angle = 0;
}

// -------------------------------------------------------------------------------

// atirar com munição

if (shoot && ammo[0] >= 0)
{
	instance_create_depth(x,y,0,oBullet);
	ammo[0] -= 1;
}










