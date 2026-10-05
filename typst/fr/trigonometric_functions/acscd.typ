#import "nelson_help.typ": *

= acscd <trigonometric_functions:acscd>

Cosécante inverse en degrés.

== Syntaxe

- #raw("res = acsc(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[acscd]; calcule la cosécante inverse de l'argument en degrés pour chaque élément de #strong[x];.
== Exemple

``````matlab
x = [0 1 20 10 Inf];
y = acscd(x)
``````


== Voir aussi

#nlink(<trigonometric_functions:cscd>)[cscd];, #nlink(<trigonometric_functions:csc>)[csc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
