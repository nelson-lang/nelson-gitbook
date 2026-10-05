#import "../nelson_help.typ": *

= bdschur <control_system:6_matrix_computations.bdschur>

Factorisation de Schur en blocs diagonaux.

== Syntaxe

- #raw("[T, B] = bdschur(A)");
- #raw("[T, B] = bdschur(A, CONDMAX)");

== Argument d'entrée

/ A: Matrice carrée réelle.
/ CONDMAX: borne supérieure sur le nombre de condition de T. Par défaut, CONDMAX \= 1e4.

== Argument de sortie

/ T: Matrice de transformation.
/ B: Matrice diagonale par blocs obtenue par la transformation B \= T \\ A \* T.

== Description

#strong[\[T, B\] \= bdschur(A, CONDMAX)]; calcule une matrice de transformation #strong[T];, où#strong[B \= T \\ A \* T]; donne une matrice diagonale par blocs, chaque bloc étant une matrice de Schur quasi triangulaire supérieure, assurant la diagonalisation de la matrice A tout en préservant certaines propriétés structurelles.


== Fonction(s) utilisée(s)

MB03RD

== Bibliographie

http:\/\/slicot.org\/objects\/software\/shared\/doc\/MB03RD.html

== Exemple

``````matlab

A = [1.   -1.    1.    2.    3.    1.    2.    3.;
   1.    1.    3.    4.    2.    3.    4.    2.;
   0.    0.    1.   -1.    1.    5.    4.    1.;
   0.    0.    0.    1.   -1.    3.    1.    2.;
   0.    0.    0.    1.    1.    2.    3.   -1.;
   0.    0.    0.    0.    0.    1.    5.    1.;
   0.    0.    0.    0.    0.    0.    0.99999999   -0.99999999;
   0.    0.    0.    0.    0.    0.    0.99999999    0.99999999];
[T, B] = bdschur(A)

``````


== Voir aussi

#nlink(<slicot:slicot_mb03rd>)[slicot\_mb03rd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: SLICOT Documentation
