#import "nelson_help.typ": *

= setfield <data_structures:setfield>

Définir le contenu d'un champ de structure.

== Syntaxe

- #raw("stOut = setfield(stIn, fieldname, fieldvalue)");
- #raw("stOut = setfield(stIn, fieldname1, fieldvalue1, ..., fieldnameN, fieldvalueN)");

== Argument d'entrée

/ stIn: une structure.
/ fieldname: une chaîne ou un vecteur de caractères.
/ fieldvalue: une valeur de variable.

== Argument de sortie

/ stOut: une structure : résultat.

== Description

Définit le contenu du champ spécifié à la valeur donnée.

 Syntaxe alternative : S.(fieldname) \= fieldvalue

 Syntaxe alternative : S(idx1, idx2).(fieldname) \= fieldvalue


== Exemple

``````matlab
A = {};
setfield(A, 'vv', 3)
``````


== Voir aussi

#nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:getfield>)[getfield];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
