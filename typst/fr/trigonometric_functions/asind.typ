#import "nelson_help.typ": *

= asind <trigonometric_functions:asind>

Sinus inverse en degrés.

== Syntaxe

- #raw("res = asind(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[asind]; calcule le sinus inverse en degrés pour chaque élément de #strong[x];.
== Exemple

``````matlab
x = [-50 -20 0 20 50];
y = asind(x)
``````


== Voir aussi

#nlink(<trigonometric_functions:sind>)[sind];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
