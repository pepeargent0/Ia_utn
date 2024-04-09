/*Escribir un programa Prolog que ayude a un organizador a armar un festival,
 * considerando las diferentes bandas de música que se pueden formar en cada ciudad.
Para formar una banda son necesarios un guitarrista, un cantante y un baterista.
Se dispone de la siguiente información:
• Carolina y José son guitarristas y viven en Rosario.
• Miguel es guitarrista y vive en Funes.
• Mariano es un cantante que vive en Rosario.
• Silvia es una cantante que vive en Funes.
• Eduardo es un baterista que vive en Roldán.
• Diego es un baterista que vive en Casilda.
• Laura es una baterista que vive en Rosario.
• Mauro es cantante y vive en Funes.
El programa debe responder si en una ciudad (dato de entrada), se puede o no formar una banda.
 */
integrante(carolina,guitarristas,rosario).
integrante(jose,guitarristas,rosario).
integrante(miguel,guitarristas,funes).
integrante(mariano,cantante,rosario).
integrante(silvia,cantante,funes).
integrante(eduardo,baterista,roldan).
integrante(diego,baterista,casilda).
integrante(laura,baterista,rosario).
integrante(mauro,cantante,funes).

formar_una_banda(X):- integrante(_,cantante,X), integrante(_,guitarristas,X),
    integrante(_,baterista,X).

formar_una_banda_input :- write('Ingrese el nombre de la ciudad: '),
    read(Ciudad),
    formar_una_banda(Ciudad).