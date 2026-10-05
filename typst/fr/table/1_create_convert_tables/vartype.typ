#import "../nelson_help.typ": *

= vartype <table:1_create_convert_tables.vartype>

Selectionne des variables de table par type.

== Syntaxe

- #raw("S = vartype(typeName)");

== Argument d'entrée

/ typeName: Nom de classe utilise pour selectionner les variables.

== Argument de sortie

/ S: Selecteur de type de variable.

== Description

#strong[vartype]; cree un selecteur utilisable par des fonctions de table comme #strong[varfun]; et #strong[convertvars];.


== Exemple

``````matlab
T = table([1; 2], {'a'; 'b'}, 'VariableNames', {'A', 'B'});
R = varfun(@mean, T, 'InputVariables', vartype('double'))
``````


== Voir aussi

#nlink(<table:7_apply_functions.varfun>)[varfun];, #nlink(<table:1_create_convert_tables.convertvars>)[convertvars];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
