#import "../nelson_help.typ": *

= syncevents <table:8_timetables_events.syncevents>

Ajouter et synchroniser les variables de la table d'evenements attachee a une timetable.

== Syntaxe

- #raw("TT2 = syncevents(TT)");
- #raw("TT2 = syncevents(TT, defaultLabel)");
- #raw("TT2 = syncevents(..., 'EventDataVariables', vars)");

== Argument d'entrée

/ TT: Timetable d'entree avec une table d'evenements dans #strong[TT.Properties.Events];.
/ defaultLabel: Scalaire : libelle des lignes sans evenement, converti dans le type des libelles d'evenements.
/ vars: Variables de la table d'evenements a copier : noms (tableau de string, vecteur de caracteres, cellule de vecteurs de caracteres), indices ou masque logique.

== Argument de sortie

/ TT2: Timetable avec les variables d'evenements ajoutees.

== Description

#strong[syncevents]; copie les variables de la table d'evenements attachee a #strong[TT]; dans la timetable. Chaque ligne de #strong[TT]; recoit les valeurs des evenements qui ont lieu a son instant : un evenement sans duree ni fin correspond aux lignes a son instant, un evenement avec une duree ou une fin correspond aux lignes dans \[instant, fin). Une ligne correspondant a plusieurs evenements est repetee, une fois par evenement, dans l'ordre de la table d'evenements. Les autres lignes recoivent des valeurs manquantes (NaN, NaT, \<missing\>, \<undefined\>, un vecteur de caracteres vide dans une cellule, 0 ou false).

 Par defaut, toutes les variables de la table d'evenements sont copiees sauf la variable des durees ou des fins d'evenements. Avec #strong[EventDataVariables];, seules les variables listees sont copiees, dans cet ordre.

 Une variable copiee dont le nom est deja une variable de #strong[TT]; est ajoutee avec le suffixe #strong[\_et];, la variable de #strong[TT]; etant renommee avec le suffixe #strong[\_tt];. Les unites et descriptions des variables d'evenements sont copiees. La table d'evenements reste attachee au resultat.

 Une erreur est levee quand aucune table d'evenements n'est attachee a #strong[TT];. Pour attacher des evenements, affecter #strong[TT.Properties.Events];.


== Exemples

``````matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], 'VariableNames', {'A'});
TT.Properties.Events = eventtable(seconds([2; 4]), 'EventLabels', ["start"; "stop"]);
syncevents(TT)
syncevents(TT, "none")

``````

``````matlab
TT = timetable(seconds((1:5)'), (1:5)', 'VariableNames', {'A'});
E = timetable(seconds(1.5), "heat", seconds(2), 80, 'VariableNames', {'L', 'D', 'Power'});
TT.Properties.Events = eventtable(E, 'EventLabelsVariable', 'L', 'EventLengthsVariable', 'D');
syncevents(TT, 'EventDataVariables', "Power")

``````


== Voir aussi

#nlink(<table:8_timetables_events.extractevents>)[extractevents];, #nlink(<table:8_timetables_events.eventtable>)[eventtable];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
