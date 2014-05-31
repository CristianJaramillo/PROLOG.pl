padre('alberto','leoncio').
padre('geronimo','leoncio').
padre('juan','alberto').
padre('luis','alberto').
padre('luisa','geronimo').

hermano(B,A):-padre(A,C),padre(B,C),A\=B.
nieto(A,B):-padre(A,C),padre(C,B).