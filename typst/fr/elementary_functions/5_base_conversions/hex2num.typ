#import "../nelson_help.typ": *

= hex2num <elementary_functions:5_base_conversions.hex2num>

Convertit une représentation hexadécimale IEEE en nombre.

== Syntaxe

- #raw("X = hex2num(s)");

== Argument d'entrée

/ s: une chaîne de 16 chiffres hexadécimaux (un nombre par ligne).

== Argument de sortie

/ X: la ou les valeurs double ayant ce motif de bits.

== Description

#strong[hex2num]; Convertit une représentation hexadécimale IEEE en nombre.


== Exemple

``````matlab
x = hex2num('3ff0000000000000')
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.num2hex>)[num2hex];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [version initiale],
)

// Auteur: Allan CORNET
