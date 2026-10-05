#import "../nelson_help.typ": *

= join <table:5_join_set_operations.join>

Joint des tables par variables cles.

== Syntaxe

- #raw("T = join(left, right)");
- #raw("T = join(left, right, 'Keys', keys)");
- #raw("T = join(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)");

== Argument d'entrée

/ left, right: Tables d'entree.
/ keys: Noms des variables cles.
/ leftVars, rightVars: Variables a conserver depuis les tables gauche et droite.

== Argument de sortie

/ T: Table jointe.

== Description

#strong[join]; combine les lignes de deux tables en utilisant les valeurs de cles communes.


== Exemple

``````matlab
L = table([1; 2], [10; 20], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3], [200; 300], 'VariableNames', {'Key', 'RightValue'});
J = join(L, R, 'Keys', 'Key')
``````


== Voir aussi

#nlink(<table:5_join_set_operations.innerjoin>)[innerjoin];, #nlink(<table:5_join_set_operations.outerjoin>)[outerjoin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
