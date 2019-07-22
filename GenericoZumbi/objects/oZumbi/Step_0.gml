/// @description Insert description here
// You can write your code in this editor

// armazenar objetos na zona de colisao
var _detector = collision_circle_list(x,y,RaioVisao,oActors,false,true,ListaAlvos,true);
// achar o mais perto
var _closest = ListaAlvos[|0];
// ajusta ponto alvo caso tenha algum alvo
if( ds_list_empty(ListaAlvos) == false )
{
	PontoAlvoX = _closest.x;
	PontoAlvoY = _closest.y;

	if(_closest.id == oPlayerTemp.id)
	{
		image_angle =  point_direction(x,y,_closest.x, _closest.y);
		mp_potential_step_object(_closest.x,_closest.y,speedZumbi,oWall);
	}
}


// limpar lista
ds_list_clear(ListaAlvos);

/*
var inst = instance_nearest(x, y, oPlayerTemp);
if instance_exists(inst)
{
    x1 = x + lengthdir_x(100, image_angle - anguloOffset);
    y1 = y + lengthdir_y(100, image_angle - anguloOffset);
    x2 = x + lengthdir_x(100, image_angle + anguloOffset);
    y2 = y + lengthdir_y(100, image_angle + anguloOffset);
   if point_in_triangle(inst.x, inst.y, x, y, x1, y1, x2, y2)
   {
      can_see = true;
   }
   else
   {
	   can_see = false;
   }
}

if(can_see)
{
	mp_potential_step_object(inst.x,inst.y,speedZumbi,oWall);
	image_angle =  point_direction(x,y,inst.x,inst.y);
}
*/