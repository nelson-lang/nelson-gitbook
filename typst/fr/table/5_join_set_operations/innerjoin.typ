#import "../nelson_help.typ": *

= innerjoin <table:5_join_set_operations.innerjoin>

Jointure interne de deux tables.

== Syntaxe

- #raw("T = innerjoin(left, right)");
- #raw("T = innerjoin(left, right, 'Keys', keys)");
- #raw("T = innerjoin(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)");

== Argument d'entrée

/ left, right: Tables d'entree.
/ keys: Noms des variables cles.
/ leftVars, rightVars: Variables a conserver depuis les tables gauche et droite.

== Argument de sortie

/ T: Table contenant les lignes dont les cles existent dans les deux entrees.

== Description

#strong[innerjoin]; conserve seulement les lignes avec des cles correspondantes dans les deux tables.


== Exemple

``````matlab
L = table([1; 2; 3], [10; 20; 30], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3; 4], [200; 300; 400], 'VariableNames', {'Key', 'RightValue'});
J = innerjoin(L, R, 'Keys', 'Key')
``````


== Voir aussi

#nlink(<table:5_join_set_operations.join>)[join];, #nlink(<table:5_join_set_operations.outerjoin>)[outerjoin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
