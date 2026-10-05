#import "../nelson_help.typ": *

= bin2dec <elementary_functions:5_base_conversions.bin2dec>

Convertit un nombre en base 2 en décimal.

== Syntaxe

- #raw("D = bin2dec(TXT)");

== Argument d'entrée

/ TXT: un tableau de caractères.

== Argument de sortie

/ D: résultat de bin2dec : une valeur entière.

== Description

#strong[bin2dec]; convertit un nombre en base 2 en décimal.

 Remarque : #strong[bin2dec]; et#strong[dec2bin]; sont des opérations réciproques.


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
