#region globais
global.grav = 0;
global.money= 0;
global.hero=0;
global.music=true
global.warrior=false
global.sword=false
#region
#region funções
// colocando variação nos sons 
 function sound_efect (_sound,_var){
	// pith vai varias de ex:(.2-1 e .2+1)
	pith = random_range(1-_var,_var+1)
	// som , prioridade, repetição , , ,variação(pith)
	audio_play_sound(_sound,1,0,,,pith)
 }
 // ao fazer uma ação ira alterar a escala do objeto
 function efeito_squach(_xsc=0.8,_ysc=1.2){
	image_xscale=_xsc
	image_yscale=_ysc
}
// no step a escala do objeto retorna a posição inicial
function efeito_stretch(_velsq=.1){
	image_xscale=lerp(image_xscale,1,_velsq)
	image_yscale=lerp(image_yscale,1,_velsq)
}
#endregion