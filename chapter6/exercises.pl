

% append([],L,L).
% append([H|T],L2,[H|L3]) :- append2(T,L2,L3).

% prefix(P,L):- append2(P,_,L).
% suffix(S,L):- append2(_,S,L).

% sublist(SubL,L):- suffix2(S,L), prefix2(SubL,S).

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






:- begin_tests(lists).
:- use_module(library(lists)).

test(double) :-
        double([a,b,c,a,b,c]).
        
test(double, fail) :-
        double([foo,gubble,foo]).

test(palindrom) :-
        palindrom([a,b,c,d,c,b,a]).
        
test(palindrom) :-
        palindrom([a,b,c,d,c,b,a]).

test(palindrom) :-
        palindrom([a,b,c,d,c,b,a]).

test(palindrom) :-
        palindrom([a,b,c,d,c,b,a]).

:- end_tests(lists).






