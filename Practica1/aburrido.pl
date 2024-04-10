/*Calcular la suma de los primeros N números naturales:
Define un predicado suma_naturales(N, Suma) que calcule la suma
de los primeros N números naturales.
*/
suma_naturales(0, 0).
suma_naturales(N, Suma):-
    N >0,
    N1 is N-1,
    suma_naturales(N1, SubSuma),
    Suma is SubSuma + N.

/*
 * Calcular el factorial de un número:
Define un predicado factorial(N, Fact)
que calcule el factorial de un número N.
 *
 * */
factorialN(0, 1).
factorialN(N, Fact) :- N > 0,
    N1 is N-1,
    factorialN(N1, FactTmp) ,
    Fact is N*FactTmp.

/*
 * Calcular el n-ésimo término de la secuencia de Fibonacci:
Define un predicado fibonacci(N, Fib) que calcule el n-ésimo
término de la secuencia de Fibonacci.
*/
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, Fib) :-
    N >1 ,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, Fib1),
    fibonacci(N2, Fib2),
    Fib is Fib1 + Fib2.