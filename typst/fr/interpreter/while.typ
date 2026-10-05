#import "nelson_help.typ": *

= while <interpreter:while>

boucle while.

== Syntaxe

- #raw("while test_expression, statements, end");

== Description

La boucle #strong[while]; exécute un ensemble d'instructions tant que la condition de test reste #strong[true];.


== Exemple

``````matlab

i = 0;
while lt(i, 10)
  disp(i)
  i = i + 1;
end

``````


== Voir aussi

#nlink(<interpreter:for>)[for];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
