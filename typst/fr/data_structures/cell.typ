#import "nelson_help.typ": *

= cell <data_structures:cell>

Créer un tableau cellulaire de matrices vides.

== Syntaxe

- #raw("C = cell()");
- #raw("C = cell(m)");
- #raw("C = cell(m, n)");
- #raw("C = cell(m, n, ... , p)");
- #raw("C = cell(sz)");
- #raw("C = cell(A)");

== Argument d'entrée

/ m, n, ... , p: dimensions du tableau cellulaire à créer.
/ sz: un vecteur d'entiers (dimensions du tableau cellulaire à créer).
/ A: un tableau de chaînes.

== Argument de sortie

/ C: un tableau cellulaire

== Description

#strong[cell]; renvoie un tableau cellulaire de matrices vides.

 #strong[cell()]; est équivalent à #strong[cell(0)];

 #strong[cell(A)]; avec A un tableau de chaînes convertit en cell.


== Exemples

``````matlab
A = eye(2, 4);
sz = size(A)
C = cell(sz)
``````

``````matlab
A = ["Nel", "son"; "open", "source"];
C = cell(A)
``````


== Voir aussi

#nlink(<data_structures:struct>)[struct];, #nlink(<types:iscell>)[iscell];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
