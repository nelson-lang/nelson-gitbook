#import "nelson_help.typ": *

= cell2struct <data_structures:cell2struct>

Créer un struct à partir d'un tableau cellulaire.

== Syntaxe

- #raw("st = cell2struct(ce, fields)");
- #raw("st = cell2struct(ce, fields, dim)");

== Argument d'entrée

/ ce: un tableau cellulaire.
/ fields: un tableau cellulaire de chaînes.
/ dim: dimension le long de laquelle la cellule est convertie.

== Argument de sortie

/ st: un tableau de structs.

== Description

#strong[st \= cell2struct(ce, fields)]; crée un struct à partir d'un tableau cellulaire.


== Exemple

``````matlab
ce = {85, 50, 68; 'Pierre', 'Anna', 'Roberto'}
fields = {'Height','Name'}
A = cell2struct (ce, fields, 1)
``````


== Voir aussi

#nlink(<data_structures:cell>)[cell];, #nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:struct2cell>)[struct2cell];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
