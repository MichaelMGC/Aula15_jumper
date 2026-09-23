vspeed=global.grav
tipo=random(100)
space=random_range(42,124)
if (y>350){
	if (tipo>80){
	instance_create_layer(49,-alt,"Instances",obj_ddog)
	instance_create_layer(space,-(alt+money),"Instances",obj_money)
}else if (tipo>41 and tipo<80){
	instance_create_layer(space,-alt,"Instances",obj_dbee)
	instance_create_layer(space,-(alt+money),"Instances",obj_money)
}else if (tipo<40){
	instance_create_layer(space,-alt,"Instances",obj_dimortal)
	instance_create_layer(space,-(alt+money),"Instances",obj_money)
}
	instance_destroy();
}