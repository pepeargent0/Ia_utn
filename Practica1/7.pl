/*
7. Escribir un programa que simule una calculadora para las operaciones matemáticas
básicas (suma, resta, multiplicación y división)
entre dos valores numéricos, informando el resultado.
*/
suma(X,Y,Result):- Result is X+Y.
resta(X,Y,Result):- Result is X-Y.
multiplicar(X,Y,Result):- Result is X*Y.
dividir(X,Y,Result):- Y\=0, Result is X/Y.


calculadora:- writeln("ingrese primer numero"), read(A),
    writeln("ingrese segundo numero"), read(B),
    writeln("ingrese operacion: suma,resta,multiplicacion,division"), read(Operacion),
    (
        Operacion = suma -> suma(A, B, Resultado);
        Operacion = resta -> resta(A, B, Resultado);
        Operacion = multiplicacion -> multiplicar(A, B, Resultado);
        Operacion = division -> dividir(A, B, Resultado)
    ),
    write('El resultado es: '), write(Resultado).

/*
notas if en prolog se hace asi   a = b esto significa si a es igual a b
-> entonces o then depende del lenguaje de programacion

es_uno(X):- X=1 -> true.

si es 1 entonces devuelve true, suena medio trivial pero no lo conocia jajaja
es_uno(X):- X=1 -> writeln("es uno").
*/