/*
4. Dados los siguientes predicados: hombre(unHombre). mujer(unaMujer). padres(persona, madre, padre).
a. Construya una base de hechos con los miembros de su familia. b. Defina las siguientes reglas:
• hermana/2, donde hermana(A,B) significa que A es hermana de B.
• nieto/2, donde nieto(A,B) significa que A es el nieto de B.
• abuelo/2, donde abuelo(A,B) significa que A es el abuelo de B.
• tia/2, donde tia(A,B) significa que A es la tía de B. Esta regla definirla, en una primera instancia,
valiéndose sólo de los hechos disponibles. En una segunda instancia, valiéndose de alguna otra regla que
pudieron haber definido previamente.
*/
hombre(abraham).
hombre(clancy).
hombre(herbert).
hombre(homero).
hombre(bart).
mujer(mona).
mujer(jacqueline).
mujer(marge).
mujer(patty).
mujer(selma).
mujer(lisa).
mujer(maggie).
mujer(ling).
padres(homero, mona, abraham).
padres(herbert, mona, abraham).
padres(marge, jacqueline, clancy).
padres(patty, jacqueline, clancy).
padres(selma, jacqueline, clancy).
padres(bart, marge, homero).
padres(lisa, marge, homero).
padres(maggie, marge, homero).
padres(ling, selma, alone ).

hermana(A,B):- mujer(A), padres(A,M,P), padres(B,M,P), A\=B.
nieto(A, B) :- hombre(A), padres(A, MiMadre, MiPadre), (
      padres(MiPadre,B,_);padres(MiMadre,B,_);
      padres(MiPadre,_,B);padres(MiMadre,_,B)
    ).

tia(A,B):- mujer(A), padres(B,Madre,Padre),(
   hermana(A,Madre); hermana(A,Padre)
   ).