#import "nelson_help.typ": *

= struct2array <data_structures:struct2array>

Concatène les valeurs des champs d'une structure en un tableau.

== Syntaxe

- #raw("a = struct2array(s)");

== Argument d'entrée

/ s: une structure dont les valeurs de champs peuvent être concaténées.

== Argument de sortie

/ a: la concaténation horizontale des valeurs des champs.

== Description

#strong[a \= struct2array(s)]; renvoie la concaténation horizontale des valeurs des champs de #strong[s];. Les valeurs doivent avoir des tailles et types compatibles.


== Exemple

``````matlab
s.a = 1;
s.b = [2 3];
struct2array(s)
``````


== Voir aussi

#nlink(<data_structures:struct2cell>)[struct2cell];, #nlink(<data_structures:cell2mat>)[cell2mat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
