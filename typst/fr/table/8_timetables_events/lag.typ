#import "../nelson_help.typ": *

= lag <table:8_timetables_events.lag>

Decaler les donnees d'une timetable par lignes.

== Syntaxe

- #raw("TT2 = lag(TT, n)");

== Argument d'entrée

/ TT: Timetable d'entree.
/ n: Decalage entier en lignes.

== Argument de sortie

/ TT2: Timetable decalee.

== Description

#strong[lag]; decale les variables d'une timetable de #strong[n]; lignes en conservant les temps de lignes.


== Exemple

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
lag(TT)

``````


== Voir aussi

#nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
