#import "nelson_help.typ": *

= isclass <types:isclass>

Renvoie vrai si la variable var est un objet de classe.

== Syntaxe

- #raw("res = isclass(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isclass]; renvoie 1 logique (vrai) si l'argument est un objet de classe et 0 logique (faux) sinon.


== Exemple

``````matlab
A = 3;
res = isclass(A)
addpath([nelsonroot(), '/modules/overload/examples/complex']);
c = complexObj(3,4);
res = isclass(c)
``````


== Voir aussi

#nlink(<types:class>)[class];, #nlink(<types:isstruct>)[isstruct];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
