#import "../nelson_help.typ": *

= dec2hex <elementary_functions:5_base_conversions.dec2hex>

Convertit un nombre décimal en base 16.

== Syntaxe

- #raw("R = dec2hex(D)");
- #raw("R = dec2hex(D, N)");

== Argument d'entrée

/ D: un entier non négatif inférieur à la valeur retournée par flintmax, ou une valeur négative d'un type entier signé (int8, int16, int32, int64).
/ N: un entier : nombre de chiffres.

== Argument de sortie

/ R: résultat de dec2hex : tableau de caractères.

== Description

#strong[dec2hex]; converts decimal number to base 16.

 Une valeur négative d'un type entier signé est convertie en utilisant la représentation en complément à deux sur la largeur native du type (8, 16, 32 ou 64 bits) ; ainsi #strong[dec2hex(int8(-1))]; retourne #strong['FF'];.


== Exemples

``````matlab
Y = dec2hex(12)
``````

``````matlab
Y = dec2hex(int8(-92))
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
