#import "../nelson_help.typ": *

= stack <table:4_sort_filter_rearrange.stack>

Empile des variables de table en lignes.

== Syntaxe

- #raw("S = stack(T, vars)");
- #raw("S = stack(T, vars, 'NewDataVariableName', name)");

== Argument d'entrée

/ T: Table d'entree.
/ vars: Variables a empiler.

== Argument de sortie

/ S: Table empilee.

== Description

#strong[stack]; transforme des variables selectionnees en une variable de donnees et une variable indicatrice.


== Exemple

``````matlab
T = table({'a'; 'b'}, [1; 2], [3; 4], 'VariableNames', {'ID', 'X', 'Y'});
S = stack(T, {'X', 'Y'}, 'NewDataVariableName', 'Value')
``````


== Voir aussi

#nlink(<table:4_sort_filter_rearrange.unstack>)[unstack];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
