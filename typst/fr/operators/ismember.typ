#import "nelson_help.typ": *

= ismember <operators:ismember>

Éléments d'un tableau présents dans un autre tableau.

== Syntaxe

- #raw("T = ismember(A, B)");
- #raw("[T, loc] = ismember(A, B)");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ T: résultat de ismember.
/ loc: plus petit indice dans B pour chaque élément de A présent, 0 en l'absence de correspondance.

== Description

#strong[T \= ismember(A, B)]; renvoie un tableau logique indiquant où les éléments de #strong[A]; se trouvent dans #strong[B];.

 #strong[\[T, loc\] \= ismember(A, B)]; renvoie aussi #strong[loc];, le plus petit indice dans #strong[B]; pour chaque élément de #strong[A]; présent dans #strong[B];, et 0 sinon.


== Exemple

``````matlab
A = [50 30 40 20];
B = [20 40 40 40 60 80];
T = ismember(A, B)

T = ismember(["a","b","f"], ["b", "f", "c"])


``````


== Voir aussi

#nlink(<data_analysis:sort>)[sort];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
