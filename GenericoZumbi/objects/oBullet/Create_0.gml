/// @description Insert description here
// You can write your code in this editor
spdBullet = 30;

// sprite da bala atualiza com o do player
//****** portanto deixar sprites no mesmo angulo*******
image_angle = oPlayerTemp.image_angle;

if(image_angle == 0  )
{
	move_towards_point(x+1,y,spdBullet);
}
else if(image_angle == 90  )
{
	move_towards_point(x,y-1,spdBullet);
}
else if(image_angle == 180  )
{
	move_towards_point(x-1,y,spdBullet);
}
else if(image_angle == -90  )
{
	move_towards_point(x,y+1,spdBullet);
}