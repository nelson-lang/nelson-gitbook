#import "nelson_help.typ": *

= horzcat <operators:horzcat>

Concaténation horizontale.

== Syntaxe

- #raw("R = horzcat(M1, M2, ... , MN)");
- #raw("R = [M1, M2, ... , MN]");

== Argument d'entrée

/ M1: une variable
/ M2: une variable
/ MN: une variable

== Argument de sortie

/ R: résultat de \[M1, M2, ... , MN\]

== Description

#strong[R \= horzcat(M1, M2, ... , MN)]; renvoie la concaténation horizontale de M1, M2, ... , MN le long de la dimension 2.


== Exemples

``````matlab
A = eye(2, 2);
B = ones(2, 2);
C = horzcat(A, B)
D = [A, B]
``````

``````matlab
A = 'nel';
B = 'son';
C = horzcat(A, B)
``````

Concatener des caracteres et nombres comme codes caractere.

``````matlab
C = [char(65) 1];
double(C)
``````


== Voir aussi

#nlink(<operators:vertcat>)[vertcat];, #nlink(<operators:cat>)[cat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
