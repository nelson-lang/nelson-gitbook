#import "../nelson_help.typ": *

= table2cell <table:1_create_convert_tables.table2cell>

Convertir une table en tableau de cellules

== Syntaxe

- #raw("S = table2cell(T)");
- #raw("S = table2cell(T, \"ToScalar\", true)");

== Argument d'entrée

/ T: un objet table

== Argument de sortie

/ C: Tableau de cellules.

== Description

#strong[C \= table2cell(T)]; convertit la table #strong[T]; en un tableau de cellules #strong[C];, où chaque variable de #strong[T]; est transformée en une colonne de cellules dans #strong[C];.

 La sortie #strong[C]; n'inclut aucune propriété de #strong[T.Properties];.

 Si #strong[T]; contient des noms de lignes, ceux-ci ne seront pas inclus dans #strong[C];.


== Exemple

``````matlab
S = ["Y";"Y";"N";"N";"N"];
A = [38;43;38;40;49];
B = [124 93;109 77; 125 83; 117 75; 122 80];
T = table(S, A, B, 'VariableNames',["Smoker" "Age" "BloodPressure"], 'RowNames',["Chang" "Brown" "Ruiz" "Lee" "Garcia"])
C = table2cell(T)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.cell2table>)[cell2table];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
