#import "nelson_help.typ": *

= isbetween <data_analysis:isbetween>

Determine les elements compris entre des bornes inferieure et superieure.

== Syntaxe

- #raw("TF = isbetween(A, lower, upper)");
- #raw("TF = isbetween(A, lower, upper, intervalType)");
- #raw("TF = isbetween(..., name, value)");

== Argument d'entrée

/ A: tableau ou table.
/ lower, upper: bornes inferieure et superieure.
/ intervalType: 'closed', 'open', 'openleft', 'openright', 'closedleft' ou 'closedright'.
/ name, value: Pour les tables, prend en charge 'DataVariables' et 'OutputFormat'.

== Argument de sortie

/ TF: tableau logique ou table logique.

== Description

#strong[isbetween]; renvoie true lorsque #strong[A]; est dans l'intervalle defini par #strong[lower]; et #strong[upper];. L'intervalle par defaut est ferme.


== Exemples

``````matlab
A = [1 2 3 4 5];
isbetween(A, 2, 4)
isbetween(A, 2, 4, 'open')
``````

``````matlab
T = table([1; 2; 3], [4; 5; 6], 'VariableNames', {'A', 'B'});
isbetween(T, 2, 5)
isbetween(T, 2, 5, 'DataVariables', 'B', 'OutputFormat', 'tabular')
``````


== Voir aussi

#nlink(<data_analysis:allbetween>)[allbetween];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
