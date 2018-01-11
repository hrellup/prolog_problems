
% exercise 4.3

second(X,[_,X|_]).

% exercise 4.4


swap12([],[]).
% swap12([X,Y|List1], [X,Y|List2]) :-

my_list([1,2,3]).
my_list2([1,2,3]).

gleiche_liste2([],[]).
gleiche_liste2([X|Ta],[X|Tb]) :- gleiche_liste2(Ta,Tb).
gleiche_liste([X,Y|Ta],[Y,X|Tb]) :- gleiche_liste2(Ta,Tb).

% translate

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

% a2b([],[]).

a2b([],[]).
a2b([a|Ta],[b|Tb]) :- a2b(Ta,Tb).

% tra% X = [one,nine,two].
% listtran(X,[one,seven,six,two]).
% X = [eins,sieben,sechs,zwei].

listtran([],[]).
listtran([AH|AT],[BH|BT]) :- tran(AH,BH), listtran(AT,BT).

% twice

twice([],[]).
twice([AH|AT],[AH,AH|BT]) :-  twice(AT,BT).

peter(dam).
