#import "../nelson_help.typ": *

= abs <elementary_functions:2_elementary_math.abs>

Valeur absolue

== Syntaxe

- #raw("R = abs(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ R: résultat de abs : valeur absolue.

== Description

#strong[abs]; calcule la valeur absolue.

 Si l'argument est un nombre complexe, #strong[abs]; calcule la magnitude complexe.


== Exemple

``````matlab
x = [1+i,-i;i,2i];
r = abs(x)
``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.conj>)[conj];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
