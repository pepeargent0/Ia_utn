% auto(patente,propietario)
auto(hti687,pedro).
auto(jug144,juan).
auto(gqm758,pedro).
auto(lod445,carlos).
auto(lfz569,miguel).
auto(axk798,maria).
% deuda(patente, monto adeudado)
deuda(lfz569,2000).
deuda(gqm758,15000).
deuda(axk798,1000).

tiene_deuda :-
    write('Ingrese el nombre de la persona: '),
    read(Nombre),
    auto(Patente, Nombre),
    deuda(Patente, _).