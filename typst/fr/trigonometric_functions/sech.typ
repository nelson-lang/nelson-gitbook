#import "nelson_help.typ": *

= sech <trigonometric_functions:sech>

Sécante hyperbolique.

== Syntaxe

- #raw("res = sech(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[sech]; calcule la sécante hyperbolique pour chaque élément de #strong[x];.


== Exemple

``````matlab
X = [3*pi, 2*pi, pi, 0];
R = sech(X)
``````


== Voir aussi

#nlink(<trigonometric_functions:cosh>)[cosh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
