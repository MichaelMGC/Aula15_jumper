image_index=1
tween(id,"image_xscale",1.3,tween_animation.bounce,30)
tween(id,"image_yscale",0.9,tween_animation.bounce,30)
tween(id,"t_font",1.2,tween_animation.back,10)
if (som){
	audio_play_sound(snd_boton,1,0)
}
som=false