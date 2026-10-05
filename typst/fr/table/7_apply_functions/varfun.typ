#import "../nelson_help.typ": *

= varfun <table:7_apply_functions.varfun>

Applique une fonction aux variables d'une table.

== Syntaxe

- #raw("R = varfun(fun, T)");
- #raw("R = varfun(fun, T, 'InputVariables', vars)");

== Argument d'entrée

/ fun: Fonction.
/ T: Table d'entree.

== Argument de sortie

/ R: Resultat sous forme de table, tableau ou cellule selon OutputFormat.

== Description

#strong[varfun]; applique une fonction independamment aux variables selectionnees.


== Exemple

``````matlab
T = table([1; 2; 4], [10; 20; 30], 'VariableNames', {'X', 'Y'});
R = varfun(@mean, T)
``````


== Voir aussi

#nlink(<table:7_apply_functions.rowfun>)[rowfun];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
