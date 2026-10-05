#import "../nelson_help.typ": *

= array2timetable <table:1_create_convert_tables.array2timetable>

Convertir un tableau homogene en timetable.

== Syntaxe

- #raw("TT = array2timetable(A, 'RowTimes', rowTimes)");

== Argument d'entrée

/ A: Tableau d'entree.
/ rowTimes: Vecteur datetime ou duration.

== Argument de sortie

/ TT: Objet timetable.

== Description

#strong[array2timetable]; convertit les colonnes de #strong[A]; en variables d'une timetable.

 Utilisez #strong['VariableNames']; pour fournir les noms de variables de la timetable de sortie.


== Exemple

``````matlab
t = datetime(2024, 1, 1) + days(0:2)';
A = [1 10; 2 20; 3 30];
TT = array2timetable(A, 'RowTimes', t)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.array2table>)[array2table];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
