#import "nelson_help.typ": *

= mustBeBetween <validators:mustBeBetween>

Valide que tous les elements sont compris dans une plage specifiee.

== Syntaxe

- #raw("mustBeBetween(A, lower, upper)");
- #raw("mustBeBetween(A, lower, upper, intervalType)");
- #raw("mustBeBetween(..., name, value)");
- #raw("mustBeBetween(..., argPosition)");

== Argument d'entrée

/ A: tableau ou table a valider.
/ lower, upper: bornes inferieure et superieure.
/ intervalType: 'closed', 'open', 'openleft', 'openright', 'closedleft' ou 'closedright'.
/ name, value: Pour les tables, prend en charge 'DataVariables'.
/ argPosition: entier positif optionnel : position de l'argument d'entree.

== Description

#strong[mustBeBetween]; leve une erreur si un element selectionne de #strong[A]; est en dehors de l'intervalle defini par #strong[lower]; et #strong[upper];. L'intervalle par defaut est ferme.


== Exemples

``````matlab
mustBeBetween([3 4 5], 0, 5)
mustBeBetween([3 4], 0, 5, 'open')
``````

``````matlab
T = table([2; 3; 4], [10; 11; 12], 'VariableNames', {'A', 'B'});
mustBeBetween(T, 2, 4, 'DataVariables', 'A')
``````


== Voir aussi

#nlink(<data_analysis:allbetween>)[allbetween];, #nlink(<data_analysis:isbetween>)[isbetween];, #nlink(<validators:mustBeInRange>)[mustBeInRange];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
