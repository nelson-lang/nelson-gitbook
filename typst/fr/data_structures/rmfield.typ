#import "nelson_help.typ": *

= rmfield <data_structures:rmfield>

Supprimer des champs d'une structure.

== Syntaxe

- #raw("s = rmfield(st, field)");

== Argument d'entrée

/ st: une structure.
/ field: une chaîne, un tableau cellulaire de chaînes, ou des caractères.

== Argument de sortie

/ s: une structure sans le(s) champ(s).

== Description

#strong[s \= rmfield(st, field)]; supprime le(s) champ(s) spécifié(s) du tableau de structures.


== Exemple

``````matlab
example.a = 1
example.b = 'nelson'
example.c = []
rmfield(example, 'b')
``````


== Voir aussi

#nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:fieldnames>)[fieldnames];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
