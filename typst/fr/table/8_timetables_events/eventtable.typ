#import "../nelson_help.typ": *

= eventtable <table:8_timetables_events.eventtable>

Creer une table d'evenements pour un timetable.

== Syntaxe

- #raw("E = eventtable(eventTimes)");
- #raw("E = eventtable(TT)");
- #raw("E = eventtable(___, 'EventLabels', labels)");
- #raw("E = eventtable(___, 'EventLengths', lengths)");
- #raw("E = eventtable(___, 'EventEnds', ends)");
- #raw("E = eventtable(___, 'EventLabelsVariable', name)");
- #raw("E = eventtable(___, 'EventLengthsVariable', name)");
- #raw("E = eventtable(___, 'EventEndsVariable', name)");

== Argument d'entrée

/ eventTimes: Vecteur datetime ou duration contenant les temps de debut des evenements.
/ TT: Timetable dont les temps de lignes deviennent les temps d'evenements et dont les variables deviennent les variables d'evenements.
/ labels: Etiquettes d'evenements. Une valeur scalaire est etendue a tous les evenements.
/ lengths: Valeurs duration qui indiquent les durees d'evenements.
/ ends: Valeurs datetime ou duration qui indiquent les fins d'evenements.
/ name: Nom ou indice d'une variable du timetable d'entree contenant les etiquettes, durees ou fins d'evenements. Valide seulement si la premiere entree est un timetable.

== Argument de sortie

/ E: Eventtable : un timetable dont les temps de lignes sont les temps d'evenements.

== Description

#strong[eventtable]; cree une eventtable qui peut etre attachee a un timetable avec #strong[Properties.Events]; ; #strong[syncevents]; copie ensuite ses variables dans le timetable.

 Quand l'entree est un vecteur de temps, les etiquettes, durees et fins d'evenements sont indiquees par des arguments nom-valeur. Les variables supplementaires sont fournies en creant d'abord un timetable puis en le passant a #strong[eventtable]; : toute entree positionnelle apres la premiere est une erreur.

 Une eventtable est un timetable : les temps d'evenements sont ses temps de lignes (#strong[E.Properties.RowTimes];, ou #strong[E.Time];) et non une variable ; #strong[size];, #strong[width];, l'indexation et la concatenation se comportent comme pour un timetable.

 #strong[E.Properties]; commence par #strong[EventLabelsVariable];, #strong[EventLengthsVariable]; et #strong[EventEndsVariable];, les noms des variables contenant les etiquettes, durees et fins d'evenements (\[\] si non definies). On peut leur affecter un nom ou un indice de variable, ou \[\]. Une variable renommee ou supprimee n'est plus utilisee.

 Creee a partir de temps d'evenements sans etiquettes, l'eventtable recoit les etiquettes "Event 1", "Event 2", ... dans une variable #strong[EventLabels];. Creee a partir d'un timetable, aucune variable ne sert d'etiquettes sauf indication contraire.


== Exemples

``````matlab
eventTimes = datetime(2022, 11, [3; 5; 10; 14]);
eventType = {'Hail'; 'Rain'; 'Snow'; 'Rain'};
eventLength = hours([1.2; 36; 18; 20]);
E = eventtable(eventTimes, ...
  'EventLabels', eventType, ...
  'EventLengths', eventLength)

``````

``````matlab
t = datetime(2022, 11, (1:15)');
temperature = [36; 31; 37; 36; 38; 32; 35; 34; 32; 30; 39; 34; 31; 40; 34];
humidity = [45; 76; 43; 46; 72; 54; 50; 45; 72; 58; 54; 58; 73; 78; 66];
TT = timetable(t, temperature, humidity, 'VariableNames', {'Temperature', 'Humidity'});
eventTimes = t([3; 5; 10; 14]);
eventType = {'Hail'; 'Rain'; 'Snow'; 'Rain'};
eventLength = hours([1.2; 36; 18; 20]);
precipitation = [12.7; 114.3; 25.4; 177.8];
eventData = timetable(eventTimes, eventType, eventLength, precipitation, ...
  'VariableNames', {'EventType', 'EventLength', 'Precipitation'});
E = eventtable(eventData, ...
  'EventLabelsVariable', 'EventType', ...
  'EventLengthsVariable', 'EventLength');
TT.Properties.Events = E;
stackedplot(TT)

``````


== Voir aussi

#nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<table:8_timetables_events.syncevents>)[syncevents];, #nlink(<table:8_timetables_events.extractevents>)[extractevents];, #nlink(<graphics:1_plots.4_data_distribution_plots.stackedplot>)[stackedplot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
