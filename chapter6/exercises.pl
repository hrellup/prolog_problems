%
% helper functions
%

myappend([],L,L).
myappend([H|T],L2,[H|L3]) :- myappend(T,L2,L3).

myprefix(P,L):- myappend(P,_,L).
mysuffix(S,L):- myappend(_,S,L).

sublist(SubL,L):- mysuffix(S,L), myprefix(SubL,S).

%
% 6.1
%

double(List) :- append(X,X,List).


%
% 6.2
%

palindrom(L) :- reverse(L,L).

%
% 6.3 toptail
%

toptail(In, Out):- append([_|Out],[_], In)

%
% 6.4 last
%

last(List,X) :- reverse(List,[X|_]).



:- begin_tests(lists).
:- use_module(library(lists)).

test(double) :- double([a,b,c,a,b,c]),!.

test(double, fail) :-
        double([foo,gubble,foo]).

test(palindrom) :-
        palindrom([a,b,c,d,c,b,a]).

:- end_tests(lists).






















