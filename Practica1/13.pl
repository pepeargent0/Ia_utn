suma(0, 0, 0).
suma(N, SumPares, SumImpares):-
    N > 0,
    N1 is N - 1,
    suma(N1, SubPares, SubImpares),
    (N mod 2 =:= 0 -> SumPares is SubPares + N, SumImpares = SubImpares;
     N mod 2 =\= 0 -> SumImpares is SubImpares + N, SumPares = SubPares).