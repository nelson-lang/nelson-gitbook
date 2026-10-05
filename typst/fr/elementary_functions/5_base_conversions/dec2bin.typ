#import "../nelson_help.typ": *

= dec2bin <elementary_functions:5_base_conversions.dec2bin>

Convertit un nombre décimal en base 2.

== Syntaxe

- #raw("R = dec2bin(D)");
- #raw("R = dec2bin(D, N)");

== Argument d'entrée

/ D: un entier non négatif inférieur à la valeur retournée par flintmax.
/ N: un entier : nombre de chiffres.

== Argument de sortie

/ R: résultat de dec2bin : tableau de caractères.

== Description

#strong[dec2bin]; converts decimal number to base 2.


== Exemple

``````matlab
Y = dec2bin(2)
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.base2dec>)[dec2base];, #nlink(<elementary_functions:5_base_conversions.bin2dec>)[bin2dec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
