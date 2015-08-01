
% swipl -s acetexts-to-lines.pl -g main -t halt

:- [acetexts].

rep('\n', ' ') :- !.
rep(X, X).

main :-
    text_drs_eval(0, _, S, _, _, _, _, _),
    atom_chars(S, Cs),
    maplist(rep, Cs, Cs1),
    atom_chars(S1, Cs1),
    writeln(S1),
    fail.
