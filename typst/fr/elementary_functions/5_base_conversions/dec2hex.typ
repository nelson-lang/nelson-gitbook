#import "../nelson_help.typ": *

= dec2hex <elementary_functions:5_base_conversions.dec2hex>

Convertit un nombre décimal en base 16.

== Syntaxe

- #raw("R = dec2hex(D)");
- #raw("R = dec2hex(D, N)");

== Argument d'entrée

/ D: un entier non négatif inférieur à la valeur retournée par flintmax.
/ N: un entier : nombre de chiffres.

== Argument de sortie

/ R: résultat de dec2hex : tableau de caractères.

== Description

#strong[dec2hex]; converts decimal number to base 16.


== Exemple

``````matlab
Y = dec2hex(12)
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.base2dec>)[dec2base];, #nlink(<elementary_functions:5_base_conversions.hex2dec>)[hex2dec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
