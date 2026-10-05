#import "../nelson_help.typ": *

= istable <table:3_summary_information.istable>

Déterminer si l'entrée est une table.

== Syntaxe

- #raw("tf = istable(A)");

== Argument d'entrée

/ A: Tableau d'entrée.

== Argument de sortie

/ tf: un logique : vrai si c'est une table.

== Description

#strong[tf \= istable(A)]; renvoie #strong[true]; si #strong[A]; est une table, et #strong[false]; sinon.


== Exemple

``````matlab
T = table();
istable(T)
M = magic(6);
istable(M)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
