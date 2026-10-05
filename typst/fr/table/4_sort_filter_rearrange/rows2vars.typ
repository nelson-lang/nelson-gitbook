#import "../nelson_help.typ": *

= rows2vars <table:4_sort_filter_rearrange.rows2vars>

Reoriente les lignes en variables.

== Syntaxe

- #raw("T2 = rows2vars(T)");
- #raw("T2 = rows2vars(T, 'VariableNamesSource', var)");

== Argument d'entrée

/ T: Table d'entree.

== Argument de sortie

/ T2: Table reorientee.

== Description

#strong[rows2vars]; cree des variables de table a partir des lignes de la table d'entree.


== Exemple

``````matlab
T = table({'r1'; 'r2'}, [10; 20], 'VariableNames', {'Name', 'Value'});
R = rows2vars(T, 'VariableNamesSource', 'Name')
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
