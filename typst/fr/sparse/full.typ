#import "nelson_help.typ": *

= full <sparse:full>

Conversion de matrice sparse vers pleine.

== Syntaxe

- #raw("M = full(sp)");

== Argument d'entrée

/ sp: une matrice : double ou logique, sparse.

== Argument de sortie

/ M: une matrice.

== Description

#strong[full]; convertit une matrice sparse en sa représentation pleine.

 Si l'argument d'entrée est déjà plein, alors l'argument de sortie sera égal à l'argument d'entrée.


== Exemple

``````matlab
sp = sparse(eye(3,3))
F = full(sp)
``````


== Voir aussi

#nlink(<sparse:sparse>)[sparse];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
