#import "nelson_help.typ": *

= struct2cell <data_structures:struct2cell>

Créer un tableau cellulaire à partir d'une structure.

== Syntaxe

- #raw("ce = struct2cell(st)");

== Argument d'entrée

/ st: une structure.

== Argument de sortie

/ ce: un tableau cellulaire.

== Description

#strong[ce \= struct2cell(st)]; renvoie un nouveau tableau cellulaire à partir de la structure.


== Exemple

``````matlab
names = {'Pierre', 'Anna', 'Roberto'}
values =  {45, 42, 13}
st = struct ('name', names, 'age', values);
ce = struct2cell(st)
``````


== Voir aussi

#nlink(<data_structures:cell>)[cell];, #nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:fieldnames>)[fieldnames];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
