#import "../nelson_help.typ": *

= hex2dec <elementary_functions:5_base_conversions.hex2dec>

Convertit un nombre en base 16 en décimal.

== Syntaxe

- #raw("D = hex2dec(TXT)");

== Argument d'entrée

/ TXT: un tableau de caractères.

== Argument de sortie

/ D: résultat de hex2dec : une valeur entière.

== Description

#strong[hex2dec]; convertit un nombre en base 16 en décimal.

 Remarque : #strong[hex2dec]; et#strong[dec2hex]; sont des opérations réciproques.


== Exemple

``````matlab
bin2dec('11')
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.dec2bin>)[dec2bin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
