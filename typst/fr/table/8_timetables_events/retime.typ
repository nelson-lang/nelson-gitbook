#import "../nelson_help.typ": *

= retime <table:8_timetables_events.retime>

Ajuster les donnees d'une timetable a de nouveaux temps de lignes.

== Syntaxe

- #raw("TT2 = retime(TT1, newTimes)");
- #raw("TT2 = retime(TT1, newTimes, method)");
- #raw("TT2 = retime(TT1, newTimeStep, method)");
- #raw("TT2 = retime(TT1, 'regular', method, 'TimeStep', dt)");
- #raw("TT2 = retime(TT1, 'regular', method, 'SampleRate', Fs)");

== Argument d'entrée

/ TT1: Timetable d'entree.
/ newTimes: Nouveaux temps datetime ou duration.
/ newTimeStep: Pas regulier nomme comme 'daily', 'hourly' ou 'secondly'.
/ method: Methode de remplissage, voisinage, interpolation ou agregation.

== Argument de sortie

/ TT2: Timetable retimee.

== Description

#strong[retime]; renvoie une timetable dont les temps de lignes correspondent a #strong[newTimes]; ou a une grille reguliere.

 Les methodes de remplissage et de voisinage incluent fillwithmissing, fillwithconstant, nearest, previous et next.

 Les methodes d'interpolation numerique incluent linear, spline, pchip et makima. Les methodes d'agregation incluent sum, mean, min, max, median, prod, count, firstvalue et lastvalue.


== Exemple

``````matlab
t = datetime(2024, 1, 1) + days(0:2)';
TT = timetable(t, [1; 3; 5]);
TT2 = retime(TT, t(1):days(1):t(3), 'nearest')
``````


== Voir aussi

#nlink(<table:8_timetables_events.synchronize>)[synchronize];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
