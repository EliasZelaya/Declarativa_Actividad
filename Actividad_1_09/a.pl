:- ['bas.pl'].

no_es_estudiante(Nombre) :-
    \+ estudiante(Nombre).

es_mayor(X) :- estudiante(X), !.

mostrar_estudiante :-
    estudiante(X),
    write('Estudiante: '), write(X), nl,
    fail.
mostrar_estudiante.

verificar_estudiante :-
    write('Ingrese un nombre: '), read(X),
    ( estudiante(X)
    -> write('Si existe :D.')
    ; write('No existe papuh :()')
    ).