#import "../nelson_help.typ": *

= outerjoin <table:5_join_set_operations.outerjoin>

Jointure externe de deux tables.

== Syntaxe

- #raw("T = outerjoin(left, right)");
- #raw("T = outerjoin(left, right, 'Keys', keys)");
- #raw("T = outerjoin(left, right, 'MergeKeys', true)");
- #raw("T = outerjoin(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)");

== Argument d'entrée

/ left, right: Tables d'entree.
/ keys: Noms des variables cles.
/ leftVars, rightVars: Variables a conserver depuis les tables gauche et droite.

== Argument de sortie

/ T: Table jointe.

== Description

#strong[outerjoin]; combine les lignes des deux tables et conserve les lignes non appariees selon le type de jointure.


== Exemple

``````matlab
L = table([1; 2], [10; 20], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3], [200; 300], 'VariableNames', {'Key', 'RightValue'});
J = outerjoin(L, R, 'Keys', 'Key')
``````


== Voir aussi

#nlink(<table:5_join_set_operations.join>)[join];, #nlink(<table:5_join_set_operations.innerjoin>)[innerjoin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
