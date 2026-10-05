#import "../nelson_help.typ": *

= height <table:3_summary_information.height>

Nombre de lignes d'une table

== Syntaxe

- #raw("H = height(T)");

== Argument d'entrée

/ T: Tableau d'entrée (table ou autre).

== Argument de sortie

/ H: un entier : nombre de lignes de la table ou size(T, 1).

== Description

#strong[H \= height(T)]; renvoie le nombre de lignes dans la table #strong[T];.

 La fonction #strong[height(T)]; est équivalente à#strong[size(T, 1)];, qui fournit également le nombre de lignes de la table.


== Exemple

``````matlab
T = table();
height(T)
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
T = cell2table(C);
height(T)

``````


== Voir aussi

#nlink(<table:3_summary_information.width>)[width];, #nlink(<elementary_functions:7_indexing_dimensions.size>)[size];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
