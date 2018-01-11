% combine 1
%
% ?- combine1([a,b,c],[1,2,3],X).
% X = [a,1,b,2,c,3]
%
% ?- combine1([f,b,yip,yup],[glu,gla,gli,glo],Result).
%
%
% Result = [f,glu,b,gla,yip,gli,yup,glo]
% *************************************************************
%

combine1([],[],[]).

combine1([AH|AT],[BH|BT],[AH,BH|C]) :- combine1(AT,BT,C).

% combine2
% Now write a 3-place predicate combine2 which takes three lists as arguments and combines the elements of the first two lists into the third as follows:
%
% ?- combine2([a,b,c],[1,2,3],X).
%
%
% X = [[a,1],[b,2],[c,3]]
%
% ?- combine2([f,b,yip,yup],[glu,gla,gli,glo],Result).
%
%
% Result = [[f,glu],[b,gla],[yip,gli],[yup,glo]]

combine2([],[],[]).
combine2([AH|AT],[BH|BT],[CH,CT]) :- combine2(AT,BT,CT).

