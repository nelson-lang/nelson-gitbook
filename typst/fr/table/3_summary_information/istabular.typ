#import "../nelson_help.typ": *

= istabular <table:3_summary_information.istabular>

Determiner si l'entree est un objet tabulaire.

== Syntaxe

- #raw("tf = istabular(A)");

== Argument d'entrée

/ A: Tableau d'entree.

== Argument de sortie

/ tf: Scalaire logique.

== Description

#strong[istabular(A)]; renvoie vrai quand #strong[A]; est une table ou une timetable.


== Exemple

``````matlab
T = table([1; 2]);
istabular(T)
``````


== Voir aussi

#nlink(<table:3_summary_information.istable>)[istable];, #nlink(<table:3_summary_information.istimetable>)[istimetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
