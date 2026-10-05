#import "nelson_help.typ": *

= isstring <types:isstring>

Renvoie vrai si la variable var est un tableau de chaînes (string).

== Syntaxe

- #raw("res = isstring(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isstring]; renvoie 1 logique (vrai) si l'argument est un tableau de chaînes et 0 logique (faux) sinon.


== Exemples

``````matlab
A = 3;
res = isstring(A)
``````

``````matlab
B = "NelSon";
res = isstring(B)
``````

``````matlab
C = [1 ; 3];
res = isstring(C)
``````


== Voir aussi

#nlink(<types:class>)[class];, #nlink(<string:1_create_convert_text.string>)[string];, #nlink(<types:ischar>)[ischar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
