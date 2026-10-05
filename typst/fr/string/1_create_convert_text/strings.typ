#import "../nelson_help.typ": *

= strings <string:1_create_convert_text.strings>

Crée un tableau de chaînes vide.

== Syntaxe

- #raw("C = strings()");
- #raw("C = strings(m)");
- #raw("C = strings(m, n)");
- #raw("C = strings(m, n, ... , p)");
- #raw("C = strings(sz)");

== Argument d'entrée

/ m, n, ... , p: dimensions du tableau de chaînes à créer.
/ sz: un vecteur d'entiers (dimensions du tableau à créer).

== Argument de sortie

/ C: un tableau de chaînes

== Description

#strong[strings]; renvoie un tableau de chaînes vides.


== Exemple

``````matlab
A = eye(2, 4);
sz = size(A)
C = strings(sz)
``````


== Voir aussi

#nlink(<data_structures:cell>)[cell];, #nlink(<types:isstring>)[isstring];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
