#import "../nelson_help.typ": *

= width <table:3_summary_information.width>

Nombre de variables d'une table

== Syntaxe

- #raw("W = width(T)");

== Argument d'entrée

/ T: Tableau d'entrée (table ou autre).

== Argument de sortie

/ W: un entier : nombre de variables dans la table ou size(T, 2).

== Description

#strong[W \= width(T)]; renvoie le nombre de variables dans la table T.

 La fonction #strong[width(T)]; est équivalente à#strong[size(T, 2)];, qui fournit également le nombre de colonnes dans la table.


== Exemple

``````matlab
T = table();
width(T)
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
T = cell2table(C);
width(T)

``````


== Voir aussi

#nlink(<table:3_summary_information.height>)[height];, #nlink(<elementary_functions:7_indexing_dimensions.size>)[size];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
