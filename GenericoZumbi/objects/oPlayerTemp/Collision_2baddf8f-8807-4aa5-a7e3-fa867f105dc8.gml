/// @description colisão com o bicho

if(i >= 10 && enable == true)
{
	i=0;
	with(other) instance_destroy();
	
	
}
else if(enable == true)
{
	enable = false;
}
