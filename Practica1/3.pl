/*
3. Escribir un programa Prolog que responda consultas acerca de cuáles son los rivales de una determinada selección
en un campeonato mundial.
Una selección tiene como rivales todos los otros equipos de su mismo grupo.
Incluir en el programa la siguiente información:
• El grupo 1 está formado por Brasil, España, Jamaica e Italia.
• El grupo 2 está formado por Argentina, Nigeria, Holanda y Escocia.
El programa debe ser capaz de responder a las siguientes consultas:
a) ¿Son rivales Argentina y Brasil?
b) ¿Cuáles son los rivales de un determinado equipo (por ejemplo
Holanda)?
*/

/*
3. Escribir un programa Prolog que responda consultas acerca de cuáles son los rivales de una determinada selección
en un campeonato mundial.
Una selección tiene como rivales todos los otros equipos de su mismo grupo.
Incluir en el programa la siguiente información:
• El grupo 1 está formado por Brasil, España, Jamaica e Italia.
• El grupo 2 está formado por Argentina, Nigeria, Holanda y Escocia.
El programa debe ser capaz de responder a las siguientes consultas:
a) ¿Son rivales Argentina y Brasil?
b) ¿Cuáles son los rivales de un determinado equipo (por ejemplo
Holanda)?
*/
pertenece_grupo(grupo_1,brasil).
pertenece_grupo(grupo_1,españa).
pertenece_grupo(grupo_1,jamaica).
pertenece_grupo(grupo_1,italia).
pertenece_grupo(grupo_2,argentina).
pertenece_grupo(grupo_2,nigeria).
pertenece_grupo(grupo_2,holanda).
pertenece_grupo(grupo_2,escocia).
/* reglas */
son_rivales(X,Y):- X\=Y, pertenece_grupo(G1 , X), pertenece_grupo(G2 , Y), G1\= G2.

ver_rivales(Equipo) :-
    findall(Rival, (
        pertenece_grupo(Grupo_1, Equipo),
        pertenece_grupo(Grupo_2, Rival),
        Grupo_1 \= Grupo_2
    ), Rivales),
    writeln(Rivales).


/*
findall(Variable_Origen,FUNCION_devuelve_variables,Lista_destino)
*/

equipos_grupo(Grupo):- findall(Equipo, pertenece_grupo(Grupo,Equipo), ListaEquipos), writeln(ListaEquipos).