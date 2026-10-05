#import "../nelson_help.typ": *

= extractevents <table:8_timetables_events.extractevents>

Extraire une table d'evenements de lignes d'une timetable.

== Syntaxe

- #raw("ET = extractevents(TT, rows)");
- #raw("ET = extractevents(TT, labels)");
- #raw("ET = extractevents(..., Name, Value)");
- #raw("[ET, TT2] = extractevents(...)");

== Argument d'entrée

/ TT: Timetable d'entree.
/ rows: Lignes de #strong[TT]; : numeros de lignes, masque logique, instants (datetime ou duration), timerange ou ':'.
/ labels: Vecteur categorical avec un element par ligne de #strong[TT]; : les elements definis sont les libelles des evenements, les lignes a \<undefined\> ne sont pas des evenements.
/ Name, Value: #strong[EventLabels];, #strong[EventLengths];, #strong[EventEnds]; : valeurs (scalaire ou une par evenement) ; #strong[EventLabelsVariable];, #strong[EventLengthsVariable];, #strong[EventEndsVariable]; : variable de #strong[TT]; qui les contient ; #strong[EventDataVariables]; : variables de #strong[TT]; copiees dans la table d'evenements ; #strong[PreserveEventVariables]; : true pour garder ces variables dans #strong[TT2]; (false par defaut).

== Argument de sortie

/ ET: Table d'evenements : les instants des lignes selectionnees et les variables d'evenements.
/ TT2: Copie de #strong[TT]; sans les variables copiees dans #strong[ET];, sauf si #strong[PreserveEventVariables]; vaut true.

== Description

#strong[extractevents]; cree une table d'evenements a partir de lignes d'une timetable. Seules les variables nommees par les options sont copiees : d'abord la variable des durees ou des fins d'evenements, puis la variable des libelles, puis les variables de donnees, puis les variables creees a partir des valeurs #strong[EventLabels];, #strong[EventLengths]; et #strong[EventEnds];.

 Une variable d'evenement ne peut pas aussi figurer dans #strong[EventDataVariables];. #strong[PreserveEventVariables]; necessite au moins une option de variable et la deuxieme sortie.

 Pour lire la table d'evenements attachee a une timetable, utiliser #strong[TT.Properties.Events];.


== Exemples

``````matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], ["a"; "b"; "c"; "d"], 'VariableNames', {'A', 'L'});
ET = extractevents(TT, [2 4], 'EventLabelsVariable', 'L')
[ET, TT2] = extractevents(TT, timerange(seconds(2), seconds(4)), 'EventDataVariables', 'A')

``````

``````matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], 'VariableNames', {'A'});
ET = extractevents(TT, categorical(["start"; ""; ""; "stop"]))

``````


== Voir aussi

#nlink(<table:8_timetables_events.syncevents>)[syncevents];, #nlink(<table:8_timetables_events.eventtable>)[eventtable];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
