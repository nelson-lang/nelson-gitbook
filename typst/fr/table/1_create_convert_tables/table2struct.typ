#import "../nelson_help.typ": *

= table2struct <table:1_create_convert_tables.table2struct>

Convertir une table en tableau de structures

== Syntaxe

- #raw("S = table2struct(T)");
- #raw("S = table2struct(T, \"ToScalar\", true)");

== Argument d'entrée

/ T: un objet table

== Argument de sortie

/ S: Structure.

== Description

#strong[S \= table2struct(T)]; convertit la table #strong[T]; en un tableau de structures #strong[S];, où chaque variable de #strong[T]; est représentée comme un champ dans #strong[S];.

 Si #strong[T]; est une table m-by-n,#strong[S]; sera un tableau de structures m-by-1 avec n champs.

 La sortie #strong[S]; ne contiendra pas les propriétés de table provenant de #strong[T.Properties];.

 #strong[S \= table2struct(T, "ToScalar", true)]; convertit la table #strong[T]; en une structure scalaire #strong[S];, où chaque variable de #strong[T]; devient un champ dans #strong[S];.

 Si #strong[T]; est une table m-by-n,#strong[S]; contiendra n champs, et chaque champ aura m lignes.


== Exemple

``````matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight)
S1 = table2struct(T)
S1 = table2struct(T, "ToScalar", true)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.struct2table>)[struct2table];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
