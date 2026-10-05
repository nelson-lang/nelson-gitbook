#import "../nelson_help.typ": *

= table2timetable <table:1_create_convert_tables.table2timetable>

Convertir une table en timetable.

== Syntaxe

- #raw("TT = table2timetable(T, 'RowTimes', rowTimes)");
- #raw("TT = table2timetable(T, 'TimeStep', dt)");
- #raw("TT = table2timetable(T, 'SampleRate', fs)");

== Argument d'entrée

/ T: Objet table.

== Argument de sortie

/ TT: Objet timetable.

== Description

#strong[table2timetable]; convertit une table en timetable et attribue des temps aux lignes de sortie.


== Exemple

``````matlab
T = table([1; 2; 3], 'VariableNames', {'A'});
t = datetime(2024, 1, 1) + days(0:2)';
TT = table2timetable(T, 'RowTimes', t)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.timetable2table>)[timetable2table];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
