/*Se tiene la siguiente base de hechos:*/
hijo(juan,miguel).
hijo(jose,miguel).
hijo(miguel,roberto).
hijo(julio,roberto).
hijo(roberto,carlos).
/*
Donde hijo(X,Y) indica que X es hijo de Y.
Definir la regla descendiente(A,B), la cual permite determinar si A es descendiente de B.
*/
descendiente(A,B):-hijo(A,B).
descendiente(A,B):- hijo(A,X), descendiente(X,B).