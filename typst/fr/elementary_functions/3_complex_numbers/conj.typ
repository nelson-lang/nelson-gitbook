#import "../nelson_help.typ": *

= conj <elementary_functions:3_complex_numbers.conj>

Conjugué complexe

== Syntaxe

- #raw("CZ = conj(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ CZ: résultat de conj : conjugué complexe.

== Description

#strong[conj]; renvoie le conjugué complexe.


== Exemple

``````matlab
x = [1+i,-i;i,2i];
r = conj(x)
``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.real>)[real];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
