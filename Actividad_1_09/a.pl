:- ['bas.pl'].

%es como una funcion de derecha a izquierda, a la izquierda agarra el valor de la base y luego los niega, posteriormente lo manda a no es estudiante y da true o false 
% :- funciona con un solo si, basicamente solo si no se cumple lo imprime o algo asi
no_es_estudiante(Nombre) :-
    \+ estudiante(Nombre).

% en este caso solo se muestra el primer estudiante y luego de imprimirlo deja de ejecutarse ! indica el corte
es_mayor(X) :- estudiante(X), !.

mostrar_estudiante :-
    estudiante(X),
    write('Estudiante: '), write(X), nl,
%Basicamente funciona como un loop, repite la instruccion hasta que ya falla, en este caso hasta que no encuentra un nombre
    fail. 
mostrar_estudiante.

% solo si existe en la base imprime que si existe y si no existe pues que no existe
verificar_estudiante :-
    write('Ingrese un nombre: '), read(X),
    ( estudiante(X)
    -> write('Si existe :D.')
    ; write('No existe papuh :()')
    ).