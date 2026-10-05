#import "nelson_help.typ": *

= cellstr <data_structures:cellstr>

Convertit en tableau cellulaire de chaînes de caractères.

== Syntaxe

- #raw("ce = cellstr(A)");

== Argument d'entrée

/ A: une chaîne, un tableau de chaînes, ou un tableau cellulaire de tableaux de caractères.

== Argument de sortie

/ ce: un tableau cellulaire de tableaux de caractères

== Description

#strong[cellstr(A)]; convertit en tableau cellulaire de tableaux de caractères.


== Exemples

``````matlab
cellstr('Nelson')
``````

``````matlab
cellstr({'Nelson'})
``````

``````matlab
cellstr({})
``````


== Voir aussi

#nlink(<data_structures:iscellstr>)[iscellstr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
