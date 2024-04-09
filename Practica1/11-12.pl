/*
Hacer un programa para calcular el factorial de un número. factorial(N,Fact).
. N es el número ingresado (argumento de entrada).
. Fact es el resultado calculado (argumento de salida).
*/
factorial(0,1).
factorial(N,Fact):- N >0,
    N1 is N-1,
    factorial(N1, SubFact),
    Fact is N * SubFact.

suma(1,1).
suma(N,Sum):- N1 is N-1, suma(N1, SubSum),Sum is N+SubSum.