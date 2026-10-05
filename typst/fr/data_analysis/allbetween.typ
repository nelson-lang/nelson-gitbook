#import "nelson_help.typ": *

= allbetween <data_analysis:allbetween>

Determine si tous les elements sont compris entre des bornes.

== Syntaxe

- #raw("tf = allbetween(A, lower, upper)");
- #raw("tf = allbetween(A, lower, upper, intervalType)");
- #raw("tf = allbetween(..., name, value)");

== Argument d'entrée

/ A: tableau ou table.
/ lower, upper: bornes inferieure et superieure.
/ intervalType: 'closed', 'open', 'openleft', 'openright', 'closedleft' ou 'closedright'.

== Argument de sortie

/ tf: scalaire logique.

== Description

#strong[allbetween]; renvoie true si chaque element selectionne de #strong[A]; est dans l'intervalle defini par #strong[lower]; et #strong[upper];.


== Exemples

``````matlab
A = [2 3 4];
allbetween(A, 2, 4)
allbetween(A, 2, 4, 'open')
``````

``````matlab
T = table([2; 3; 4], [10; 11; 12], 'VariableNames', {'A', 'B'});
allbetween(T, 2, 4, 'DataVariables', 'A')
allbetween(T, 2, 12, 'DataVariables', {'A', 'B'})
``````


== Voir aussi

#nlink(<data_analysis:isbetween>)[isbetween];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
