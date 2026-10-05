#import "../nelson_help.typ": *

= convertvars <table:1_create_convert_tables.convertvars>

Convertit des variables de table.

== Syntaxe

- #raw("T2 = convertvars(T, vars, fun)");

== Argument d'entrée

/ T: Table d'entree.
/ vars: Variables a convertir.
/ fun: Fonction appliquee aux variables selectionnees.

== Argument de sortie

/ T2: Table avec variables converties.

== Description

#strong[convertvars]; applique une fonction de conversion aux variables selectionnees.


== Exemple

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
R = convertvars(T, 'A', @(x) single(x))
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.vartype>)[vartype];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
