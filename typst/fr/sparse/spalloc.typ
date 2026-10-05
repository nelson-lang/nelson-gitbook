#import "nelson_help.typ": *

= spalloc <sparse:spalloc>

Cree une matrice sparse avec stockage reserve.

== Syntaxe

- #raw("S = spalloc(m, n, nz)");

== Argument d'entrée

/ m: nombre de lignes.
/ n: nombre de colonnes.
/ nz: stockage demande pour les elements non nuls.

== Argument de sortie

/ S: une matrice sparse double.

== Description

#strong[spalloc]; cree une matrice sparse double m-par-n et reserve du stockage pour au plus #strong[nz]; elements non nuls.


== Exemple

``````matlab
S = spalloc(3, 4, 5)
nzmax(S)
``````


== Voir aussi

#nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:nzmax>)[nzmax];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
