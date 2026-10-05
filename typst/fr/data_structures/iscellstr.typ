#import "nelson_help.typ": *

= iscellstr <data_structures:iscellstr>

Renvoie si une variable est un tableau cellulaire de chaînes.

== Syntaxe

- #raw("true_or_false = iscellstr(A)");

== Argument d'entrée

/ A: une variable

== Argument de sortie

/ true\_or\_false: un logique

== Description

#strong[iscellstr(A)]; renvoie vrai si#strong[A]; est un tableau cellulaire de chaînes ou un tableau cellulaire vide.


== Exemples

``````matlab
iscellstr('Nelson')
``````

``````matlab
iscellstr({'Nelson'})
``````

``````matlab
iscellstr({})
``````


== Voir aussi

#nlink(<types:iscell>)[iscell];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
