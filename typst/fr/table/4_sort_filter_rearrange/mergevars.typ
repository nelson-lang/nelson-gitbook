#import "../nelson_help.typ": *

= mergevars <table:4_sort_filter_rearrange.mergevars>

Fusionne des variables de table.

== Syntaxe

- #raw("T2 = mergevars(T, vars)");
- #raw("T2 = mergevars(T, vars, 'NewVariableName', name)");

== Argument d'entrée

/ T: Table d'entree.
/ vars: Variables a fusionner.

== Argument de sortie

/ T2: Table avec variables fusionnees.

== Description

#strong[mergevars]; combine plusieurs variables selectionnees en une seule variable de table.


== Exemple

``````matlab
T = table([1; 2], [3; 4], 'VariableNames', {'A', 'B'});
R = mergevars(T, {'A', 'B'}, 'NewVariableName', 'AB')
``````


== Voir aussi

#nlink(<table:4_sort_filter_rearrange.splitvars>)[splitvars];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
