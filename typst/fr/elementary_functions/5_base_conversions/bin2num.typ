#import "../nelson_help.typ": *

= bin2num <elementary_functions:5_base_conversions.bin2num>

Convertit une chaîne binaire en complément à deux en nombre.

== Syntaxe

- #raw("R = bin2num(M)");

== Argument d'entrée

/ M: un tableau de caractères.

== Argument de sortie

/ R: résultat de bin2num : logical, single ou double.

== Description

#strong[bin2num]; convertit un tableau de caractères binaires en tableau numérique.

 Remarques :

 -#strong[num2bin]; renvoie toujours les représentations binaires en colonne.

 - #strong[bin2num]; et#strong[num2bin]; sont mutuellement inverses.


== Fonction(s) utilisée(s)

C++ std::bitset

== Bibliographie

http:\/\/www.oxfordmathcenter.com\/drupal7\/node\/43

== Exemple

``````matlab
X = [65535 128; 1 0]
Y = num2bin(X)
bin2num(Y)
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.num2bin>)[num2bin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
