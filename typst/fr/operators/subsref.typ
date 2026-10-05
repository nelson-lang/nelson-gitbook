#import "nelson_help.typ": *

= subsref <operators:subsref>

Référence par indice.

== Syntaxe

- #raw("B = subsref(A, S)");

== Argument d'entrée

/ A: tableau d'objets indexés
/ B: structure d'indexation

== Argument de sortie

/ B: Résultat de l'expression d'indexation

== Description

#strong[B \= subsref(A, S)]; est invoqué lors de l'utilisation de la syntaxe #strong[A(i)];, #strong[A{i}]; ou #strong[A.i]; avec un objet #strong[A];.


== Exemples

Indexation par parenthèses

``````matlab
A = magic(5);
S.type='()';
S.subs={1:2,':'};
R = subsref(A, S)
``````

Indexation par accolades

``````matlab
C = {"one", 2, 'three'};
S = [];
S.type = '{}';
S.subs = {[1 2]};
[R1, R2] = subsref(C, S);
``````

Indexation par point

``````matlab
A = struct('number', 10);
S = [];
S.type = '.';
S.subs = 'number';
R = subsref(A, S)
``````


== Voir aussi

#nlink(<operators:subsasgn>)[subsasgn];, #nlink(<operators:subsindex>)[subsindex];, #nlink(<operators:colon>)[colon];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
