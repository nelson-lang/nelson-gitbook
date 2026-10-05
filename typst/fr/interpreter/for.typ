#import "nelson_help.typ": *

= for <interpreter:for>

boucle for.

== Syntaxe

- #raw("for variable = expression, statements, end");
- #raw("for variable, statements, end");

== Description

La boucle #strong[for]; exécute un ensemble d'instructions avec une variable d'indice parcourant chaque élément d'un vecteur.

 #strong[parfor]; est actuellement un alias du mot-clé #strong[for];.


== Exemples

``````matlab
for i = 1:10, disp(i), end
``````

``````matlab
for i = [1, 2; 3 4], disp(i), disp('next'), end
``````


== Voir aussi

#nlink(<interpreter:while>)[while];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
