word(astante, a,s,t,a,n,t,e).
word(astoria, a,s,t,o,r,i,a).
word(baratto, b,a,r,a,t,t,o).
word(cobalto, c,o,b,a,l,t,o).
word(pistola, p,i,s,t,o,l,a).
word(statale, s,t,a,t,a,l,e).

crossword(V1,V2,V3,H1,H2,H3) :-
    word(V1,_,V1C2,_,V1C4,_,V1C6,_),
    word(V2,_,V2C2,_,V2C4,_,V2C6,_),
    word(V3,_,V3C2,_,V3C4,_,V3C6,_),
    word(H1,_,V1C2,_,V2C2,_,V3C2,_),
    word(H2,_,V1C4,_,V2C4,_,V3C4,_),
    word(H3,_,V1C6,_,V2C6,_,V3C6,_).
