#import "../nelson_help.typ": *

= table2array <table:1_create_convert_tables.table2array>

Convertir une table en tableau homogène.

== Syntaxe

- #raw("A = table2array(T)");

== Argument d'entrée

/ T: Objet table.

== Argument de sortie

/ A: matrice : single, double, types entiers, logique, char, string, struct, cell.

== Description

#strong[A \= table2array(T)]; convertit la table d'entrée #strong[T]; en un tableau homogène #strong[A];, où les variables de #strong[T]; deviennent les colonnes de #strong[A];.

 La sortie #strong[A]; ne conserve pas les propriétés de la table provenant de #strong[T.Properties];.

 Si #strong[T]; est une table avec des noms de lignes, ces noms ne seront pas inclus dans #strong[A];.


== Exemple

``````matlab
A = magic(6);
T = array2table(A);
A = table2array(T)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.array2table>)[array2table];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
