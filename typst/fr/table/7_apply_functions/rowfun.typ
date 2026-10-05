#import "../nelson_help.typ": *

= rowfun <table:7_apply_functions.rowfun>

Applique une fonction aux lignes d'une table.

== Syntaxe

- #raw("R = rowfun(fun, T)");
- #raw("R = rowfun(fun, T, 'InputVariables', vars)");

== Argument d'entrée

/ fun: Fonction.
/ T: Table d'entree.

== Argument de sortie

/ R: Resultat sous forme de table, tableau ou cellule selon OutputFormat.

== Description

#strong[rowfun]; applique une fonction a chaque ligne avec les variables selectionnees comme entrees.


== Exemple

``````matlab
T = table([1; 2], [10; 20], 'VariableNames', {'X', 'Y'});
R = rowfun(@(x, y) x + y, T, 'InputVariables', {'X', 'Y'}, 'OutputVariableNames', 'Sum')
``````


== Voir aussi

#nlink(<table:7_apply_functions.varfun>)[varfun];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
