hombre('Carlos').
hombre('Juan').
hombre('Pedro').
hombre('Pablo').
hombre('Mateo').
hombre('Andres').
hombre('Edwin').
mujer('Maria').
mujer('Paula').
mujer('Carla').
mujer('Lorena').

padre('Carlos','Juan').
padre('Carlos','Carla').
padre('Maria','Juan').
padre('Carlos','Carla').
padre('Carlos','Juan').
padre('Juan','Pablo').
padre('Juan','Mateo').
padre('Paula','Pablo').
padre('Paula','Mateo').
padre('Pedro','Andres').
padre('Carla','Andres').
padre('Andres','Edwin').
padre('Lorena','Edwin').

esposos('Maria','Carlos').
esposos('Juan','Paula').
esposos('Pedro','Carla').
esposos('Andres','Lorena').

esposos('Carlos','Maria').
esposos('Paula','Juan').
esposos('Carla','Pedro').
esposos('Lorena','Andres').

diferente(X,Y):- X\==Y.
hijo(A,B):-padre(B,A),hombre(A).
hija(A,B):-padre(B,A),mujer(A).
nieto(A,B):-padre(B,C),padre(C,A),hombre(A).
hermano(A,B):-padre(C,A),padre(C,B),diferente(A,B).
primo(A,B):-padre(C,A),padre(D,B),hermano(C,D),diferente(D,C).
tio(A,B):-padre(C,B),hermano(C,A),hombre(A).
abuelo(A,B):-nieto(B,A).
cunado(A,B):-esposos(B,C),hermano(A,C).
tia(A,B):-padre(C,B),hermano(C,A),mujer(A).
sobrino(A,B):-hijo(A,C),hermano(C,B),hombre(A).
sobrina(A,B):-hija(A,C),hermano(C,B),mujer(A).
suegro(A,B):-hijo(C,A),hija(C,A),esposos(C,B).