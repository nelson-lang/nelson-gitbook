#import "../nelson_help.typ": *

= dec2bin <elementary_functions:5_base_conversions.dec2bin>

Convertit un nombre décimal en base 2.

== Syntaxe

- #raw("R = dec2bin(D)");
- #raw("R = dec2bin(D, N)");

== Argument d'entrée

/ D: un entier non négatif inférieur à la valeur retournée par flintmax, ou une valeur négative d'un type entier signé (int8, int16, int32, int64).
/ N: un entier : nombre de chiffres.

== Argument de sortie

/ R: résultat de dec2bin : tableau de caractères.

== Description

#strong[dec2bin]; converts decimal number to base 2.

 Une valeur négative d'un type entier signé est convertie en utilisant la représentation en complément à deux sur la largeur native du type (8, 16, 32 ou 64 bits) ; ainsi #strong[dec2bin(int8(-1))]; retourne #strong['11111111'];.


== Exemples

``````matlab
Y = dec2bin(2)
``````

``````matlab
Y = dec2bin(int8(-92), 8)
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
