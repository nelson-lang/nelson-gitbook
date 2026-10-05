#import "../nelson_help.typ": *

= base2dec <elementary_functions:5_base_conversions.base2dec>

Convertit un nombre d'une base donnée en décimal.

== Syntaxe

- #raw("D = base2dec(TXT, B)");

== Argument d'entrée

/ TXT: un tableau de caractères.
/ B: un entier : \[2, 36\].

== Argument de sortie

/ D: résultat de base2dec : une valeur entière.

== Description

#strong[base2dec]; convertit un nombre d'une base donnée en décimal.

 Remarques :

 - #strong[dec2base]; et#strong[base2dec]; sont mutuellement inverses.

 - des valeurs sont mises en cache pour accélérer les calculs ultérieurs ; utiliser#strong[base2dec(' ', 2)]; pour vider le cache.


== Exemple

``````matlab
base2dec('313', 3)
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.dec2base>)[dec2base];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
