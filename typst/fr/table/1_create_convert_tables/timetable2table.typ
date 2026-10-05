#import "../nelson_help.typ": *

= timetable2table <table:1_create_convert_tables.timetable2table>

Convertir une timetable en table.

== Syntaxe

- #raw("T = timetable2table(TT)");
- #raw("T = timetable2table(TT, 'ConvertRowTimes', tf)");

== Argument d'entrée

/ TT: Objet timetable.

== Argument de sortie

/ T: Objet table.

== Description

#strong[timetable2table]; convertit une timetable en table.

 Lorsque #strong['ConvertRowTimes']; vaut vrai, les temps de lignes sont inseres comme premiere variable de la table.


== Exemple

``````matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT = timetable(t, [1; 2], 'VariableNames', {'A'});
T = timetable2table(TT, 'ConvertRowTimes', true)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table2timetable>)[table2timetable];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
