% accMax


max(List,Max) :-
     List = [H|_],
     accMax(List,H,Max).

accMax([H|T],A,Max) :-
   H > A,
   accMax(T,H,Max).

accMax([H|T],A,Max) :-
   H =< A,
   accMax(T,A,Max).

accMax([],A,A).


% In the text we discussed the 3-place predicate accMax
% which returned the maximum of a list of integers. By changing the code
% slightly, turn this into a 3-place predicate accMin which returns the
% minimum of a list of integers.

accMin([H|T],Y) :- accMin2(T,H,Y).

accMin2([],Acc,Acc).

accMin2([H|T],Acc,Y) :-
    H < Acc,
    accMin2(T,H,Y).

accMin2([H|T],Acc,Y) :-
    H >= Acc,
    accMin2(T,Acc,Y).


% In mathematics, an n-dimensional vector is a list of numbers of length n.
% For example, [2,5,12] is a 3-dimensional vector, and [45,27,3,-4,6] is
% a 5-dimensional vector. One of the basic operations on vectors is
% scalar multiplication . In this operation, every element of a vector is
% multiplied by some number. For example, if we scalar multiply the
% 3-dimensional vector [2,7,4] by 3 the result is the 3-dimensional
% vector [6,21,12] .
% Write a 3-place predicate scalarMult whose first argument is an integer,
% whose second argument is a list of integers, and whose third argument
% is the result of scalar multiplying the second argument by the first.
%
% For example, the query
%
% ?- scalarMult(3,[2,7,4],Result).
%
% should yield
%
% Result = [6,21,12]
% ! todo ACC version

scalarMult(_,[],[]).
scalarMult(X,[H|T],[ Hneu |R]) :-  Hneu is H * X, scalarMult(X,T,R).

% Another fundamental operation on vectors is the dot product.
% This operation combines two vectors of the same dimension and yields a
% number as a result. The operation is carried out as follows: the
% corresponding elements of the two vectors are multiplied, and the
% results added. For example, the dot product of [2,5,6] and [3,4,1] is
% 6+20+6 , that is, 32 . Write a 3-place predicate dot whose first
% argument is a list of integers, whose second argument is a list of
% integers of the same length as the first, and whose third argument is
% the dot product of the first argument with the second. For example, the
% query
%
% ?- dot([2,5,6],[3,4,1],Result).
%
% should yield
%
% Result = 32

dot(V1,V2,R) :- accdot(V1,V2,0,R).

accdot([],[],A,A).
accdot([H1|T1],[H2|T2],A,L) :- Anew is A + H1 * H2, accdot(T1,T2,Anew,L).


:- begin_tests(lists).
:- use_module(library(lists)).

test(max) :- max([1,2,3,4,5,6,7,8,9],9),!.
test(accMin) :- accMin([1,2,3,4,5,6,7,8,9],1).
test(scalarMult) :- scalarMult(3,[2,7,4],[6,21,12]),!.
test(dot) :- dot([2,5,6],[3,4,1],32).

:- end_tests(lists).









