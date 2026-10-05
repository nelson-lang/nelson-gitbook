#import "../nelson_help.typ": *

= addvars <table:4_sort_filter_rearrange.addvars>

Ajoute des variables a une table ou a une timetable.

== Syntaxe

- #raw("TB = addvars(TA, X)");
- #raw("TB = addvars(TA, X1, ... , XN, 'NewVariableNames', names)");
- #raw("TB = addvars(TA, X, 'Before', varName)");
- #raw("TB = addvars(TA, X, 'After', varName)");

== Argument d'entrée

/ TA: Table ou timetable d'entree.
/ X, X1, ... , XN: Donnees de variables a ajouter. Chaque variable doit avoir le meme nombre de lignes que #strong[TA];.
/ names: Noms des nouvelles variables.
/ varName: Variable de reference utilisee avec #strong[Before]; ou #strong[After];.

== Argument de sortie

/ TB: Table ou timetable avec variables ajoutees.

== Description

#strong[addvars]; ajoute une ou plusieurs variables et met a jour #strong[T.Properties.VariableNames];.

 Les nouvelles variables sont ajoutees a la fin par defaut. Utilisez #strong[Before]; ou #strong[After]; pour choisir la position.

 Pour une timetable, les temps des lignes et les proprietes de la timetable sont conserves.


== Exemples

Ajouter une variable a la fin d'une table

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'})
``````

Ajouter une variable avant une variable existante

``````matlab
T = table([1; 2], [5; 6], 'VariableNames', {'A', 'C'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'}, 'Before', 'C')
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:4_sort_filter_rearrange.movevars>)[movevars];, #nlink(<table:4_sort_filter_rearrange.removevars>)[removevars];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
