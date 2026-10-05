#import "../nelson_help.typ": *

= timerange <table:8_timetables_events.timerange>

Intervalle temporel pour indexer les lignes d'un timetable.

== Syntaxe

- #raw("S = timerange(startTime, endTime)");
- #raw("S = timerange(startTime, endTime, intervalType)");
- #raw("S = timerange(timePeriod, datetimeUnit)");

== Argument d'entrée

/ startTime, endTime: Bornes datetime, duration ou texte scalaire.
/ intervalType: 'openright', 'closedleft', 'openleft', 'closedright', 'open' ou 'closed'.
/ datetimeUnit: Unite calendaire utilisee pour couvrir une periode complete.

== Argument de sortie

/ S: Indice de lignes pour timetable.

== Description

#strong[timerange]; cree un indice de lignes pour les timetables. L'intervalle par defaut inclut la borne de debut et exclut la borne de fin.

 Les bornes texte #strong['-inf']; et #strong['inf']; creent des intervalles non bornes d'un cote.


== Exemple

``````matlab
TT = timetable(seconds((1:5)'), (10:10:50)', 'VariableNames', {'A'});
TT(timerange(seconds(2), seconds(4), 'closed'), :)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<table:8_timetables_events.withtol>)[withtol];, #nlink(<table:8_timetables_events.retime>)[retime];, #nlink(<table:8_timetables_events.synchronize>)[synchronize];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
