#import "../nelson_help.typ": *

= splitvars <table:4_sort_filter_rearrange.splitvars>

Separe des variables multicolonnes.

== Syntaxe

- #raw("T2 = splitvars(T, vars)");
- #raw("T2 = splitvars(T, vars, 'NewVariableNames', names)");

== Argument d'entrée

/ T: Table d'entree.
/ vars: Variables a separer.

== Argument de sortie

/ T2: Table avec variables separees.

== Description

#strong[splitvars]; remplace une variable multicolonne par plusieurs variables de table.


== Exemple

``````matlab
T = table([1 3; 2 4], 'VariableNames', {'AB'});
R = splitvars(T, 'AB', 'NewVariableNames', {'A', 'B'})
``````


== Voir aussi

#nlink(<table:4_sort_filter_rearrange.mergevars>)[mergevars];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
