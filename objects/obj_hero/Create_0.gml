image_index=0;
image_speed=0;
vel=3
audio_stop_all()
if (global.music)audio_play_sound(snd_music,1,1)
controle_hero = function (){
	var _left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	var _right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	var _golpe = keyboard_check_pressed(vk_space)
	var _rage = instance_place(x,y,obj_inimigo)
	if (_rage){
		image_speed=1
		vspeed=-3.5
		global.grav=4.5
		audio_stop_sound(snd_slash)
		sound_efect(snd_slash,.2)
	}
	/*
	if (_golpe){
		image_speed=1
		vspeed=-3
		global.grav=4
		audio_stop_sound(snd_slash)
		sound_efect(snd_slash,.2)
	}
	*/
	if vspeed>0{
		global.grav=0
	}
	velh = (_right - _left) * vel;
	// lado da sprite é baseado na velocidade vertical
	var _colh	= instance_place(x+velh, y, obj_bloco);
	if (velh!=0){
		//imagen horizontal = lerp(imagen orizontal se aproxima 
		//da lado onde o personagem esta observando com aproximação de .3 )
		image_xscale = lerp(image_xscale,sign(velh),.3)
		//image_xscale = sign(velh);
	}
	if (_colh){
		vel=.1
		velh= velh*-1
	}else {
		vel=3
	}
	x +=velh;

}