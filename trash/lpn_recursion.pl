%
% dolls
%

directlyin(katarina,olga).
directlyin(olga,natasha).
directlyin(natasha, irina).

in(X,Y) :- directlyin(X,Y).
in(X,Y) :- directlyin(X,Z), in(Z,Y).

%
% train
%

directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelFromTo(X,Y) :- directTrain(X,Y).

travelFromTo(X,Y) :- directTrain(X,Z), travelFromTo(Z,Y).

%
% number
%

numeral(0).
numeral(succ(X)) :- numeral(X).

%
% add
%

add(0,Y,Y).
add(succ(X),Y,succ(Z)) :-
        add(X,Y,Z).

%
% greater_than
%

gt(0,succ(_)).

gt(succ(X),succ(Y)) :- gt(X,Y).
