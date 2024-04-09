/* hechos */
observa(maria,omar).
observa(laura,omar).
observa(maria,flavio).
observa(gabriela,flavio).
observa(maria,carlos).

observa(maria,flavio) /* A)true */.
observa(maria,Quien) /* B) primer ocurrencia porque recibe una variable entonces retorna el nombre de la person en este caso omar */ .
observa(maria,_) /* C) true responde a la primer coincidencia sin importar el valor que toma la variable anonima */.
observa(Quien,flavio) /* D) maria en este caso es la primer ocurrencia leyendo de arriba hacia abajo */.
observa(Quien1,Quien2) /* E) maria, omar primer coincidencia*/ .
observa( _ , _ ) /* F) True */.