#import "../nelson_help.typ": *

= timetable <table:1_create_convert_tables.timetable>

Creer une timetable a partir de variables et de temps de lignes.

== Syntaxe

- #raw("TT = timetable(rowTimes, var1, ..., varN)");
- #raw("TT = timetable(var1, ..., varN, 'RowTimes', rowTimes)");
- #raw("TT = timetable('Size', sz, 'VariableTypes', types)");

== Argument d'entrée

/ rowTimes: Vecteur datetime ou duration utilise comme temps de lignes.
/ var1, ..., varN: Variables avec une ligne par temps de ligne.

== Argument de sortie

/ TT: Objet timetable.

== Description

#strong[timetable]; cree une timetable, un objet tabulaire dont les lignes sont identifiees par des temps.

 Les temps de lignes peuvent etre fournis comme premier argument ou avec l'argument nom-valeur #strong['RowTimes'];.

 Les noms de variables, noms de dimensions, description, donnees utilisateur et proprietes personnalisees sont stockes dans #strong[TT.Properties];.


== Exemple

``````matlab
t = datetime(2024, 1, 1) + days(0:2)';
TT = timetable(t, [10; 20; 30], 'VariableNames', {'A'});
TT.Properties.RowTimes
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:1_create_convert_tables.array2timetable>)[array2timetable];, #nlink(<table:1_create_convert_tables.table2timetable>)[table2timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
