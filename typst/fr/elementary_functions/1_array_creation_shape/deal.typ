#import "../nelson_help.typ": *

= deal <elementary_functions:1_array_creation_shape.deal>

Distribue les entrées vers les sorties.

== Syntaxe

- #raw("[R1, ... , Rn] = deal(A1, ... , An)");
- #raw("[R1, ... , Rn] = deal(A)");

== Argument d'entrée

/ A1, ... , An: variables

== Argument de sortie

/ R1, ... , Rn: variables

== Description

#strong[deal]; réplique les paramètres d'entrée vers les paramètres de sortie correspondants.

 Si un seul paramètre d'entrée est fourni, sa valeur sera dupliquée pour tous les sorties.


== Exemples

``````matlab
[A1, A2, A3] = deal(pi)
``````

``````matlab
S = [];
S.A = [];
S(2).A = [];
S(3).A = [];
A1 = 200;
A2 = 'fifo';
A3 = 1:11;
[S.A] = deal(A1, A2, A3) 
``````

``````matlab
C = cell(1,3)
A1 = 200;
A2 = 'fifo';
A3 = 1:11;
[C{:}] = deal(A1, A2, A3)
``````


== Voir aussi

#nlink(<data_structures:cell>)[cell];, #nlink(<data_structures:struct>)[struct];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
