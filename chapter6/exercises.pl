

append2([],L,L).
append2([H|T],L2,[H|L3]) :- append2(T,L2,L3).

prefix2(P,L):- append2(P,_,L).

suffix2(S,L):- append2(_,S,L).

sublist(SubL,L):- suffix2(S,L), prefix2(SubL,S).



double(List) :- append(X,X,List).


%
% palindrom
%

palindrom(L) :- reverse(L,L).

%
% toptail
%






:- begin_tests(lists).
:- use_module(library(lists)).



test(palindrom) :-
        palindrom([a,b,c,d,c,b,a]).

test(palindrom) :-
        palindrom([a,b,c,d,c,b,a]).

test(palindrom) :-
        palindrom([a,b,c,d,c,b,a]).

:- end_tests(lists).






